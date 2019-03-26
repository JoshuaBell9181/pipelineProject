-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.2 Build 602 07/19/2017 SJ Standard Edition"

-- DATE "03/25/2019 17:18:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


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

ENTITY 	SimpleCompArch IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst : IN std_logic;
	sys_output : OUT std_logic_vector(15 DOWNTO 0);
	D_rfout_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_RFwa : OUT std_logic_vector(3 DOWNTO 0);
	D_RFr1a : OUT std_logic_vector(3 DOWNTO 0);
	D_RFr2a : OUT std_logic_vector(3 DOWNTO 0);
	D_RFwe : OUT std_logic;
	D_RFr1e : OUT std_logic;
	D_RFr2e : OUT std_logic;
	D_RFs : OUT std_logic_vector(1 DOWNTO 0);
	D_ALUs : OUT std_logic_vector(1 DOWNTO 0);
	D_PCld : OUT std_logic;
	D_jpz : OUT std_logic;
	D_mdout_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mdin_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mem_addr : OUT std_logic_vector(11 DOWNTO 0);
	D_Mre : OUT std_logic;
	D_Mwe : OUT std_logic;
	count_clock : OUT std_logic_vector(15 DOWNTO 0)
	);
END SimpleCompArch;

-- Design Ports Information
-- sys_output[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[2]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[4]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[5]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[6]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[7]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[8]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[9]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[10]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[12]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[13]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[14]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[15]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[1]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[3]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[5]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[6]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[7]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[8]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[9]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[10]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[11]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[12]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[14]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[15]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[0]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[3]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[2]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[0]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[1]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[3]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwe	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1e	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2e	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFs[0]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFs[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_ALUs[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_ALUs[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_PCld	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_jpz	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[4]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[5]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[6]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[7]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[8]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[9]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[10]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[11]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[12]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[13]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[14]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[15]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[2]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[4]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[6]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[7]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[8]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[9]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[10]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[11]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[12]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[13]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[14]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[15]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[0]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[1]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[2]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[3]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[4]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[5]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[8]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[9]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[10]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[11]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_Mre	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_Mwe	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[0]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[1]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[2]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[3]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[4]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[5]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[6]	=>  Location: PIN_F28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[7]	=>  Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[8]	=>  Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[9]	=>  Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[10]	=>  Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[11]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[12]	=>  Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[13]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[14]	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- count_clock[15]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_clk	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sys_rst	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SimpleCompArch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst : std_logic;
SIGNAL ww_sys_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfout_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_RFwa : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFr1a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFr2a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFwe : std_logic;
SIGNAL ww_D_RFr1e : std_logic;
SIGNAL ww_D_RFr2e : std_logic;
SIGNAL ww_D_RFs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_ALUs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_PCld : std_logic;
SIGNAL ww_D_jpz : std_logic;
SIGNAL ww_D_mdout_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mdin_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mem_addr : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_D_Mre : std_logic;
SIGNAL ww_D_Mwe : std_logic;
SIGNAL ww_count_clock : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sys_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_output[0]~output_o\ : std_logic;
SIGNAL \sys_output[1]~output_o\ : std_logic;
SIGNAL \sys_output[2]~output_o\ : std_logic;
SIGNAL \sys_output[3]~output_o\ : std_logic;
SIGNAL \sys_output[4]~output_o\ : std_logic;
SIGNAL \sys_output[5]~output_o\ : std_logic;
SIGNAL \sys_output[6]~output_o\ : std_logic;
SIGNAL \sys_output[7]~output_o\ : std_logic;
SIGNAL \sys_output[8]~output_o\ : std_logic;
SIGNAL \sys_output[9]~output_o\ : std_logic;
SIGNAL \sys_output[10]~output_o\ : std_logic;
SIGNAL \sys_output[11]~output_o\ : std_logic;
SIGNAL \sys_output[12]~output_o\ : std_logic;
SIGNAL \sys_output[13]~output_o\ : std_logic;
SIGNAL \sys_output[14]~output_o\ : std_logic;
SIGNAL \sys_output[15]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[0]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[1]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[2]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[3]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[4]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[5]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[6]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[7]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[8]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[9]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[10]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[11]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[12]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[13]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[14]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[15]~output_o\ : std_logic;
SIGNAL \D_RFwa[0]~output_o\ : std_logic;
SIGNAL \D_RFwa[1]~output_o\ : std_logic;
SIGNAL \D_RFwa[2]~output_o\ : std_logic;
SIGNAL \D_RFwa[3]~output_o\ : std_logic;
SIGNAL \D_RFr1a[0]~output_o\ : std_logic;
SIGNAL \D_RFr1a[1]~output_o\ : std_logic;
SIGNAL \D_RFr1a[2]~output_o\ : std_logic;
SIGNAL \D_RFr1a[3]~output_o\ : std_logic;
SIGNAL \D_RFr2a[0]~output_o\ : std_logic;
SIGNAL \D_RFr2a[1]~output_o\ : std_logic;
SIGNAL \D_RFr2a[2]~output_o\ : std_logic;
SIGNAL \D_RFr2a[3]~output_o\ : std_logic;
SIGNAL \D_RFwe~output_o\ : std_logic;
SIGNAL \D_RFr1e~output_o\ : std_logic;
SIGNAL \D_RFr2e~output_o\ : std_logic;
SIGNAL \D_RFs[0]~output_o\ : std_logic;
SIGNAL \D_RFs[1]~output_o\ : std_logic;
SIGNAL \D_ALUs[0]~output_o\ : std_logic;
SIGNAL \D_ALUs[1]~output_o\ : std_logic;
SIGNAL \D_PCld~output_o\ : std_logic;
SIGNAL \D_jpz~output_o\ : std_logic;
SIGNAL \D_mdout_bus[0]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[1]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[2]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[3]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[4]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[5]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[6]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[7]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[8]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[9]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[10]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[11]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[12]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[13]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[14]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[15]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[0]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[1]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[2]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[3]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[4]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[5]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[6]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[7]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[8]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[9]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[10]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[11]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[12]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[13]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[14]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[15]~output_o\ : std_logic;
SIGNAL \D_mem_addr[0]~output_o\ : std_logic;
SIGNAL \D_mem_addr[1]~output_o\ : std_logic;
SIGNAL \D_mem_addr[2]~output_o\ : std_logic;
SIGNAL \D_mem_addr[3]~output_o\ : std_logic;
SIGNAL \D_mem_addr[4]~output_o\ : std_logic;
SIGNAL \D_mem_addr[5]~output_o\ : std_logic;
SIGNAL \D_mem_addr[6]~output_o\ : std_logic;
SIGNAL \D_mem_addr[7]~output_o\ : std_logic;
SIGNAL \D_mem_addr[8]~output_o\ : std_logic;
SIGNAL \D_mem_addr[9]~output_o\ : std_logic;
SIGNAL \D_mem_addr[10]~output_o\ : std_logic;
SIGNAL \D_mem_addr[11]~output_o\ : std_logic;
SIGNAL \D_Mre~output_o\ : std_logic;
SIGNAL \D_Mwe~output_o\ : std_logic;
SIGNAL \count_clock[0]~output_o\ : std_logic;
SIGNAL \count_clock[1]~output_o\ : std_logic;
SIGNAL \count_clock[2]~output_o\ : std_logic;
SIGNAL \count_clock[3]~output_o\ : std_logic;
SIGNAL \count_clock[4]~output_o\ : std_logic;
SIGNAL \count_clock[5]~output_o\ : std_logic;
SIGNAL \count_clock[6]~output_o\ : std_logic;
SIGNAL \count_clock[7]~output_o\ : std_logic;
SIGNAL \count_clock[8]~output_o\ : std_logic;
SIGNAL \count_clock[9]~output_o\ : std_logic;
SIGNAL \count_clock[10]~output_o\ : std_logic;
SIGNAL \count_clock[11]~output_o\ : std_logic;
SIGNAL \count_clock[12]~output_o\ : std_logic;
SIGNAL \count_clock[13]~output_o\ : std_logic;
SIGNAL \count_clock[14]~output_o\ : std_logic;
SIGNAL \count_clock[15]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S23c~feeder_combout\ : std_logic;
SIGNAL \sys_rst~input_o\ : std_logic;
SIGNAL \sys_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S23c~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S0~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S0~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr39~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[0]~12_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCclr_ctrl~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCclr_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector14~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector28~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S25b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S26b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector62~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S27c~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector27~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S29b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector3~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S21~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S21a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S21b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S24a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S24b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S22c~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector27~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector27~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S28~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S29~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S29a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr59~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector34~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr39~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector34~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector34~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCinc_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[8]~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector62~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector62~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector61~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector61~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr54~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux15~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector39~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr39~combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector39~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFwe_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr4~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr4~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr35~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector37~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[0]~13\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[1]~16_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[2]~19\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[3]~20_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~10_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~21_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~11_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~16_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~13_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~18_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~19_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~17_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~20_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux28~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr61~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr48~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr48~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr42~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr42~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr45~combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector41~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFr2e_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~75_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~11_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector66~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector38~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector38~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[3]~21\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[4]~22_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~8_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[4]~23\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[5]~24_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector64~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~14_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~15_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux26~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~68_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~24\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~26\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~27_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~81_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][5]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux10~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector40~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFr1e_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[5]~25\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[6]~26_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux9~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[6]~27\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[7]~28_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux24~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~28\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~30\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~31_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~79_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~80_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][7]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux8~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[7]~29\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[8]~30_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][8]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux7~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux22~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~64_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~32\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~34\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~35_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~65_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][9]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux6~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[8]~31\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[9]~32_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][10]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux5~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[9]~33\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[10]~34_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[10]~35\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[11]~36_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux20~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~36\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~38\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~39_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~60_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~61_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][11]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux4~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector63~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux11~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux13~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][2]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux13~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~12_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~71_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux15~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~14_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~16_cout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~18\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~19_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~72_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][1]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux30~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~13_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~20\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~22\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~23_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~76_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][3]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux12~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr54~combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector60~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][14]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux17~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux1~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~46_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux2~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux3~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][12]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux3~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux19~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~40\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~42\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~43_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~45_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux2~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][13]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux18~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~47_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~44\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~48_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U1|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[1][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[9][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[13][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[5][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[3][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[7][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[0][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[4][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[8][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[14][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[10][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[6][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[2][15]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux0~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~52_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~49\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~53_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~8_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector73~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|jmpen_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~10_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC~14_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC~15_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[1]~17\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[2]~18_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux13~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector65~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux14~9_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector58~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~12_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~22_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[12][6]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux25~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~77_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~29_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~78_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector70~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux29~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~73_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~21_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~74_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector69~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux23~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~62_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~33_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~63_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector59~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[11][0]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux31~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~69_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~17_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~70_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector71~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux21~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~37_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~58_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~59_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector57~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Decoder0~23_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|tmp_rf[15][4]~q\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux27~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~10_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~25_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~66_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~67_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector72~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~1_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~7_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~8_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~5_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~6_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U2|Mux16~9_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~51_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~55_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~3_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~4_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|ALUz~5_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|process_0~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux15~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector14~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S24~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr4~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IR_PS2[8]~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector3~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector23~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S27~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S27a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S27b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr39~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector6~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector20~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S26~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S26a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr59~combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector68~0_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~56_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~41_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~57_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector17~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector17~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S25~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S25a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector67~2_combout\ : std_logic;
SIGNAL \Unit1|Unit1|U3|Add0~50_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector6~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S22~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S22a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S22b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr30~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr48~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr30~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector35~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IRld_ctrl~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IRld_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector10~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S23~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S23a~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S23a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S23b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr48~3_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector42~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector42~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Mwe_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|WideOr30~2_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector43~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector43~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|oe_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector36~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector36~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Mre_ctrl~q\ : std_logic;
SIGNAL \cnt_clock[0]~45_combout\ : std_logic;
SIGNAL \cnt_clock[1]~15_combout\ : std_logic;
SIGNAL \cnt_clock[1]~16\ : std_logic;
SIGNAL \cnt_clock[2]~17_combout\ : std_logic;
SIGNAL \cnt_clock[2]~18\ : std_logic;
SIGNAL \cnt_clock[3]~19_combout\ : std_logic;
SIGNAL \cnt_clock[3]~20\ : std_logic;
SIGNAL \cnt_clock[4]~21_combout\ : std_logic;
SIGNAL \cnt_clock[4]~22\ : std_logic;
SIGNAL \cnt_clock[5]~23_combout\ : std_logic;
SIGNAL \cnt_clock[5]~24\ : std_logic;
SIGNAL \cnt_clock[6]~25_combout\ : std_logic;
SIGNAL \cnt_clock[6]~26\ : std_logic;
SIGNAL \cnt_clock[7]~27_combout\ : std_logic;
SIGNAL \cnt_clock[7]~28\ : std_logic;
SIGNAL \cnt_clock[8]~29_combout\ : std_logic;
SIGNAL \cnt_clock[8]~30\ : std_logic;
SIGNAL \cnt_clock[9]~31_combout\ : std_logic;
SIGNAL \cnt_clock[9]~32\ : std_logic;
SIGNAL \cnt_clock[10]~33_combout\ : std_logic;
SIGNAL \cnt_clock[10]~34\ : std_logic;
SIGNAL \cnt_clock[11]~35_combout\ : std_logic;
SIGNAL \cnt_clock[11]~36\ : std_logic;
SIGNAL \cnt_clock[12]~37_combout\ : std_logic;
SIGNAL \cnt_clock[12]~38\ : std_logic;
SIGNAL \cnt_clock[13]~39_combout\ : std_logic;
SIGNAL \cnt_clock[13]~40\ : std_logic;
SIGNAL \cnt_clock[14]~41_combout\ : std_logic;
SIGNAL \cnt_clock[14]~42\ : std_logic;
SIGNAL \cnt_clock[15]~43_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFr2a_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U1|tmp_PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|RFwa_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_clock : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|ALUs_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit1|Unit1|U2|RFr1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|RFr1a_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|RFs_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit1|Unit1|U2|RFr2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|Ms_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|IR_PS2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U2|IRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U2|dir_addr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|ALT_INV_state.S28~q\ : std_logic;
SIGNAL \ALT_INV_sys_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sys_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst <= sys_rst;
sys_output <= ww_sys_output;
D_rfout_bus <= ww_D_rfout_bus;
D_RFwa <= ww_D_RFwa;
D_RFr1a <= ww_D_RFr1a;
D_RFr2a <= ww_D_RFr2a;
D_RFwe <= ww_D_RFwe;
D_RFr1e <= ww_D_RFr1e;
D_RFr2e <= ww_D_RFr2e;
D_RFs <= ww_D_RFs;
D_ALUs <= ww_D_ALUs;
D_PCld <= ww_D_PCld;
D_jpz <= ww_D_jpz;
D_mdout_bus <= ww_D_mdout_bus;
D_mdin_bus <= ww_D_mdin_bus;
D_mem_addr <= ww_D_mem_addr;
D_Mre <= ww_D_Mre;
D_Mwe <= ww_D_Mwe;
count_clock <= ww_count_clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~72_combout\ & \Unit1|Unit1|U3|Add0~70_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(0) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(1) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~76_combout\ & \Unit1|Unit1|U3|Add0~74_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(2) <= \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(3) <= \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~81_combout\ & \Unit1|Unit1|U3|Add0~67_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(4) <= \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(5) <= \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~80_combout\ & \Unit1|Unit1|U3|Add0~78_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(6) <= \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(7) <= \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~65_combout\ & \Unit1|Unit1|U3|Add0~63_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(8) <= \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(9) <= \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~61_combout\ & \Unit1|Unit1|U3|Add0~59_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(10) <= \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(11) <= \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~45_combout\ & \Unit1|Unit1|U3|Add0~57_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(12) <= \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(13) <= \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\Unit1|Unit1|U3|Add0~55_combout\ & \Unit1|Unit1|U3|Add0~50_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\Unit1|Unit0|U3|Mux4~0_combout\ & \Unit1|Unit0|U3|Mux5~0_combout\ & \Unit1|Unit0|U3|Mux6~0_combout\ & \Unit1|Unit0|U3|Mux7~0_combout\ & \Unit1|Unit0|U3|Mux8~1_combout\ & 
\Unit1|Unit0|U3|Mux9~1_combout\ & \Unit1|Unit0|U3|Mux10~1_combout\ & \Unit1|Unit0|U3|Mux11~1_combout\ & \Unit1|Unit0|U3|Mux12~1_combout\ & \Unit1|Unit0|U3|Mux13~1_combout\ & \Unit1|Unit0|U3|Mux14~1_combout\ & \Unit1|Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(14) <= \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(15) <= \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\sys_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst~input_o\);

\Unit1|Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Unit1|Unit0|U0|IRld_ctrl~q\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\ <= NOT \Unit1|Unit0|U0|Mwe_ctrl~q\;
\Unit1|Unit0|U0|ALT_INV_state.S28~q\ <= NOT \Unit1|Unit0|U0|state.S28~q\;
\ALT_INV_sys_rst~inputclkctrl_outclk\ <= NOT \sys_rst~inputclkctrl_outclk\;
\ALT_INV_sys_rst~input_o\ <= NOT \sys_rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y73_N16
\sys_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\sys_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[1]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\sys_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\sys_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\sys_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\sys_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\sys_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\sys_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\sys_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[8]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\sys_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\sys_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\sys_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\sys_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[12]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\sys_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[13]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\sys_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[14]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\sys_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	oe => \Unit1|Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \sys_output[15]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\D_rfout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(0),
	devoe => ww_devoe,
	o => \D_rfout_bus[0]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\D_rfout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(1),
	devoe => ww_devoe,
	o => \D_rfout_bus[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\D_rfout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(2),
	devoe => ww_devoe,
	o => \D_rfout_bus[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\D_rfout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(3),
	devoe => ww_devoe,
	o => \D_rfout_bus[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\D_rfout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(4),
	devoe => ww_devoe,
	o => \D_rfout_bus[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\D_rfout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(5),
	devoe => ww_devoe,
	o => \D_rfout_bus[5]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\D_rfout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(6),
	devoe => ww_devoe,
	o => \D_rfout_bus[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\D_rfout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(7),
	devoe => ww_devoe,
	o => \D_rfout_bus[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\D_rfout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(8),
	devoe => ww_devoe,
	o => \D_rfout_bus[8]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\D_rfout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(9),
	devoe => ww_devoe,
	o => \D_rfout_bus[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\D_rfout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(10),
	devoe => ww_devoe,
	o => \D_rfout_bus[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\D_rfout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(11),
	devoe => ww_devoe,
	o => \D_rfout_bus[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\D_rfout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(12),
	devoe => ww_devoe,
	o => \D_rfout_bus[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\D_rfout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(13),
	devoe => ww_devoe,
	o => \D_rfout_bus[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\D_rfout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(14),
	devoe => ww_devoe,
	o => \D_rfout_bus[14]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\D_rfout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U2|RFr1\(15),
	devoe => ww_devoe,
	o => \D_rfout_bus[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\D_RFwa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFwa[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\D_RFwa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFwa[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\D_RFwa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	devoe => ww_devoe,
	o => \D_RFwa[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\D_RFwa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	devoe => ww_devoe,
	o => \D_RFwa[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\D_RFr1a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFr1a[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\D_RFr1a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFr1a[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\D_RFr1a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	devoe => ww_devoe,
	o => \D_RFr1a[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\D_RFr1a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	devoe => ww_devoe,
	o => \D_RFr1a[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\D_RFr2a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFr2a[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\D_RFr2a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFr2a[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\D_RFr2a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	devoe => ww_devoe,
	o => \D_RFr2a[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\D_RFr2a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	devoe => ww_devoe,
	o => \D_RFr2a[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\D_RFwe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFwe~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\D_RFr1e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFr1e~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\D_RFr2e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFr2e~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\D_RFs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFs_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFs[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\D_RFs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFs_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFs[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\D_ALUs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	devoe => ww_devoe,
	o => \D_ALUs[0]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\D_ALUs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	devoe => ww_devoe,
	o => \D_ALUs[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\D_PCld~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|ALUz~5_combout\,
	devoe => ww_devoe,
	o => \D_PCld~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\D_jpz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|jmpen_ctrl~q\,
	devoe => ww_devoe,
	o => \D_jpz~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\D_mdout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \D_mdout_bus[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\D_mdout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \D_mdout_bus[1]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\D_mdout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \D_mdout_bus[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\D_mdout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \D_mdout_bus[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\D_mdout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \D_mdout_bus[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\D_mdout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \D_mdout_bus[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\D_mdout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \D_mdout_bus[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\D_mdout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \D_mdout_bus[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\D_mdout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \D_mdout_bus[8]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\D_mdout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \D_mdout_bus[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\D_mdout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \D_mdout_bus[10]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\D_mdout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \D_mdout_bus[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\D_mdout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \D_mdout_bus[12]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\D_mdout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \D_mdout_bus[13]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\D_mdout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \D_mdout_bus[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\D_mdout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \D_mdout_bus[15]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\D_mdin_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~70_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\D_mdin_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~72_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\D_mdin_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~74_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\D_mdin_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~76_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\D_mdin_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~67_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\D_mdin_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~81_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\D_mdin_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~78_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\D_mdin_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~80_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\D_mdin_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~63_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[8]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\D_mdin_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~65_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\D_mdin_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~59_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\D_mdin_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~61_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[11]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\D_mdin_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~57_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\D_mdin_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~45_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[13]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\D_mdin_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~50_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[14]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\D_mdin_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit1|U3|Add0~55_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\D_mem_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\D_mem_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\D_mem_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\D_mem_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\D_mem_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\D_mem_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\D_mem_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\D_mem_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[7]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\D_mem_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\D_mem_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\D_mem_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[10]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\D_mem_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[11]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\D_Mre~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|Mre_ctrl~q\,
	devoe => ww_devoe,
	o => \D_Mre~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\D_Mwe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	devoe => ww_devoe,
	o => \D_Mwe~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\count_clock[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(0),
	devoe => ww_devoe,
	o => \count_clock[0]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\count_clock[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(1),
	devoe => ww_devoe,
	o => \count_clock[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\count_clock[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(2),
	devoe => ww_devoe,
	o => \count_clock[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\count_clock[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(3),
	devoe => ww_devoe,
	o => \count_clock[3]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\count_clock[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(4),
	devoe => ww_devoe,
	o => \count_clock[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\count_clock[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(5),
	devoe => ww_devoe,
	o => \count_clock[5]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\count_clock[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(6),
	devoe => ww_devoe,
	o => \count_clock[6]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\count_clock[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(7),
	devoe => ww_devoe,
	o => \count_clock[7]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\count_clock[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(8),
	devoe => ww_devoe,
	o => \count_clock[8]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\count_clock[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(9),
	devoe => ww_devoe,
	o => \count_clock[9]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\count_clock[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(10),
	devoe => ww_devoe,
	o => \count_clock[10]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\count_clock[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(11),
	devoe => ww_devoe,
	o => \count_clock[11]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\count_clock[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(12),
	devoe => ww_devoe,
	o => \count_clock[12]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\count_clock[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(13),
	devoe => ww_devoe,
	o => \count_clock[13]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\count_clock[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(14),
	devoe => ww_devoe,
	o => \count_clock[14]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\count_clock[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_clock(15),
	devoe => ww_devoe,
	o => \count_clock[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G2
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y44_N2
\Unit1|Unit0|U0|state.S23c~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S23c~feeder_combout\ = \Unit1|Unit0|U0|state.S23b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U0|state.S23b~q\,
	combout => \Unit1|Unit0|U0|state.S23c~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\sys_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst,
	o => \sys_rst~input_o\);

-- Location: CLKCTRL_G4
\sys_rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst~inputclkctrl_outclk\);

-- Location: FF_X66_Y44_N3
\Unit1|Unit0|U0|state.S23c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S23c~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S23c~q\);

-- Location: LCCOMB_X66_Y45_N10
\Unit1|Unit0|U0|state.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Unit1|Unit0|U0|state.S0~feeder_combout\);

-- Location: FF_X66_Y45_N11
\Unit1|Unit0|U0|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S0~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S0~q\);

-- Location: LCCOMB_X66_Y44_N0
\Unit1|Unit0|U0|WideOr39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr39~0_combout\ = (!\Unit1|Unit0|U0|state.S23b~q\ & (!\Unit1|Unit0|U0|state.S22b~q\ & (!\Unit1|Unit0|U0|state.S26a~q\ & \Unit1|Unit0|U0|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S23b~q\,
	datab => \Unit1|Unit0|U0|state.S22b~q\,
	datac => \Unit1|Unit0|U0|state.S26a~q\,
	datad => \Unit1|Unit0|U0|state.S0~q\,
	combout => \Unit1|Unit0|U0|WideOr39~0_combout\);

-- Location: LCCOMB_X65_Y45_N4
\Unit1|Unit0|U1|tmp_PC[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[0]~12_combout\ = \Unit1|Unit0|U1|tmp_PC\(0) $ (VCC)
-- \Unit1|Unit0|U1|tmp_PC[0]~13\ = CARRY(\Unit1|Unit0|U1|tmp_PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(0),
	datad => VCC,
	combout => \Unit1|Unit0|U1|tmp_PC[0]~12_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[0]~13\);

-- Location: LCCOMB_X61_Y46_N20
\Unit1|Unit0|U2|dir_addr[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(0) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(0)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|dir_addr\(0),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	combout => \Unit1|Unit0|U2|dir_addr\(0));

-- Location: LCCOMB_X65_Y45_N28
\Unit1|Unit0|U0|PCclr_ctrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|PCclr_ctrl~0_combout\ = (\Unit1|Unit0|U0|PCclr_ctrl~q\) # (!\Unit1|Unit0|U0|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S0~q\,
	datac => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	combout => \Unit1|Unit0|U0|PCclr_ctrl~0_combout\);

-- Location: FF_X65_Y45_N29
\Unit1|Unit0|U0|PCclr_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|PCclr_ctrl~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|PCclr_ctrl~q\);

-- Location: LCCOMB_X68_Y44_N12
\Unit1|Unit0|U0|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector14~0_combout\ = (\Unit1|Unit0|U0|IR_PS2[8]~0_combout\ & (\Unit1|Unit0|U0|WideOr39~1_combout\ & \Unit1|Unit0|U2|IRout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|IR_PS2[8]~0_combout\,
	datac => \Unit1|Unit0|U0|WideOr39~1_combout\,
	datad => \Unit1|Unit0|U2|IRout\(13),
	combout => \Unit1|Unit0|U0|Selector14~0_combout\);

-- Location: LCCOMB_X68_Y44_N14
\Unit1|Unit0|U0|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector28~0_combout\ = (\Unit1|Unit0|U2|IRout\(12) & (!\Unit1|Unit0|U2|IRout\(15) & (\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|IRout\(12),
	datab => \Unit1|Unit0|U2|IRout\(15),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector14~0_combout\,
	combout => \Unit1|Unit0|U0|Selector28~0_combout\);

-- Location: FF_X63_Y44_N25
\Unit1|Unit0|U0|state.S25b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S25a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S25b~q\);

-- Location: FF_X63_Y44_N27
\Unit1|Unit0|U0|state.S26b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S26a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S26b~q\);

-- Location: LCCOMB_X63_Y44_N26
\Unit1|Unit0|U0|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector62~0_combout\ = (!\Unit1|Unit0|U0|state.S25b~q\ & !\Unit1|Unit0|U0|state.S26b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S25b~q\,
	datac => \Unit1|Unit0|U0|state.S26b~q\,
	combout => \Unit1|Unit0|U0|Selector62~0_combout\);

-- Location: FF_X66_Y44_N17
\Unit1|Unit0|U0|state.S27c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S27b~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S27c~q\);

-- Location: LCCOMB_X66_Y45_N28
\Unit1|Unit0|U0|state.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S1~0_combout\ = !\Unit1|Unit0|U0|state.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U0|state.S0~q\,
	combout => \Unit1|Unit0|U0|state.S1~0_combout\);

-- Location: FF_X66_Y45_N29
\Unit1|Unit0|U0|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S1~q\);

-- Location: FF_X67_Y44_N5
\Unit1|Unit0|U0|state.S1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S1~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S1a~q\);

-- Location: FF_X66_Y44_N21
\Unit1|Unit0|U0|state.S1b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S1a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S1b~q\);

-- Location: LCCOMB_X66_Y44_N20
\Unit1|Unit0|U0|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector27~1_combout\ = ((\Unit1|Unit0|U0|state.S27c~q\) # ((\Unit1|Unit0|U0|state.S1b~q\) # (\Unit1|Unit0|U0|state.S23c~q\))) # (!\Unit1|Unit0|U0|Selector62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Selector62~0_combout\,
	datab => \Unit1|Unit0|U0|state.S27c~q\,
	datac => \Unit1|Unit0|U0|state.S1b~q\,
	datad => \Unit1|Unit0|U0|state.S23c~q\,
	combout => \Unit1|Unit0|U0|Selector27~1_combout\);

-- Location: FF_X67_Y44_N7
\Unit1|Unit0|U0|state.S29b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S29a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S29b~q\);

-- Location: LCCOMB_X68_Y44_N8
\Unit1|Unit0|U0|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector3~1_combout\ = (!\Unit1|Unit0|U2|IRout\(13) & (!\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(13),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector3~0_combout\,
	combout => \Unit1|Unit0|U0|Selector3~1_combout\);

-- Location: FF_X68_Y44_N9
\Unit1|Unit0|U0|state.S21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector3~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S21~q\);

-- Location: FF_X67_Y44_N25
\Unit1|Unit0|U0|state.S21a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S21~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S21a~q\);

-- Location: FF_X63_Y44_N21
\Unit1|Unit0|U0|state.S21b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S21a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S21b~q\);

-- Location: FF_X67_Y44_N1
\Unit1|Unit0|U0|state.S24a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S24~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S24a~q\);

-- Location: FF_X66_Y44_N19
\Unit1|Unit0|U0|state.S24b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S24a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S24b~q\);

-- Location: FF_X66_Y44_N27
\Unit1|Unit0|U0|state.S22c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S22b~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S22c~q\);

-- Location: LCCOMB_X66_Y44_N18
\Unit1|Unit0|U0|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector27~0_combout\ = (!\Unit1|Unit0|U0|state.S29b~q\ & (!\Unit1|Unit0|U0|state.S21b~q\ & (!\Unit1|Unit0|U0|state.S24b~q\ & !\Unit1|Unit0|U0|state.S22c~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S29b~q\,
	datab => \Unit1|Unit0|U0|state.S21b~q\,
	datac => \Unit1|Unit0|U0|state.S24b~q\,
	datad => \Unit1|Unit0|U0|state.S22c~q\,
	combout => \Unit1|Unit0|U0|Selector27~0_combout\);

-- Location: LCCOMB_X67_Y44_N18
\Unit1|Unit0|U0|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector27~2_combout\ = (\Unit1|Unit0|U0|state.S28~q\) # ((\Unit1|Unit0|U2|IRout\(15) & ((\Unit1|Unit0|U0|Selector27~1_combout\) # (!\Unit1|Unit0|U0|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Selector27~1_combout\,
	datab => \Unit1|Unit0|U0|Selector27~0_combout\,
	datac => \Unit1|Unit0|U0|state.S28~q\,
	datad => \Unit1|Unit0|U2|IRout\(15),
	combout => \Unit1|Unit0|U0|Selector27~2_combout\);

-- Location: FF_X67_Y44_N19
\Unit1|Unit0|U0|state.S28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector27~2_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S28~q\);

-- Location: FF_X68_Y44_N15
\Unit1|Unit0|U0|state.S29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector28~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S29~q\);

-- Location: FF_X67_Y44_N31
\Unit1|Unit0|U0|state.S29a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S29~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S29a~q\);

-- Location: LCCOMB_X66_Y44_N10
\Unit1|Unit0|U0|WideOr59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr59~0_combout\ = (!\Unit1|Unit0|U0|state.S27a~q\ & (!\Unit1|Unit0|U0|state.S23a~q\ & (!\Unit1|Unit0|U0|state.S25a~q\ & !\Unit1|Unit0|U0|state.S22a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S27a~q\,
	datab => \Unit1|Unit0|U0|state.S23a~q\,
	datac => \Unit1|Unit0|U0|state.S25a~q\,
	datad => \Unit1|Unit0|U0|state.S22a~q\,
	combout => \Unit1|Unit0|U0|WideOr59~0_combout\);

-- Location: LCCOMB_X67_Y44_N24
\Unit1|Unit0|U0|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector34~0_combout\ = (!\Unit1|Unit0|U0|state.S29a~q\ & (!\Unit1|Unit0|U0|state.S1a~q\ & (!\Unit1|Unit0|U0|state.S21a~q\ & \Unit1|Unit0|U0|WideOr59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S29a~q\,
	datab => \Unit1|Unit0|U0|state.S1a~q\,
	datac => \Unit1|Unit0|U0|state.S21a~q\,
	datad => \Unit1|Unit0|U0|WideOr59~0_combout\,
	combout => \Unit1|Unit0|U0|Selector34~0_combout\);

-- Location: LCCOMB_X66_Y44_N16
\Unit1|Unit0|U0|WideOr39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr39~2_combout\ = (!\Unit1|Unit0|U0|state.S22c~q\ & (!\Unit1|Unit0|U0|state.S28~q\ & (!\Unit1|Unit0|U0|state.S27c~q\ & !\Unit1|Unit0|U0|state.S23c~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S22c~q\,
	datab => \Unit1|Unit0|U0|state.S28~q\,
	datac => \Unit1|Unit0|U0|state.S27c~q\,
	datad => \Unit1|Unit0|U0|state.S23c~q\,
	combout => \Unit1|Unit0|U0|WideOr39~2_combout\);

-- Location: LCCOMB_X66_Y45_N14
\Unit1|Unit0|U0|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector34~1_combout\ = (\Unit1|Unit0|U0|PCinc_ctrl~q\ & (((\Unit1|Unit0|U0|state.S26a~q\) # (!\Unit1|Unit0|U0|WideOr39~2_combout\)) # (!\Unit1|Unit0|U0|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S0~q\,
	datab => \Unit1|Unit0|U0|WideOr39~2_combout\,
	datac => \Unit1|Unit0|U0|state.S26a~q\,
	datad => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	combout => \Unit1|Unit0|U0|Selector34~1_combout\);

-- Location: LCCOMB_X66_Y45_N6
\Unit1|Unit0|U0|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector34~2_combout\ = ((\Unit1|Unit0|U0|Selector34~1_combout\) # (\Unit1|Unit0|U0|state.S24a~q\)) # (!\Unit1|Unit0|U0|Selector34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|Selector34~0_combout\,
	datac => \Unit1|Unit0|U0|Selector34~1_combout\,
	datad => \Unit1|Unit0|U0|state.S24a~q\,
	combout => \Unit1|Unit0|U0|Selector34~2_combout\);

-- Location: FF_X66_Y45_N7
\Unit1|Unit0|U0|PCinc_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector34~2_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|PCinc_ctrl~q\);

-- Location: LCCOMB_X60_Y46_N8
\Unit1|Unit0|U0|IR_PS2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[0]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U2|dir_addr\(0),
	combout => \Unit1|Unit0|U0|IR_PS2[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y44_N4
\Unit1|Unit0|U0|IR_PS2[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[8]~1_combout\ = (!\sys_rst~input_o\ & (\Unit1|Unit0|U0|WideOr39~1_combout\ & (\Unit1|Unit0|U0|IR_PS2[8]~0_combout\ & !\Unit1|Unit0|U0|state.S28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_rst~input_o\,
	datab => \Unit1|Unit0|U0|WideOr39~1_combout\,
	datac => \Unit1|Unit0|U0|IR_PS2[8]~0_combout\,
	datad => \Unit1|Unit0|U0|state.S28~q\,
	combout => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\);

-- Location: FF_X60_Y46_N9
\Unit1|Unit0|U0|IR_PS2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[0]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(0));

-- Location: LCCOMB_X63_Y44_N6
\Unit1|Unit0|U0|Selector62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector62~1_combout\ = (\Unit1|Unit0|U0|state.S28~q\) # ((!\Unit1|Unit0|U0|state.S25b~q\ & (!\Unit1|Unit0|U0|state.S26b~q\ & !\Unit1|Unit0|U0|state.S24a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S25b~q\,
	datab => \Unit1|Unit0|U0|state.S28~q\,
	datac => \Unit1|Unit0|U0|state.S26b~q\,
	datad => \Unit1|Unit0|U0|state.S24a~q\,
	combout => \Unit1|Unit0|U0|Selector62~1_combout\);

-- Location: LCCOMB_X63_Y44_N30
\Unit1|Unit0|U0|Selector62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector62~2_combout\ = (\Unit1|Unit0|U0|state.S21a~q\) # ((\Unit1|Unit0|U0|RFs_ctrl\(0) & \Unit1|Unit0|U0|Selector62~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S21a~q\,
	datac => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|Unit0|U0|Selector62~1_combout\,
	combout => \Unit1|Unit0|U0|Selector62~2_combout\);

-- Location: FF_X63_Y44_N31
\Unit1|Unit0|U0|RFs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector62~2_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFs_ctrl\(0));

-- Location: LCCOMB_X63_Y44_N24
\Unit1|Unit0|U0|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector61~0_combout\ = (\Unit1|Unit0|U0|state.S28~q\) # ((!\Unit1|Unit0|U0|state.S26b~q\ & (!\Unit1|Unit0|U0|state.S25b~q\ & !\Unit1|Unit0|U0|state.S21a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S26b~q\,
	datab => \Unit1|Unit0|U0|state.S28~q\,
	datac => \Unit1|Unit0|U0|state.S25b~q\,
	datad => \Unit1|Unit0|U0|state.S21a~q\,
	combout => \Unit1|Unit0|U0|Selector61~0_combout\);

-- Location: LCCOMB_X63_Y44_N8
\Unit1|Unit0|U0|Selector61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector61~1_combout\ = (\Unit1|Unit0|U0|state.S24a~q\) # ((\Unit1|Unit0|U0|Selector61~0_combout\ & \Unit1|Unit0|U0|RFs_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|Selector61~0_combout\,
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit0|U0|state.S24a~q\,
	combout => \Unit1|Unit0|U0|Selector61~1_combout\);

-- Location: FF_X63_Y44_N9
\Unit1|Unit0|U0|RFs_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector61~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFs_ctrl\(1));

-- Location: LCCOMB_X61_Y44_N12
\Unit1|Unit1|U1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux11~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(4)) # ((\Unit1|Unit0|U0|RFs_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & (((\Unit1|Unit0|U0|RFs_ctrl\(1) & 
-- \Unit1|Unit0|U2|dir_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit0|U2|dir_addr\(4),
	combout => \Unit1|Unit1|U1|Mux11~0_combout\);

-- Location: LCCOMB_X61_Y44_N22
\Unit1|Unit1|U1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux11~1_combout\ = (\Unit1|Unit1|U1|Mux11~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit1|Unit1|U3|Add0~67_combout\ & !\Unit1|Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datab => \Unit1|Unit1|U3|Add0~67_combout\,
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit1|U1|Mux11~0_combout\,
	combout => \Unit1|Unit1|U1|Mux11~1_combout\);

-- Location: LCCOMB_X62_Y44_N16
\Unit1|Unit0|U0|WideOr54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr54~0_combout\ = (!\Unit1|Unit0|U0|state.S25a~q\ & (!\Unit1|Unit0|U0|state.S21a~q\ & (!\Unit1|Unit0|U0|state.S24a~q\ & !\Unit1|Unit0|U0|state.S26a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S25a~q\,
	datab => \Unit1|Unit0|U0|state.S21a~q\,
	datac => \Unit1|Unit0|U0|state.S24a~q\,
	datad => \Unit1|Unit0|U0|state.S26a~q\,
	combout => \Unit1|Unit0|U0|WideOr54~0_combout\);

-- Location: LCCOMB_X61_Y46_N24
\Unit1|Unit1|U1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux15~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0) & ((\Unit1|Unit0|U0|RFs_ctrl\(1)) # ((\Unit2|altsyncram_component|auto_generated|q_a\(0))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit1|Unit0|U0|RFs_ctrl\(1) & 
-- ((\Unit1|Unit0|U2|dir_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	datad => \Unit1|Unit0|U2|dir_addr\(0),
	combout => \Unit1|Unit1|U1|Mux15~0_combout\);

-- Location: LCCOMB_X61_Y46_N10
\Unit1|Unit1|U1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux15~1_combout\ = (\Unit1|Unit1|U1|Mux15~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(0) & (!\Unit1|Unit0|U0|RFs_ctrl\(1) & \Unit1|Unit1|U3|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~70_combout\,
	datad => \Unit1|Unit1|U1|Mux15~0_combout\,
	combout => \Unit1|Unit1|U1|Mux15~1_combout\);

-- Location: LCCOMB_X61_Y43_N30
\Unit1|Unit1|U1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux9~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(6)) # ((\Unit1|Unit0|U0|RFs_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & (((\Unit1|Unit0|U0|RFs_ctrl\(1) & 
-- \Unit1|Unit0|U2|dir_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit0|U2|dir_addr\(6),
	combout => \Unit1|Unit1|U1|Mux9~0_combout\);

-- Location: LCCOMB_X61_Y43_N14
\Unit1|Unit1|U1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux9~1_combout\ = (\Unit1|Unit1|U1|Mux9~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(1) & (!\Unit1|Unit0|U0|RFs_ctrl\(0) & \Unit1|Unit1|U3|Add0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit1|U1|Mux9~0_combout\,
	datad => \Unit1|Unit1|U3|Add0~78_combout\,
	combout => \Unit1|Unit1|U1|Mux9~1_combout\);

-- Location: LCCOMB_X63_Y44_N20
\Unit1|Unit0|U0|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector39~0_combout\ = (!\Unit1|Unit0|U0|state.S21b~q\ & !\Unit1|Unit0|U0|state.S24a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|state.S21b~q\,
	datad => \Unit1|Unit0|U0|state.S24a~q\,
	combout => \Unit1|Unit0|U0|Selector39~0_combout\);

-- Location: LCCOMB_X66_Y45_N4
\Unit1|Unit0|U0|WideOr39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr39~combout\ = ((\Unit1|Unit0|U0|state.S1b~q\) # ((\Unit1|Unit0|U0|state.S29b~q\) # (!\Unit1|Unit0|U0|WideOr39~2_combout\))) # (!\Unit1|Unit0|U0|WideOr39~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr39~1_combout\,
	datab => \Unit1|Unit0|U0|state.S1b~q\,
	datac => \Unit1|Unit0|U0|WideOr39~2_combout\,
	datad => \Unit1|Unit0|U0|state.S29b~q\,
	combout => \Unit1|Unit0|U0|WideOr39~combout\);

-- Location: LCCOMB_X63_Y44_N16
\Unit1|Unit0|U0|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector39~1_combout\ = (((\Unit1|Unit0|U0|RFwe_ctrl~q\ & \Unit1|Unit0|U0|WideOr39~combout\)) # (!\Unit1|Unit0|U0|Selector39~0_combout\)) # (!\Unit1|Unit0|U0|Selector62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Selector62~0_combout\,
	datab => \Unit1|Unit0|U0|Selector39~0_combout\,
	datac => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit1|Unit0|U0|WideOr39~combout\,
	combout => \Unit1|Unit0|U0|Selector39~1_combout\);

-- Location: FF_X63_Y44_N17
\Unit1|Unit0|U0|RFwe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector39~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFwe_ctrl~q\);

-- Location: LCCOMB_X67_Y44_N22
\Unit1|Unit0|U0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr4~0_combout\ = (!\Unit1|Unit0|U0|state.S23~q\ & (!\Unit1|Unit0|U0|state.S1~q\ & (!\Unit1|Unit0|U0|state.S21~q\ & !\Unit1|Unit0|U0|state.S22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S23~q\,
	datab => \Unit1|Unit0|U0|state.S1~q\,
	datac => \Unit1|Unit0|U0|state.S21~q\,
	datad => \Unit1|Unit0|U0|state.S22~q\,
	combout => \Unit1|Unit0|U0|WideOr4~0_combout\);

-- Location: LCCOMB_X67_Y44_N28
\Unit1|Unit0|U0|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr4~2_combout\ = (\Unit1|Unit0|U0|WideOr4~1_combout\ & (!\Unit1|Unit0|U0|state.S29~q\ & \Unit1|Unit0|U0|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr4~1_combout\,
	datab => \Unit1|Unit0|U0|state.S29~q\,
	datad => \Unit1|Unit0|U0|WideOr4~0_combout\,
	combout => \Unit1|Unit0|U0|WideOr4~2_combout\);

-- Location: LCCOMB_X66_Y44_N30
\Unit1|Unit0|U0|WideOr35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr35~0_combout\ = (\Unit1|Unit0|U0|state.S1a~q\) # ((\Unit1|Unit0|U0|state.S24a~q\) # ((\Unit1|Unit0|U0|state.S27a~q\) # (\Unit1|Unit0|U0|state.S25a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S1a~q\,
	datab => \Unit1|Unit0|U0|state.S24a~q\,
	datac => \Unit1|Unit0|U0|state.S27a~q\,
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|WideOr35~0_combout\);

-- Location: LCCOMB_X66_Y45_N26
\Unit1|Unit0|U0|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector37~0_combout\ = (\Unit1|Unit0|U0|WideOr4~2_combout\ & ((\Unit1|Unit0|U0|Ms_ctrl\(1)) # ((!\Unit1|Unit0|U0|WideOr35~0_combout\ & \Unit1|Unit0|U0|WideOr30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr4~2_combout\,
	datab => \Unit1|Unit0|U0|WideOr35~0_combout\,
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U0|WideOr30~1_combout\,
	combout => \Unit1|Unit0|U0|Selector37~0_combout\);

-- Location: FF_X66_Y45_N27
\Unit1|Unit0|U0|Ms_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector37~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Ms_ctrl\(1));

-- Location: LCCOMB_X65_Y45_N6
\Unit1|Unit0|U1|tmp_PC[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[1]~16_combout\ = (\Unit1|Unit0|U1|tmp_PC\(1) & (!\Unit1|Unit0|U1|tmp_PC[0]~13\)) # (!\Unit1|Unit0|U1|tmp_PC\(1) & ((\Unit1|Unit0|U1|tmp_PC[0]~13\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[1]~17\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[0]~13\) # (!\Unit1|Unit0|U1|tmp_PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(1),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[0]~13\,
	combout => \Unit1|Unit0|U1|tmp_PC[1]~16_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[1]~17\);

-- Location: LCCOMB_X63_Y42_N10
\Unit1|Unit1|U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux1~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(14)) # ((\Unit1|Unit0|U0|RFs_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & (((!\Unit1|Unit0|U0|RFs_ctrl\(1) & 
-- \Unit1|Unit1|U3|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~50_combout\,
	combout => \Unit1|Unit1|U1|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y45_N8
\Unit1|Unit0|U1|tmp_PC[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[2]~18_combout\ = (\Unit1|Unit0|U1|tmp_PC\(2) & (\Unit1|Unit0|U1|tmp_PC[1]~17\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(2) & (!\Unit1|Unit0|U1|tmp_PC[1]~17\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[2]~19\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(2) & !\Unit1|Unit0|U1|tmp_PC[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(2),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[1]~17\,
	combout => \Unit1|Unit0|U1|tmp_PC[2]~18_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[2]~19\);

-- Location: LCCOMB_X65_Y45_N10
\Unit1|Unit0|U1|tmp_PC[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[3]~20_combout\ = (\Unit1|Unit0|U1|tmp_PC\(3) & (!\Unit1|Unit0|U1|tmp_PC[2]~19\)) # (!\Unit1|Unit0|U1|tmp_PC\(3) & ((\Unit1|Unit0|U1|tmp_PC[2]~19\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[3]~21\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[2]~19\) # (!\Unit1|Unit0|U1|tmp_PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(3),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[2]~19\,
	combout => \Unit1|Unit0|U1|tmp_PC[3]~20_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[3]~21\);

-- Location: FF_X65_Y45_N11
\Unit1|Unit0|U1|tmp_PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[3]~20_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(3),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(3));

-- Location: FF_X58_Y40_N21
\Unit1|Unit1|U2|tmp_rf[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][3]~q\);

-- Location: LCCOMB_X61_Y41_N22
\Unit1|Unit1|U2|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~10_combout\ = (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (\Unit1|Unit0|U0|RFwa_ctrl\(2) & (!\Unit1|Unit0|U0|RFwa_ctrl\(0) & \Unit1|Unit0|U0|RFwa_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	combout => \Unit1|Unit1|U2|Decoder0~10_combout\);

-- Location: LCCOMB_X65_Y44_N30
\Unit1|Unit1|U2|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~21_combout\ = (\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit1|U2|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|Unit1|U2|Decoder0~10_combout\,
	combout => \Unit1|Unit1|U2|Decoder0~21_combout\);

-- Location: FF_X59_Y43_N11
\Unit1|Unit1|U2|tmp_rf[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][3]~q\);

-- Location: LCCOMB_X61_Y44_N20
\Unit1|Unit1|U2|tmp_rf[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[6][3]~feeder_combout\ = \Unit1|Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[6][3]~feeder_combout\);

-- Location: LCCOMB_X65_Y44_N20
\Unit1|Unit1|U2|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~11_combout\ = (!\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit1|U2|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|Unit1|U2|Decoder0~10_combout\,
	combout => \Unit1|Unit1|U2|Decoder0~11_combout\);

-- Location: FF_X61_Y44_N21
\Unit1|Unit1|U2|tmp_rf[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[6][3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][3]~q\);

-- Location: LCCOMB_X63_Y40_N24
\Unit1|Unit1|U2|tmp_rf[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[2][3]~feeder_combout\ = \Unit1|Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[2][3]~feeder_combout\);

-- Location: LCCOMB_X63_Y41_N4
\Unit1|Unit1|U2|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~16_combout\ = (!\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit1|U2|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datac => \Unit1|Unit1|U2|Decoder0~0_combout\,
	combout => \Unit1|Unit1|U2|Decoder0~16_combout\);

-- Location: FF_X63_Y40_N25
\Unit1|Unit1|U2|tmp_rf[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[2][3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][3]~q\);

-- Location: LCCOMB_X63_Y40_N28
\Unit1|Unit1|U2|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[6][3]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & \Unit1|Unit1|U2|tmp_rf[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[6][3]~q\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|Unit1|U2|tmp_rf[2][3]~q\,
	combout => \Unit1|Unit1|U2|Mux28~2_combout\);

-- Location: LCCOMB_X59_Y43_N10
\Unit1|Unit1|U2|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux28~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[14][3]~q\))) # (!\Unit1|Unit1|U2|Mux28~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][3]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[10][3]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][3]~q\,
	datad => \Unit1|Unit1|U2|Mux28~2_combout\,
	combout => \Unit1|Unit1|U2|Mux28~3_combout\);

-- Location: LCCOMB_X59_Y41_N12
\Unit1|Unit1|U2|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~13_combout\ = (\Unit1|Unit1|U2|Decoder0~12_combout\ & !\Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Decoder0~12_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~13_combout\);

-- Location: FF_X59_Y41_N17
\Unit1|Unit1|U2|tmp_rf[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][3]~q\);

-- Location: LCCOMB_X61_Y41_N6
\Unit1|Unit1|U2|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~4_combout\ = (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (!\Unit1|Unit0|U0|RFwa_ctrl\(2) & (!\Unit1|Unit0|U0|RFwa_ctrl\(0) & !\Unit1|Unit0|U0|RFwa_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	combout => \Unit1|Unit1|U2|Decoder0~4_combout\);

-- Location: LCCOMB_X61_Y41_N30
\Unit1|Unit1|U2|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~18_combout\ = (\Unit1|Unit1|U2|Decoder0~4_combout\ & !\Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Decoder0~4_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~18_combout\);

-- Location: FF_X58_Y41_N15
\Unit1|Unit1|U2|tmp_rf[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][3]~q\);

-- Location: LCCOMB_X58_Y41_N14
\Unit1|Unit1|U2|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][3]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[0][3]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][3]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[0][3]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux28~4_combout\);

-- Location: FF_X59_Y41_N27
\Unit1|Unit1|U2|tmp_rf[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][3]~q\);

-- Location: LCCOMB_X61_Y41_N16
\Unit1|Unit1|U2|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~5_combout\ = (\Unit1|Unit1|U2|Decoder0~4_combout\ & \Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Decoder0~4_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~5_combout\);

-- Location: FF_X58_Y41_N21
\Unit1|Unit1|U2|tmp_rf[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][3]~q\);

-- Location: LCCOMB_X59_Y41_N26
\Unit1|Unit1|U2|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux28~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[12][3]~q\)) # (!\Unit1|Unit1|U2|Mux28~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[8][3]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (\Unit1|Unit1|U2|Mux28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux28~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][3]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[8][3]~q\,
	combout => \Unit1|Unit1|U2|Mux28~5_combout\);

-- Location: LCCOMB_X59_Y43_N24
\Unit1|Unit1|U2|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux28~3_combout\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|Mux28~5_combout\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux28~3_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux28~5_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux28~6_combout\);

-- Location: LCCOMB_X60_Y42_N30
\Unit1|Unit1|U2|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~19_combout\ = (\Unit1|Unit1|U2|Decoder0~6_combout\ & !\Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|Decoder0~6_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~19_combout\);

-- Location: FF_X61_Y40_N31
\Unit1|Unit1|U2|tmp_rf[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][3]~q\);

-- Location: FF_X61_Y42_N5
\Unit1|Unit1|U2|tmp_rf[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][3]~q\);

-- Location: LCCOMB_X61_Y40_N30
\Unit1|Unit1|U2|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[11][3]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[3][3]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[11][3]~q\,
	combout => \Unit1|Unit1|U2|Mux28~7_combout\);

-- Location: FF_X61_Y44_N9
\Unit1|Unit1|U2|tmp_rf[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][3]~q\);

-- Location: LCCOMB_X61_Y42_N26
\Unit1|Unit1|U2|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~8_combout\ = (\Unit1|Unit1|U2|Mux28~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][3]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux28~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][3]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux28~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][3]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][3]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux28~8_combout\);

-- Location: LCCOMB_X61_Y41_N26
\Unit1|Unit1|U2|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~2_combout\ = (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (!\Unit1|Unit0|U0|RFwa_ctrl\(2) & (\Unit1|Unit0|U0|RFwa_ctrl\(0) & !\Unit1|Unit0|U0|RFwa_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	combout => \Unit1|Unit1|U2|Decoder0~2_combout\);

-- Location: LCCOMB_X61_Y41_N4
\Unit1|Unit1|U2|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~3_combout\ = (\Unit1|Unit1|U2|Decoder0~2_combout\ & \Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|Decoder0~2_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~3_combout\);

-- Location: FF_X62_Y40_N23
\Unit1|Unit1|U2|tmp_rf[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][3]~q\);

-- Location: LCCOMB_X61_Y41_N20
\Unit1|Unit1|U2|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~17_combout\ = (\Unit1|Unit1|U2|Decoder0~2_combout\ & !\Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|Decoder0~2_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~17_combout\);

-- Location: FF_X61_Y40_N13
\Unit1|Unit1|U2|tmp_rf[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][3]~q\);

-- Location: LCCOMB_X61_Y40_N12
\Unit1|Unit1|U2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[9][3]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[9][3]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][3]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux28~0_combout\);

-- Location: LCCOMB_X61_Y41_N28
\Unit1|Unit1|U2|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~8_combout\ = (!\Unit1|Unit0|U0|RFwa_ctrl\(1) & (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (\Unit1|Unit0|U0|RFwa_ctrl\(0) & \Unit1|Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|Unit1|U2|Decoder0~8_combout\);

-- Location: LCCOMB_X59_Y40_N0
\Unit1|Unit1|U2|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~9_combout\ = (\Unit1|Unit1|U2|Decoder0~8_combout\ & !\Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|Decoder0~8_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~9_combout\);

-- Location: FF_X61_Y39_N17
\Unit1|Unit1|U2|tmp_rf[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][3]~q\);

-- Location: LCCOMB_X59_Y40_N2
\Unit1|Unit1|U2|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~20_combout\ = (\Unit1|Unit1|U2|Decoder0~8_combout\ & \Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|Decoder0~8_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~20_combout\);

-- Location: FF_X62_Y40_N25
\Unit1|Unit1|U2|tmp_rf[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][3]~q\);

-- Location: LCCOMB_X61_Y39_N16
\Unit1|Unit1|U2|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux28~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][3]~q\))) # (!\Unit1|Unit1|U2|Mux28~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][3]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (\Unit1|Unit1|U2|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux28~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][3]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[13][3]~q\,
	combout => \Unit1|Unit1|U2|Mux28~1_combout\);

-- Location: LCCOMB_X62_Y43_N12
\Unit1|Unit1|U2|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux28~9_combout\ = (\Unit1|Unit1|U2|Mux28~6_combout\ & ((\Unit1|Unit1|U2|Mux28~8_combout\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux28~6_combout\ & (((\Unit1|Unit1|U2|Mux28~1_combout\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux28~6_combout\,
	datab => \Unit1|Unit1|U2|Mux28~8_combout\,
	datac => \Unit1|Unit1|U2|Mux28~1_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux28~9_combout\);

-- Location: LCCOMB_X62_Y44_N0
\Unit1|Unit0|U0|WideOr61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr61~0_combout\ = (!\Unit1|Unit0|U0|state.S26a~q\ & !\Unit1|Unit0|U0|state.S25a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|state.S26a~q\,
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|WideOr61~0_combout\);

-- Location: LCCOMB_X66_Y44_N22
\Unit1|Unit0|U0|WideOr48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr48~0_combout\ = (!\Unit1|Unit0|U0|state.S27c~q\ & (!\Unit1|Unit0|U0|state.S1b~q\ & (!\Unit1|Unit0|U0|state.S27b~q\ & \Unit1|Unit0|U0|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S27c~q\,
	datab => \Unit1|Unit0|U0|state.S1b~q\,
	datac => \Unit1|Unit0|U0|state.S27b~q\,
	datad => \Unit1|Unit0|U0|state.S0~q\,
	combout => \Unit1|Unit0|U0|WideOr48~0_combout\);

-- Location: LCCOMB_X66_Y44_N26
\Unit1|Unit0|U0|WideOr48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr48~1_combout\ = (\Unit1|Unit0|U0|WideOr48~0_combout\ & !\Unit1|Unit0|U0|state.S28~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr48~0_combout\,
	datad => \Unit1|Unit0|U0|state.S28~q\,
	combout => \Unit1|Unit0|U0|WideOr48~1_combout\);

-- Location: LCCOMB_X67_Y44_N4
\Unit1|Unit0|U0|WideOr42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr42~0_combout\ = (!\Unit1|Unit0|U0|state.S29a~q\ & (!\Unit1|Unit0|U0|state.S24a~q\ & (!\Unit1|Unit0|U0|state.S1a~q\ & !\Unit1|Unit0|U0|state.S21a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S29a~q\,
	datab => \Unit1|Unit0|U0|state.S24a~q\,
	datac => \Unit1|Unit0|U0|state.S1a~q\,
	datad => \Unit1|Unit0|U0|state.S21a~q\,
	combout => \Unit1|Unit0|U0|WideOr42~0_combout\);

-- Location: LCCOMB_X66_Y44_N6
\Unit1|Unit0|U0|WideOr42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr42~1_combout\ = (\Unit1|Unit0|U0|WideOr48~1_combout\ & (\Unit1|Unit0|U0|Selector27~0_combout\ & (!\Unit1|Unit0|U0|state.S23b~q\ & \Unit1|Unit0|U0|WideOr42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr48~1_combout\,
	datab => \Unit1|Unit0|U0|Selector27~0_combout\,
	datac => \Unit1|Unit0|U0|state.S23b~q\,
	datad => \Unit1|Unit0|U0|WideOr42~0_combout\,
	combout => \Unit1|Unit0|U0|WideOr42~1_combout\);

-- Location: LCCOMB_X66_Y44_N14
\Unit1|Unit0|U0|WideOr45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr45~combout\ = ((\Unit1|Unit0|U0|state.S22b~q\) # ((\Unit1|Unit0|U0|state.S27a~q\) # (\Unit1|Unit0|U0|state.S22a~q\))) # (!\Unit1|Unit0|U0|WideOr42~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr42~1_combout\,
	datab => \Unit1|Unit0|U0|state.S22b~q\,
	datac => \Unit1|Unit0|U0|state.S27a~q\,
	datad => \Unit1|Unit0|U0|state.S22a~q\,
	combout => \Unit1|Unit0|U0|WideOr45~combout\);

-- Location: LCCOMB_X63_Y44_N12
\Unit1|Unit0|U0|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector41~0_combout\ = ((\Unit1|Unit0|U0|state.S23a~q\) # ((\Unit1|Unit0|U0|RFr2e_ctrl~q\ & \Unit1|Unit0|U0|WideOr45~combout\))) # (!\Unit1|Unit0|U0|WideOr61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr61~0_combout\,
	datab => \Unit1|Unit0|U0|state.S23a~q\,
	datac => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	datad => \Unit1|Unit0|U0|WideOr45~combout\,
	combout => \Unit1|Unit0|U0|Selector41~0_combout\);

-- Location: FF_X63_Y44_N13
\Unit1|Unit0|U0|RFr2e_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector41~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr2e_ctrl~q\);

-- Location: FF_X62_Y43_N13
\Unit1|Unit1|U2|RFr2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux28~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(3));

-- Location: LCCOMB_X62_Y43_N4
\Unit1|Unit1|U3|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~75_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr2\(3)))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr1\(3),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr2\(3),
	combout => \Unit1|Unit1|U3|Add0~75_combout\);

-- Location: LCCOMB_X62_Y46_N4
\Unit1|Unit1|U3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~11_combout\ = \Unit1|Unit1|U2|RFr2\(3) $ (\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|RFr2\(3),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~11_combout\);

-- Location: LCCOMB_X62_Y44_N24
\Unit1|Unit0|U0|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector66~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\ & (\Unit1|Unit0|U0|IR_PS2\(4))) # (!\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|state.S25a~q\ & (\Unit1|Unit0|U0|IR_PS2\(4))) # (!\Unit1|Unit0|U0|state.S25a~q\ & 
-- ((\Unit1|Unit0|U0|IR_PS2\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(4),
	datab => \Unit1|Unit0|U0|IR_PS2\(8),
	datac => \Unit1|Unit0|U0|state.S26a~q\,
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|Selector66~0_combout\);

-- Location: LCCOMB_X62_Y44_N12
\Unit1|Unit0|U0|RFr1a_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\ = (!\sys_rst~input_o\ & (!\Unit1|Unit0|U0|state.S28~q\ & ((\Unit1|Unit0|U0|state.S26a~q\) # (!\Unit1|Unit0|U0|WideOr59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr59~0_combout\,
	datab => \Unit1|Unit0|U0|state.S26a~q\,
	datac => \sys_rst~input_o\,
	datad => \Unit1|Unit0|U0|state.S28~q\,
	combout => \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\);

-- Location: FF_X62_Y44_N25
\Unit1|Unit0|U0|RFr1a_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector66~0_combout\,
	ena => \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr1a_ctrl\(0));

-- Location: LCCOMB_X67_Y44_N30
\Unit1|Unit0|U0|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector38~0_combout\ = (\Unit1|Unit0|U0|state.S22a~q\) # ((\Unit1|Unit0|U0|state.S29a~q\) # (\Unit1|Unit0|U0|state.S21a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S22a~q\,
	datac => \Unit1|Unit0|U0|state.S29a~q\,
	datad => \Unit1|Unit0|U0|state.S21a~q\,
	combout => \Unit1|Unit0|U0|Selector38~0_combout\);

-- Location: LCCOMB_X67_Y44_N16
\Unit1|Unit0|U0|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector38~1_combout\ = (\Unit1|Unit0|U0|Selector38~0_combout\) # ((\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U0|WideOr35~0_combout\) # (!\Unit1|Unit0|U0|WideOr30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Selector38~0_combout\,
	datab => \Unit1|Unit0|U0|WideOr35~0_combout\,
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U0|WideOr30~1_combout\,
	combout => \Unit1|Unit0|U0|Selector38~1_combout\);

-- Location: FF_X67_Y44_N17
\Unit1|Unit0|U0|Ms_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector38~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Ms_ctrl\(0));

-- Location: LCCOMB_X65_Y45_N12
\Unit1|Unit0|U1|tmp_PC[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[4]~22_combout\ = (\Unit1|Unit0|U1|tmp_PC\(4) & (\Unit1|Unit0|U1|tmp_PC[3]~21\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(4) & (!\Unit1|Unit0|U1|tmp_PC[3]~21\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[4]~23\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(4) & !\Unit1|Unit0|U1|tmp_PC[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(4),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[3]~21\,
	combout => \Unit1|Unit0|U1|tmp_PC[4]~22_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[4]~23\);

-- Location: FF_X65_Y45_N13
\Unit1|Unit0|U1|tmp_PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[4]~22_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(4),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(4));

-- Location: FF_X59_Y41_N29
\Unit1|Unit1|U2|tmp_rf[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][4]~q\);

-- Location: FF_X59_Y43_N17
\Unit1|Unit1|U2|tmp_rf[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][4]~q\);

-- Location: LCCOMB_X59_Y43_N16
\Unit1|Unit1|U2|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[14][4]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[12][4]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][4]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux11~7_combout\);

-- Location: FF_X59_Y40_N25
\Unit1|Unit1|U2|tmp_rf[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][4]~q\);

-- Location: LCCOMB_X59_Y40_N10
\Unit1|Unit1|U2|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux11~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][4]~q\)) # (!\Unit1|Unit1|U2|Mux11~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][4]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) 
-- & (\Unit1|Unit1|U2|Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux11~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[15][4]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[13][4]~q\,
	combout => \Unit1|Unit1|U2|Mux11~8_combout\);

-- Location: LCCOMB_X65_Y45_N14
\Unit1|Unit0|U1|tmp_PC[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[5]~24_combout\ = (\Unit1|Unit0|U1|tmp_PC\(5) & (!\Unit1|Unit0|U1|tmp_PC[4]~23\)) # (!\Unit1|Unit0|U1|tmp_PC\(5) & ((\Unit1|Unit0|U1|tmp_PC[4]~23\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[5]~25\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[4]~23\) # (!\Unit1|Unit0|U1|tmp_PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(5),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[4]~23\,
	combout => \Unit1|Unit0|U1|tmp_PC[5]~24_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[5]~25\);

-- Location: FF_X65_Y45_N15
\Unit1|Unit0|U1|tmp_PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[5]~24_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(5),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(5));

-- Location: LCCOMB_X62_Y44_N20
\Unit1|Unit0|U0|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector64~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\ & (\Unit1|Unit0|U0|IR_PS2\(6))) # (!\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|state.S25a~q\ & (\Unit1|Unit0|U0|IR_PS2\(6))) # (!\Unit1|Unit0|U0|state.S25a~q\ & 
-- ((\Unit1|Unit0|U0|IR_PS2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(6),
	datab => \Unit1|Unit0|U0|IR_PS2\(10),
	datac => \Unit1|Unit0|U0|state.S26a~q\,
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|Selector64~0_combout\);

-- Location: FF_X62_Y44_N21
\Unit1|Unit0|U0|RFr1a_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector64~0_combout\,
	ena => \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr1a_ctrl\(2));

-- Location: FF_X61_Y44_N27
\Unit1|Unit1|U2|tmp_rf[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][5]~q\);

-- Location: FF_X61_Y42_N7
\Unit1|Unit1|U2|tmp_rf[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][5]~q\);

-- Location: FF_X65_Y42_N25
\Unit1|Unit1|U2|tmp_rf[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][5]~q\);

-- Location: LCCOMB_X61_Y41_N2
\Unit1|Unit1|U2|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~14_combout\ = (\Unit1|Unit0|U0|RFwa_ctrl\(1) & (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (\Unit1|Unit0|U0|RFwa_ctrl\(0) & \Unit1|Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|Unit1|U2|Decoder0~14_combout\);

-- Location: LCCOMB_X62_Y42_N22
\Unit1|Unit1|U2|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~15_combout\ = (!\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit1|U2|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datac => \Unit1|Unit1|U2|Decoder0~14_combout\,
	combout => \Unit1|Unit1|U2|Decoder0~15_combout\);

-- Location: FF_X61_Y42_N1
\Unit1|Unit1|U2|tmp_rf[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][5]~q\);

-- Location: LCCOMB_X65_Y42_N24
\Unit1|Unit1|U2|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|Unit1|U2|tmp_rf[7][5]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[3][5]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[7][5]~q\,
	combout => \Unit1|Unit1|U2|Mux26~7_combout\);

-- Location: LCCOMB_X61_Y42_N6
\Unit1|Unit1|U2|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux26~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][5]~q\)) # (!\Unit1|Unit1|U2|Mux26~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][5]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[15][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][5]~q\,
	datad => \Unit1|Unit1|U2|Mux26~7_combout\,
	combout => \Unit1|Unit1|U2|Mux26~8_combout\);

-- Location: FF_X59_Y42_N23
\Unit1|Unit1|U2|tmp_rf[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][5]~q\);

-- Location: FF_X59_Y42_N13
\Unit1|Unit1|U2|tmp_rf[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][5]~q\);

-- Location: LCCOMB_X59_Y42_N22
\Unit1|Unit1|U2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[10][5]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[2][5]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[10][5]~q\,
	combout => \Unit1|Unit1|U2|Mux26~0_combout\);

-- Location: FF_X63_Y42_N19
\Unit1|Unit1|U2|tmp_rf[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][5]~q\);

-- Location: LCCOMB_X61_Y44_N16
\Unit1|Unit1|U2|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~1_combout\ = (\Unit1|Unit1|U2|Mux26~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][5]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2)))) # (!\Unit1|Unit1|U2|Mux26~0_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[6][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux26~0_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[6][5]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[14][5]~q\,
	combout => \Unit1|Unit1|U2|Mux26~1_combout\);

-- Location: FF_X62_Y40_N3
\Unit1|Unit1|U2|tmp_rf[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][5]~q\);

-- Location: FF_X62_Y40_N5
\Unit1|Unit1|U2|tmp_rf[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][5]~q\);

-- Location: FF_X61_Y39_N3
\Unit1|Unit1|U2|tmp_rf[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][5]~q\);

-- Location: FF_X61_Y39_N29
\Unit1|Unit1|U2|tmp_rf[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][5]~q\);

-- Location: LCCOMB_X61_Y39_N28
\Unit1|Unit1|U2|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[5][5]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[5][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][5]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux26~2_combout\);

-- Location: LCCOMB_X62_Y40_N4
\Unit1|Unit1|U2|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux26~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][5]~q\))) # (!\Unit1|Unit1|U2|Mux26~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[9][5]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[9][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][5]~q\,
	datad => \Unit1|Unit1|U2|Mux26~2_combout\,
	combout => \Unit1|Unit1|U2|Mux26~3_combout\);

-- Location: FF_X58_Y41_N9
\Unit1|Unit1|U2|tmp_rf[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][5]~q\);

-- Location: FF_X58_Y41_N11
\Unit1|Unit1|U2|tmp_rf[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][5]~q\);

-- Location: LCCOMB_X58_Y41_N10
\Unit1|Unit1|U2|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[8][5]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[8][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[0][5]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux26~4_combout\);

-- Location: FF_X60_Y41_N5
\Unit1|Unit1|U2|tmp_rf[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][5]~q\);

-- Location: FF_X60_Y41_N3
\Unit1|Unit1|U2|tmp_rf[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][5]~q\);

-- Location: LCCOMB_X60_Y41_N4
\Unit1|Unit1|U2|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux26~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[12][5]~q\)) # (!\Unit1|Unit1|U2|Mux26~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[4][5]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (\Unit1|Unit1|U2|Mux26~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux26~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][5]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[4][5]~q\,
	combout => \Unit1|Unit1|U2|Mux26~5_combout\);

-- Location: LCCOMB_X59_Y41_N2
\Unit1|Unit1|U2|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|Mux26~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|Mux26~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|Mux26~3_combout\,
	datad => \Unit1|Unit1|U2|Mux26~5_combout\,
	combout => \Unit1|Unit1|U2|Mux26~6_combout\);

-- Location: LCCOMB_X63_Y46_N26
\Unit1|Unit1|U2|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux26~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux26~6_combout\ & (\Unit1|Unit1|U2|Mux26~8_combout\)) # (!\Unit1|Unit1|U2|Mux26~6_combout\ & ((\Unit1|Unit1|U2|Mux26~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux26~8_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux26~1_combout\,
	datad => \Unit1|Unit1|U2|Mux26~6_combout\,
	combout => \Unit1|Unit1|U2|Mux26~9_combout\);

-- Location: FF_X63_Y46_N27
\Unit1|Unit1|U2|RFr2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux26~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(5));

-- Location: LCCOMB_X63_Y46_N12
\Unit1|Unit1|U3|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~68_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(5))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr2\(5),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U2|RFr1\(5),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~68_combout\);

-- Location: LCCOMB_X62_Y46_N0
\Unit1|Unit1|U3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~9_combout\ = \Unit1|Unit1|U2|RFr2\(5) $ (\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit1|U2|RFr2\(5),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~9_combout\);

-- Location: LCCOMB_X62_Y46_N24
\Unit1|Unit1|U3|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~23_combout\ = ((\Unit1|Unit1|U2|RFr1\(3) $ (\Unit1|Unit1|U3|Add0~11_combout\ $ (!\Unit1|Unit1|U3|Add0~22\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~24\ = CARRY((\Unit1|Unit1|U2|RFr1\(3) & ((\Unit1|Unit1|U3|Add0~11_combout\) # (!\Unit1|Unit1|U3|Add0~22\))) # (!\Unit1|Unit1|U2|RFr1\(3) & (\Unit1|Unit1|U3|Add0~11_combout\ & !\Unit1|Unit1|U3|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(3),
	datab => \Unit1|Unit1|U3|Add0~11_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~22\,
	combout => \Unit1|Unit1|U3|Add0~23_combout\,
	cout => \Unit1|Unit1|U3|Add0~24\);

-- Location: LCCOMB_X62_Y46_N26
\Unit1|Unit1|U3|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~25_combout\ = (\Unit1|Unit1|U3|Add0~10_combout\ & ((\Unit1|Unit1|U2|RFr1\(4) & (\Unit1|Unit1|U3|Add0~24\ & VCC)) # (!\Unit1|Unit1|U2|RFr1\(4) & (!\Unit1|Unit1|U3|Add0~24\)))) # (!\Unit1|Unit1|U3|Add0~10_combout\ & 
-- ((\Unit1|Unit1|U2|RFr1\(4) & (!\Unit1|Unit1|U3|Add0~24\)) # (!\Unit1|Unit1|U2|RFr1\(4) & ((\Unit1|Unit1|U3|Add0~24\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~26\ = CARRY((\Unit1|Unit1|U3|Add0~10_combout\ & (!\Unit1|Unit1|U2|RFr1\(4) & !\Unit1|Unit1|U3|Add0~24\)) # (!\Unit1|Unit1|U3|Add0~10_combout\ & ((!\Unit1|Unit1|U3|Add0~24\) # (!\Unit1|Unit1|U2|RFr1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~10_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(4),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~24\,
	combout => \Unit1|Unit1|U3|Add0~25_combout\,
	cout => \Unit1|Unit1|U3|Add0~26\);

-- Location: LCCOMB_X62_Y46_N28
\Unit1|Unit1|U3|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~27_combout\ = ((\Unit1|Unit1|U2|RFr1\(5) $ (\Unit1|Unit1|U3|Add0~9_combout\ $ (!\Unit1|Unit1|U3|Add0~26\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~28\ = CARRY((\Unit1|Unit1|U2|RFr1\(5) & ((\Unit1|Unit1|U3|Add0~9_combout\) # (!\Unit1|Unit1|U3|Add0~26\))) # (!\Unit1|Unit1|U2|RFr1\(5) & (\Unit1|Unit1|U3|Add0~9_combout\ & !\Unit1|Unit1|U3|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(5),
	datab => \Unit1|Unit1|U3|Add0~9_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~26\,
	combout => \Unit1|Unit1|U3|Add0~27_combout\,
	cout => \Unit1|Unit1|U3|Add0~28\);

-- Location: LCCOMB_X63_Y46_N14
\Unit1|Unit1|U3|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~81_combout\ = (\Unit1|Unit1|U3|Add0~68_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~68_combout\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~27_combout\,
	combout => \Unit1|Unit1|U3|Add0~81_combout\);

-- Location: LCCOMB_X61_Y44_N6
\Unit1|Unit1|U1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux10~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0)) # ((\Unit1|Unit0|U2|dir_addr\(5))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- (\Unit2|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	datad => \Unit1|Unit0|U2|dir_addr\(5),
	combout => \Unit1|Unit1|U1|Mux10~0_combout\);

-- Location: LCCOMB_X61_Y44_N26
\Unit1|Unit1|U1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux10~1_combout\ = (\Unit1|Unit1|U1|Mux10~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit1|Unit1|U3|Add0~81_combout\ & !\Unit1|Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datab => \Unit1|Unit1|U3|Add0~81_combout\,
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit1|U1|Mux10~0_combout\,
	combout => \Unit1|Unit1|U1|Mux10~1_combout\);

-- Location: FF_X61_Y44_N17
\Unit1|Unit1|U2|tmp_rf[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][5]~q\);

-- Location: LCCOMB_X59_Y42_N12
\Unit1|Unit1|U2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[10][5]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[2][5]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[10][5]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux10~0_combout\);

-- Location: LCCOMB_X63_Y42_N18
\Unit1|Unit1|U2|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux10~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[14][5]~q\))) # (!\Unit1|Unit1|U2|Mux10~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[6][5]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[6][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][5]~q\,
	datad => \Unit1|Unit1|U2|Mux10~0_combout\,
	combout => \Unit1|Unit1|U2|Mux10~1_combout\);

-- Location: LCCOMB_X61_Y39_N2
\Unit1|Unit1|U2|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[5][5]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[1][5]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[1][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][5]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux10~2_combout\);

-- Location: LCCOMB_X62_Y40_N2
\Unit1|Unit1|U2|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux10~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][5]~q\)) # (!\Unit1|Unit1|U2|Mux10~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][5]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[13][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][5]~q\,
	datad => \Unit1|Unit1|U2|Mux10~2_combout\,
	combout => \Unit1|Unit1|U2|Mux10~3_combout\);

-- Location: LCCOMB_X58_Y41_N8
\Unit1|Unit1|U2|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[8][5]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][5]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[8][5]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux10~4_combout\);

-- Location: LCCOMB_X60_Y41_N2
\Unit1|Unit1|U2|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~5_combout\ = (\Unit1|Unit1|U2|Mux10~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][5]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux10~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[4][5]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux10~4_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[12][5]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][5]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux10~5_combout\);

-- Location: LCCOMB_X62_Y41_N14
\Unit1|Unit1|U2|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|Mux10~3_combout\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux10~3_combout\,
	datac => \Unit1|Unit1|U2|Mux10~5_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux10~6_combout\);

-- Location: LCCOMB_X61_Y42_N0
\Unit1|Unit1|U2|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|Unit1|U2|tmp_rf[7][5]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[7][5]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[3][5]~q\,
	combout => \Unit1|Unit1|U2|Mux10~7_combout\);

-- Location: LCCOMB_X61_Y42_N18
\Unit1|Unit1|U2|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux10~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][5]~q\))) # (!\Unit1|Unit1|U2|Mux10~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][5]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[11][5]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[15][5]~q\,
	datad => \Unit1|Unit1|U2|Mux10~7_combout\,
	combout => \Unit1|Unit1|U2|Mux10~8_combout\);

-- Location: LCCOMB_X62_Y42_N30
\Unit1|Unit1|U2|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux10~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux10~6_combout\ & ((\Unit1|Unit1|U2|Mux10~8_combout\))) # (!\Unit1|Unit1|U2|Mux10~6_combout\ & (\Unit1|Unit1|U2|Mux10~1_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux10~1_combout\,
	datac => \Unit1|Unit1|U2|Mux10~6_combout\,
	datad => \Unit1|Unit1|U2|Mux10~8_combout\,
	combout => \Unit1|Unit1|U2|Mux10~9_combout\);

-- Location: LCCOMB_X63_Y44_N18
\Unit1|Unit0|U0|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector40~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\) # (((\Unit1|Unit0|U0|RFr1e_ctrl~q\ & !\Unit1|Unit0|U0|WideOr42~1_combout\)) # (!\Unit1|Unit0|U0|WideOr59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S26a~q\,
	datab => \Unit1|Unit0|U0|WideOr59~0_combout\,
	datac => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	datad => \Unit1|Unit0|U0|WideOr42~1_combout\,
	combout => \Unit1|Unit0|U0|Selector40~0_combout\);

-- Location: FF_X63_Y44_N19
\Unit1|Unit0|U0|RFr1e_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector40~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr1e_ctrl~q\);

-- Location: FF_X62_Y42_N31
\Unit1|Unit1|U2|RFr1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux10~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(5));

-- Location: LCCOMB_X60_Y44_N0
\Unit1|Unit0|U3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux10~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U2|dir_addr\(5)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit1|U2|RFr1\(5),
	datad => \Unit1|Unit0|U2|dir_addr\(5),
	combout => \Unit1|Unit0|U3|Mux10~0_combout\);

-- Location: LCCOMB_X60_Y44_N18
\Unit1|Unit0|U3|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux10~1_combout\ = (\Unit1|Unit0|U3|Mux10~0_combout\) # ((!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit0|U1|tmp_PC\(5) & !\Unit1|Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U1|tmp_PC\(5),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U3|Mux10~0_combout\,
	combout => \Unit1|Unit0|U3|Mux10~1_combout\);

-- Location: LCCOMB_X65_Y45_N16
\Unit1|Unit0|U1|tmp_PC[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[6]~26_combout\ = (\Unit1|Unit0|U1|tmp_PC\(6) & (\Unit1|Unit0|U1|tmp_PC[5]~25\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(6) & (!\Unit1|Unit0|U1|tmp_PC[5]~25\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[6]~27\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(6) & !\Unit1|Unit0|U1|tmp_PC[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(6),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[5]~25\,
	combout => \Unit1|Unit0|U1|tmp_PC[6]~26_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[6]~27\);

-- Location: FF_X65_Y45_N17
\Unit1|Unit0|U1|tmp_PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[6]~26_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(6),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(6));

-- Location: FF_X59_Y40_N15
\Unit1|Unit1|U2|tmp_rf[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][6]~q\);

-- Location: LCCOMB_X59_Y40_N14
\Unit1|Unit1|U2|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[13][6]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[12][6]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[12][6]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][6]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux9~7_combout\);

-- Location: FF_X61_Y43_N15
\Unit1|Unit1|U2|tmp_rf[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][6]~q\);

-- Location: FF_X59_Y43_N27
\Unit1|Unit1|U2|tmp_rf[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][6]~q\);

-- Location: LCCOMB_X59_Y43_N4
\Unit1|Unit1|U2|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~8_combout\ = (\Unit1|Unit1|U2|Mux9~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][6]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux9~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][6]~q\ & \Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux9~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][6]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][6]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux9~8_combout\);

-- Location: FF_X58_Y40_N11
\Unit1|Unit1|U2|tmp_rf[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][6]~q\);

-- Location: FF_X59_Y40_N21
\Unit1|Unit1|U2|tmp_rf[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][6]~q\);

-- Location: FF_X60_Y40_N13
\Unit1|Unit1|U2|tmp_rf[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][6]~q\);

-- Location: LCCOMB_X58_Y40_N22
\Unit1|Unit1|U2|tmp_rf[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[10][6]~feeder_combout\ = \Unit1|Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[10][6]~feeder_combout\);

-- Location: FF_X58_Y40_N23
\Unit1|Unit1|U2|tmp_rf[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[10][6]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][6]~q\);

-- Location: LCCOMB_X58_Y40_N24
\Unit1|Unit1|U2|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(0)) # (\Unit1|Unit1|U2|tmp_rf[10][6]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[8][6]~q\ & (!\Unit1|Unit0|U0|RFr1a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[8][6]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit1|U2|tmp_rf[10][6]~q\,
	combout => \Unit1|Unit1|U2|Mux9~2_combout\);

-- Location: LCCOMB_X59_Y40_N20
\Unit1|Unit1|U2|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux9~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][6]~q\)) # (!\Unit1|Unit1|U2|Mux9~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][6]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[11][6]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][6]~q\,
	datad => \Unit1|Unit1|U2|Mux9~2_combout\,
	combout => \Unit1|Unit1|U2|Mux9~3_combout\);

-- Location: FF_X61_Y40_N29
\Unit1|Unit1|U2|tmp_rf[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][6]~q\);

-- Location: FF_X61_Y40_N11
\Unit1|Unit1|U2|tmp_rf[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][6]~q\);

-- Location: FF_X60_Y40_N15
\Unit1|Unit1|U2|tmp_rf[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][6]~q\);

-- Location: FF_X60_Y39_N23
\Unit1|Unit1|U2|tmp_rf[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][6]~q\);

-- Location: LCCOMB_X60_Y39_N22
\Unit1|Unit1|U2|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][6]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][6]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[2][6]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux9~4_combout\);

-- Location: LCCOMB_X61_Y40_N10
\Unit1|Unit1|U2|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~5_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux9~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][6]~q\)) # (!\Unit1|Unit1|U2|Mux9~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[1][6]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][6]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[1][6]~q\,
	datad => \Unit1|Unit1|U2|Mux9~4_combout\,
	combout => \Unit1|Unit1|U2|Mux9~5_combout\);

-- Location: LCCOMB_X60_Y42_N26
\Unit1|Unit1|U2|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|Unit1|U2|Mux9~3_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux9~3_combout\,
	datad => \Unit1|Unit1|U2|Mux9~5_combout\,
	combout => \Unit1|Unit1|U2|Mux9~6_combout\);

-- Location: FF_X60_Y39_N21
\Unit1|Unit1|U2|tmp_rf[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][6]~q\);

-- Location: FF_X60_Y41_N31
\Unit1|Unit1|U2|tmp_rf[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][6]~q\);

-- Location: FF_X61_Y39_N15
\Unit1|Unit1|U2|tmp_rf[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][6]~q\);

-- Location: LCCOMB_X61_Y39_N14
\Unit1|Unit1|U2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|tmp_rf[5][6]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|tmp_rf[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[4][6]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][6]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux9~0_combout\);

-- Location: FF_X59_Y39_N17
\Unit1|Unit1|U2|tmp_rf[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][6]~q\);

-- Location: LCCOMB_X59_Y39_N16
\Unit1|Unit1|U2|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~1_combout\ = (\Unit1|Unit1|U2|Mux9~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][6]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux9~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[6][6]~q\ & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[6][6]~q\,
	datab => \Unit1|Unit1|U2|Mux9~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][6]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux9~1_combout\);

-- Location: LCCOMB_X63_Y45_N24
\Unit1|Unit1|U2|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux9~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux9~6_combout\ & (\Unit1|Unit1|U2|Mux9~8_combout\)) # (!\Unit1|Unit1|U2|Mux9~6_combout\ & ((\Unit1|Unit1|U2|Mux9~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (((\Unit1|Unit1|U2|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux9~8_combout\,
	datac => \Unit1|Unit1|U2|Mux9~6_combout\,
	datad => \Unit1|Unit1|U2|Mux9~1_combout\,
	combout => \Unit1|Unit1|U2|Mux9~9_combout\);

-- Location: FF_X63_Y45_N25
\Unit1|Unit1|U2|RFr1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux9~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(6));

-- Location: LCCOMB_X61_Y46_N28
\Unit1|Unit0|U3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux9~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U2|dir_addr\(6)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit1|U2|RFr1\(6),
	datad => \Unit1|Unit0|U2|dir_addr\(6),
	combout => \Unit1|Unit0|U3|Mux9~0_combout\);

-- Location: LCCOMB_X61_Y46_N30
\Unit1|Unit0|U3|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux9~1_combout\ = (\Unit1|Unit0|U3|Mux9~0_combout\) # ((!\Unit1|Unit0|U0|Ms_ctrl\(0) & (!\Unit1|Unit0|U0|Ms_ctrl\(1) & \Unit1|Unit0|U1|tmp_PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U1|tmp_PC\(6),
	datad => \Unit1|Unit0|U3|Mux9~0_combout\,
	combout => \Unit1|Unit0|U3|Mux9~1_combout\);

-- Location: LCCOMB_X65_Y45_N18
\Unit1|Unit0|U1|tmp_PC[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[7]~28_combout\ = (\Unit1|Unit0|U1|tmp_PC\(7) & (!\Unit1|Unit0|U1|tmp_PC[6]~27\)) # (!\Unit1|Unit0|U1|tmp_PC\(7) & ((\Unit1|Unit0|U1|tmp_PC[6]~27\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[7]~29\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[6]~27\) # (!\Unit1|Unit0|U1|tmp_PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(7),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[6]~27\,
	combout => \Unit1|Unit0|U1|tmp_PC[7]~28_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[7]~29\);

-- Location: FF_X65_Y45_N19
\Unit1|Unit0|U1|tmp_PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[7]~28_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(7),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(7));

-- Location: FF_X59_Y41_N7
\Unit1|Unit1|U2|tmp_rf[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][7]~q\);

-- Location: FF_X58_Y41_N31
\Unit1|Unit1|U2|tmp_rf[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][7]~q\);

-- Location: LCCOMB_X58_Y41_N30
\Unit1|Unit1|U2|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][7]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[0][7]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][7]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[0][7]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux24~4_combout\);

-- Location: FF_X59_Y41_N9
\Unit1|Unit1|U2|tmp_rf[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][7]~q\);

-- Location: FF_X58_Y41_N29
\Unit1|Unit1|U2|tmp_rf[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][7]~q\);

-- Location: LCCOMB_X59_Y41_N8
\Unit1|Unit1|U2|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux24~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[12][7]~q\)) # (!\Unit1|Unit1|U2|Mux24~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[8][7]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (\Unit1|Unit1|U2|Mux24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux24~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][7]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[8][7]~q\,
	combout => \Unit1|Unit1|U2|Mux24~5_combout\);

-- Location: FF_X58_Y40_N5
\Unit1|Unit1|U2|tmp_rf[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][7]~q\);

-- Location: FF_X60_Y39_N1
\Unit1|Unit1|U2|tmp_rf[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][7]~q\);

-- Location: FF_X60_Y39_N19
\Unit1|Unit1|U2|tmp_rf[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][7]~q\);

-- Location: LCCOMB_X60_Y39_N18
\Unit1|Unit1|U2|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[6][7]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[2][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[6][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[2][7]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux24~2_combout\);

-- Location: FF_X59_Y43_N15
\Unit1|Unit1|U2|tmp_rf[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][7]~q\);

-- Location: LCCOMB_X59_Y43_N14
\Unit1|Unit1|U2|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~3_combout\ = (\Unit1|Unit1|U2|Mux24~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][7]~q\) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux24~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][7]~q\ & 
-- ((\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][7]~q\,
	datab => \Unit1|Unit1|U2|Mux24~2_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][7]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux24~3_combout\);

-- Location: LCCOMB_X59_Y41_N24
\Unit1|Unit1|U2|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|Unit1|U2|Mux24~3_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|Mux24~5_combout\,
	datad => \Unit1|Unit1|U2|Mux24~3_combout\,
	combout => \Unit1|Unit1|U2|Mux24~6_combout\);

-- Location: FF_X61_Y42_N31
\Unit1|Unit1|U2|tmp_rf[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][7]~q\);

-- Location: FF_X61_Y40_N25
\Unit1|Unit1|U2|tmp_rf[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][7]~q\);

-- Location: LCCOMB_X61_Y40_N24
\Unit1|Unit1|U2|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[11][7]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[3][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[11][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][7]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux24~7_combout\);

-- Location: FF_X61_Y42_N21
\Unit1|Unit1|U2|tmp_rf[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][7]~q\);

-- Location: LCCOMB_X61_Y42_N20
\Unit1|Unit1|U2|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~8_combout\ = (\Unit1|Unit1|U2|Mux24~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][7]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux24~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][7]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux24~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][7]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux24~8_combout\);

-- Location: FF_X62_Y40_N1
\Unit1|Unit1|U2|tmp_rf[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][7]~q\);

-- Location: FF_X62_Y41_N9
\Unit1|Unit1|U2|tmp_rf[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][7]~q\);

-- Location: FF_X62_Y40_N7
\Unit1|Unit1|U2|tmp_rf[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][7]~q\);

-- Location: FF_X61_Y40_N7
\Unit1|Unit1|U2|tmp_rf[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][7]~q\);

-- Location: LCCOMB_X61_Y40_N6
\Unit1|Unit1|U2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[9][7]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[1][7]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[9][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][7]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux24~0_combout\);

-- Location: LCCOMB_X62_Y41_N8
\Unit1|Unit1|U2|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux24~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][7]~q\)) # (!\Unit1|Unit1|U2|Mux24~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[5][7]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[13][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][7]~q\,
	datad => \Unit1|Unit1|U2|Mux24~0_combout\,
	combout => \Unit1|Unit1|U2|Mux24~1_combout\);

-- Location: LCCOMB_X62_Y41_N4
\Unit1|Unit1|U2|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux24~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux24~6_combout\ & (\Unit1|Unit1|U2|Mux24~8_combout\)) # (!\Unit1|Unit1|U2|Mux24~6_combout\ & ((\Unit1|Unit1|U2|Mux24~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (\Unit1|Unit1|U2|Mux24~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux24~6_combout\,
	datac => \Unit1|Unit1|U2|Mux24~8_combout\,
	datad => \Unit1|Unit1|U2|Mux24~1_combout\,
	combout => \Unit1|Unit1|U2|Mux24~9_combout\);

-- Location: FF_X62_Y41_N5
\Unit1|Unit1|U2|RFr2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux24~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(7));

-- Location: LCCOMB_X62_Y45_N20
\Unit1|Unit1|U3|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~7_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(7),
	combout => \Unit1|Unit1|U3|Add0~7_combout\);

-- Location: LCCOMB_X63_Y46_N8
\Unit1|Unit1|U3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~8_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(6),
	combout => \Unit1|Unit1|U3|Add0~8_combout\);

-- Location: LCCOMB_X62_Y46_N30
\Unit1|Unit1|U3|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~29_combout\ = (\Unit1|Unit1|U2|RFr1\(6) & ((\Unit1|Unit1|U3|Add0~8_combout\ & (\Unit1|Unit1|U3|Add0~28\ & VCC)) # (!\Unit1|Unit1|U3|Add0~8_combout\ & (!\Unit1|Unit1|U3|Add0~28\)))) # (!\Unit1|Unit1|U2|RFr1\(6) & 
-- ((\Unit1|Unit1|U3|Add0~8_combout\ & (!\Unit1|Unit1|U3|Add0~28\)) # (!\Unit1|Unit1|U3|Add0~8_combout\ & ((\Unit1|Unit1|U3|Add0~28\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~30\ = CARRY((\Unit1|Unit1|U2|RFr1\(6) & (!\Unit1|Unit1|U3|Add0~8_combout\ & !\Unit1|Unit1|U3|Add0~28\)) # (!\Unit1|Unit1|U2|RFr1\(6) & ((!\Unit1|Unit1|U3|Add0~28\) # (!\Unit1|Unit1|U3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(6),
	datab => \Unit1|Unit1|U3|Add0~8_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~28\,
	combout => \Unit1|Unit1|U3|Add0~29_combout\,
	cout => \Unit1|Unit1|U3|Add0~30\);

-- Location: LCCOMB_X62_Y45_N0
\Unit1|Unit1|U3|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~31_combout\ = ((\Unit1|Unit1|U3|Add0~7_combout\ $ (\Unit1|Unit1|U2|RFr1\(7) $ (!\Unit1|Unit1|U3|Add0~30\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~32\ = CARRY((\Unit1|Unit1|U3|Add0~7_combout\ & ((\Unit1|Unit1|U2|RFr1\(7)) # (!\Unit1|Unit1|U3|Add0~30\))) # (!\Unit1|Unit1|U3|Add0~7_combout\ & (\Unit1|Unit1|U2|RFr1\(7) & !\Unit1|Unit1|U3|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~7_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(7),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~30\,
	combout => \Unit1|Unit1|U3|Add0~31_combout\,
	cout => \Unit1|Unit1|U3|Add0~32\);

-- Location: LCCOMB_X61_Y45_N2
\Unit1|Unit1|U3|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~79_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr2\(7)))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|Unit1|U2|RFr1\(7),
	datad => \Unit1|Unit1|U2|RFr2\(7),
	combout => \Unit1|Unit1|U3|Add0~79_combout\);

-- Location: LCCOMB_X61_Y45_N4
\Unit1|Unit1|U3|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~80_combout\ = (\Unit1|Unit1|U3|Add0~79_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~31_combout\,
	datad => \Unit1|Unit1|U3|Add0~79_combout\,
	combout => \Unit1|Unit1|U3|Add0~80_combout\);

-- Location: LCCOMB_X61_Y43_N0
\Unit1|Unit1|U1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux8~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0)) # ((\Unit1|Unit0|U2|dir_addr\(7))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- ((\Unit2|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit0|U2|dir_addr\(7),
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	combout => \Unit1|Unit1|U1|Mux8~0_combout\);

-- Location: LCCOMB_X61_Y43_N8
\Unit1|Unit1|U1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux8~1_combout\ = (\Unit1|Unit1|U1|Mux8~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit1|U3|Add0~80_combout\ & !\Unit1|Unit0|U0|RFs_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit1|U3|Add0~80_combout\,
	datac => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|Unit1|U1|Mux8~0_combout\,
	combout => \Unit1|Unit1|U1|Mux8~1_combout\);

-- Location: FF_X61_Y43_N9
\Unit1|Unit1|U2|tmp_rf[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][7]~q\);

-- Location: LCCOMB_X61_Y42_N30
\Unit1|Unit1|U2|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[11][7]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[3][7]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][7]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[11][7]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux8~7_combout\);

-- Location: LCCOMB_X61_Y42_N16
\Unit1|Unit1|U2|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~8_combout\ = (\Unit1|Unit1|U2|Mux8~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][7]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux8~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][7]~q\ & \Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][7]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[7][7]~q\,
	datac => \Unit1|Unit1|U2|Mux8~7_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux8~8_combout\);

-- Location: LCCOMB_X62_Y40_N6
\Unit1|Unit1|U2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[9][7]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[1][7]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[1][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][7]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux8~0_combout\);

-- Location: LCCOMB_X62_Y40_N0
\Unit1|Unit1|U2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~1_combout\ = (\Unit1|Unit1|U2|Mux8~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][7]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux8~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][7]~q\ & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux8~0_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[5][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][7]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux8~1_combout\);

-- Location: LCCOMB_X60_Y39_N0
\Unit1|Unit1|U2|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[6][7]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[2][7]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[2][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][7]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux8~2_combout\);

-- Location: LCCOMB_X58_Y40_N4
\Unit1|Unit1|U2|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux8~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][7]~q\)) # (!\Unit1|Unit1|U2|Mux8~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[10][7]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (((\Unit1|Unit1|U2|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[14][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][7]~q\,
	datad => \Unit1|Unit1|U2|Mux8~2_combout\,
	combout => \Unit1|Unit1|U2|Mux8~3_combout\);

-- Location: LCCOMB_X59_Y41_N6
\Unit1|Unit1|U2|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][7]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[0][7]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][7]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux8~4_combout\);

-- Location: LCCOMB_X58_Y41_N28
\Unit1|Unit1|U2|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~5_combout\ = (\Unit1|Unit1|U2|Mux8~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][7]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux8~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[8][7]~q\ & \Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[12][7]~q\,
	datab => \Unit1|Unit1|U2|Mux8~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[8][7]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux8~5_combout\);

-- Location: LCCOMB_X58_Y40_N30
\Unit1|Unit1|U2|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux8~3_combout\) # ((\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|Mux8~5_combout\ & !\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux8~3_combout\,
	datac => \Unit1|Unit1|U2|Mux8~5_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux8~6_combout\);

-- Location: LCCOMB_X63_Y41_N16
\Unit1|Unit1|U2|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux8~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux8~6_combout\ & (\Unit1|Unit1|U2|Mux8~8_combout\)) # (!\Unit1|Unit1|U2|Mux8~6_combout\ & ((\Unit1|Unit1|U2|Mux8~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux8~8_combout\,
	datab => \Unit1|Unit1|U2|Mux8~1_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit1|U2|Mux8~6_combout\,
	combout => \Unit1|Unit1|U2|Mux8~9_combout\);

-- Location: FF_X63_Y41_N17
\Unit1|Unit1|U2|RFr1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux8~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(7));

-- Location: LCCOMB_X61_Y46_N0
\Unit1|Unit0|U3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux8~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U2|dir_addr\(7)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit1|U2|RFr1\(7),
	datad => \Unit1|Unit0|U2|dir_addr\(7),
	combout => \Unit1|Unit0|U3|Mux8~0_combout\);

-- Location: LCCOMB_X61_Y46_N2
\Unit1|Unit0|U3|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux8~1_combout\ = (\Unit1|Unit0|U3|Mux8~0_combout\) # ((!\Unit1|Unit0|U0|Ms_ctrl\(0) & (!\Unit1|Unit0|U0|Ms_ctrl\(1) & \Unit1|Unit0|U1|tmp_PC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U1|tmp_PC\(7),
	datad => \Unit1|Unit0|U3|Mux8~0_combout\,
	combout => \Unit1|Unit0|U3|Mux8~1_combout\);

-- Location: LCCOMB_X65_Y45_N20
\Unit1|Unit0|U1|tmp_PC[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[8]~30_combout\ = (\Unit1|Unit0|U1|tmp_PC\(8) & (\Unit1|Unit0|U1|tmp_PC[7]~29\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(8) & (!\Unit1|Unit0|U1|tmp_PC[7]~29\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[8]~31\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(8) & !\Unit1|Unit0|U1|tmp_PC[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(8),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[7]~29\,
	combout => \Unit1|Unit0|U1|tmp_PC[8]~30_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[8]~31\);

-- Location: LCCOMB_X65_Y46_N18
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X65_Y45_N21
\Unit1|Unit0|U1|tmp_PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[8]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(8));

-- Location: LCCOMB_X61_Y43_N18
\Unit1|Unit1|U1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux7~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(8))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- ((\Unit1|Unit1|U3|Add0~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	datad => \Unit1|Unit1|U3|Add0~63_combout\,
	combout => \Unit1|Unit1|U1|Mux7~0_combout\);

-- Location: FF_X60_Y40_N9
\Unit1|Unit1|U2|tmp_rf[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][8]~q\);

-- Location: FF_X59_Y40_N17
\Unit1|Unit1|U2|tmp_rf[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][8]~q\);

-- Location: LCCOMB_X59_Y40_N16
\Unit1|Unit1|U2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[9][8]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[8][8]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[8][8]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][8]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux7~0_combout\);

-- Location: FF_X60_Y43_N1
\Unit1|Unit1|U2|tmp_rf[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][8]~q\);

-- Location: FF_X59_Y42_N9
\Unit1|Unit1|U2|tmp_rf[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][8]~q\);

-- Location: LCCOMB_X60_Y43_N0
\Unit1|Unit1|U2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux7~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][8]~q\)) # (!\Unit1|Unit1|U2|Mux7~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[10][8]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux7~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[10][8]~q\,
	combout => \Unit1|Unit1|U2|Mux7~1_combout\);

-- Location: FF_X59_Y43_N1
\Unit1|Unit1|U2|tmp_rf[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][8]~q\);

-- Location: FF_X58_Y43_N3
\Unit1|Unit1|U2|tmp_rf[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][8]~q\);

-- Location: LCCOMB_X59_Y43_N0
\Unit1|Unit1|U2|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[14][8]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- ((\Unit1|Unit1|U2|tmp_rf[12][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[14][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[12][8]~q\,
	combout => \Unit1|Unit1|U2|Mux7~7_combout\);

-- Location: FF_X58_Y43_N9
\Unit1|Unit1|U2|tmp_rf[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][8]~q\);

-- Location: FF_X61_Y43_N19
\Unit1|Unit1|U2|tmp_rf[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][8]~q\);

-- Location: LCCOMB_X58_Y43_N20
\Unit1|Unit1|U2|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux7~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][8]~q\))) # (!\Unit1|Unit1|U2|Mux7~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][8]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux7~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[15][8]~q\,
	combout => \Unit1|Unit1|U2|Mux7~8_combout\);

-- Location: FF_X61_Y40_N21
\Unit1|Unit1|U2|tmp_rf[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][8]~q\);

-- Location: FF_X60_Y39_N31
\Unit1|Unit1|U2|tmp_rf[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][8]~q\);

-- Location: FF_X60_Y40_N3
\Unit1|Unit1|U2|tmp_rf[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][8]~q\);

-- Location: FF_X61_Y40_N19
\Unit1|Unit1|U2|tmp_rf[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][8]~q\);

-- Location: LCCOMB_X61_Y40_N18
\Unit1|Unit1|U2|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[1][8]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[0][8]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][8]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[1][8]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux7~4_combout\);

-- Location: LCCOMB_X60_Y39_N30
\Unit1|Unit1|U2|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~5_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux7~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][8]~q\)) # (!\Unit1|Unit1|U2|Mux7~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[2][8]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (((\Unit1|Unit1|U2|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][8]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[2][8]~q\,
	datad => \Unit1|Unit1|U2|Mux7~4_combout\,
	combout => \Unit1|Unit1|U2|Mux7~5_combout\);

-- Location: FF_X60_Y41_N27
\Unit1|Unit1|U2|tmp_rf[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][8]~q\);

-- Location: FF_X60_Y39_N29
\Unit1|Unit1|U2|tmp_rf[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][8]~q\);

-- Location: LCCOMB_X60_Y39_N28
\Unit1|Unit1|U2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][8]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][8]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[6][8]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux7~2_combout\);

-- Location: FF_X61_Y39_N9
\Unit1|Unit1|U2|tmp_rf[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][8]~q\);

-- Location: FF_X60_Y43_N3
\Unit1|Unit1|U2|tmp_rf[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][8]~q\);

-- Location: LCCOMB_X61_Y39_N8
\Unit1|Unit1|U2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux7~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][8]~q\))) # (!\Unit1|Unit1|U2|Mux7~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][8]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux7~2_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[7][8]~q\,
	combout => \Unit1|Unit1|U2|Mux7~3_combout\);

-- Location: LCCOMB_X61_Y39_N10
\Unit1|Unit1|U2|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit1|U2|Mux7~3_combout\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|Mux7~5_combout\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux7~5_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux7~3_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux7~6_combout\);

-- Location: LCCOMB_X61_Y45_N18
\Unit1|Unit1|U2|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux7~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux7~6_combout\ & ((\Unit1|Unit1|U2|Mux7~8_combout\))) # (!\Unit1|Unit1|U2|Mux7~6_combout\ & (\Unit1|Unit1|U2|Mux7~1_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (((\Unit1|Unit1|U2|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux7~1_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux7~8_combout\,
	datad => \Unit1|Unit1|U2|Mux7~6_combout\,
	combout => \Unit1|Unit1|U2|Mux7~9_combout\);

-- Location: FF_X61_Y45_N19
\Unit1|Unit1|U2|RFr1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux7~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(8));

-- Location: LCCOMB_X65_Y44_N10
\Unit1|Unit0|U3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux7~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit1|U2|RFr1\(8)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (\Unit1|Unit0|U1|tmp_PC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|Unit0|U1|tmp_PC\(8),
	datac => \Unit1|Unit1|U2|RFr1\(8),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(0),
	combout => \Unit1|Unit0|U3|Mux7~0_combout\);

-- Location: FF_X61_Y42_N29
\Unit1|Unit1|U2|tmp_rf[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][9]~q\);

-- Location: FF_X65_Y42_N21
\Unit1|Unit1|U2|tmp_rf[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][9]~q\);

-- Location: LCCOMB_X65_Y42_N20
\Unit1|Unit1|U2|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[7][9]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[3][9]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[7][9]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][9]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux22~7_combout\);

-- Location: FF_X61_Y42_N3
\Unit1|Unit1|U2|tmp_rf[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][9]~q\);

-- Location: LCCOMB_X61_Y42_N2
\Unit1|Unit1|U2|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~8_combout\ = (\Unit1|Unit1|U2|Mux22~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][9]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux22~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][9]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][9]~q\,
	datab => \Unit1|Unit1|U2|Mux22~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][9]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux22~8_combout\);

-- Location: FF_X63_Y42_N29
\Unit1|Unit1|U2|tmp_rf[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][9]~q\);

-- Location: FF_X63_Y43_N9
\Unit1|Unit1|U2|tmp_rf[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][9]~q\);

-- Location: FF_X59_Y42_N11
\Unit1|Unit1|U2|tmp_rf[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][9]~q\);

-- Location: FF_X65_Y42_N27
\Unit1|Unit1|U2|tmp_rf[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][9]~q\);

-- Location: LCCOMB_X65_Y42_N26
\Unit1|Unit1|U2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[10][9]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[2][9]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][9]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[2][9]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux22~0_combout\);

-- Location: LCCOMB_X63_Y43_N8
\Unit1|Unit1|U2|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux22~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][9]~q\)) # (!\Unit1|Unit1|U2|Mux22~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][9]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[14][9]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][9]~q\,
	datad => \Unit1|Unit1|U2|Mux22~0_combout\,
	combout => \Unit1|Unit1|U2|Mux22~1_combout\);

-- Location: FF_X60_Y41_N21
\Unit1|Unit1|U2|tmp_rf[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][9]~q\);

-- Location: FF_X60_Y41_N15
\Unit1|Unit1|U2|tmp_rf[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][9]~q\);

-- Location: FF_X58_Y41_N17
\Unit1|Unit1|U2|tmp_rf[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][9]~q\);

-- Location: FF_X58_Y41_N19
\Unit1|Unit1|U2|tmp_rf[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][9]~q\);

-- Location: LCCOMB_X58_Y41_N18
\Unit1|Unit1|U2|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[8][9]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[8][9]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[0][9]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux22~4_combout\);

-- Location: LCCOMB_X60_Y41_N14
\Unit1|Unit1|U2|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux22~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][9]~q\))) # (!\Unit1|Unit1|U2|Mux22~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[4][9]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][9]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[12][9]~q\,
	datad => \Unit1|Unit1|U2|Mux22~4_combout\,
	combout => \Unit1|Unit1|U2|Mux22~5_combout\);

-- Location: FF_X61_Y40_N15
\Unit1|Unit1|U2|tmp_rf[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][9]~q\);

-- Location: FF_X61_Y39_N5
\Unit1|Unit1|U2|tmp_rf[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][9]~q\);

-- Location: LCCOMB_X61_Y40_N14
\Unit1|Unit1|U2|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|Unit1|U2|tmp_rf[5][9]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[1][9]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][9]~q\,
	combout => \Unit1|Unit1|U2|Mux22~2_combout\);

-- Location: FF_X62_Y40_N29
\Unit1|Unit1|U2|tmp_rf[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][9]~q\);

-- Location: FF_X62_Y40_N19
\Unit1|Unit1|U2|tmp_rf[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][9]~q\);

-- Location: LCCOMB_X62_Y40_N28
\Unit1|Unit1|U2|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~3_combout\ = (\Unit1|Unit1|U2|Mux22~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][9]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3)))) # (!\Unit1|Unit1|U2|Mux22~2_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[9][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux22~2_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[13][9]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[9][9]~q\,
	combout => \Unit1|Unit1|U2|Mux22~3_combout\);

-- Location: LCCOMB_X63_Y43_N18
\Unit1|Unit1|U2|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux22~3_combout\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|Mux22~5_combout\,
	datad => \Unit1|Unit1|U2|Mux22~3_combout\,
	combout => \Unit1|Unit1|U2|Mux22~6_combout\);

-- Location: LCCOMB_X63_Y43_N12
\Unit1|Unit1|U2|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux22~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux22~6_combout\ & (\Unit1|Unit1|U2|Mux22~8_combout\)) # (!\Unit1|Unit1|U2|Mux22~6_combout\ & ((\Unit1|Unit1|U2|Mux22~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux22~8_combout\,
	datac => \Unit1|Unit1|U2|Mux22~1_combout\,
	datad => \Unit1|Unit1|U2|Mux22~6_combout\,
	combout => \Unit1|Unit1|U2|Mux22~9_combout\);

-- Location: FF_X63_Y43_N13
\Unit1|Unit1|U2|RFr2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux22~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(9));

-- Location: LCCOMB_X63_Y45_N16
\Unit1|Unit1|U3|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~64_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(9))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U2|RFr2\(9),
	datad => \Unit1|Unit1|U2|RFr1\(9),
	combout => \Unit1|Unit1|U3|Add0~64_combout\);

-- Location: LCCOMB_X62_Y45_N26
\Unit1|Unit1|U3|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~5_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(9),
	combout => \Unit1|Unit1|U3|Add0~5_combout\);

-- Location: LCCOMB_X63_Y45_N22
\Unit1|Unit1|U3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~6_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(8),
	combout => \Unit1|Unit1|U3|Add0~6_combout\);

-- Location: LCCOMB_X62_Y45_N2
\Unit1|Unit1|U3|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~33_combout\ = (\Unit1|Unit1|U2|RFr1\(8) & ((\Unit1|Unit1|U3|Add0~6_combout\ & (\Unit1|Unit1|U3|Add0~32\ & VCC)) # (!\Unit1|Unit1|U3|Add0~6_combout\ & (!\Unit1|Unit1|U3|Add0~32\)))) # (!\Unit1|Unit1|U2|RFr1\(8) & 
-- ((\Unit1|Unit1|U3|Add0~6_combout\ & (!\Unit1|Unit1|U3|Add0~32\)) # (!\Unit1|Unit1|U3|Add0~6_combout\ & ((\Unit1|Unit1|U3|Add0~32\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~34\ = CARRY((\Unit1|Unit1|U2|RFr1\(8) & (!\Unit1|Unit1|U3|Add0~6_combout\ & !\Unit1|Unit1|U3|Add0~32\)) # (!\Unit1|Unit1|U2|RFr1\(8) & ((!\Unit1|Unit1|U3|Add0~32\) # (!\Unit1|Unit1|U3|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(8),
	datab => \Unit1|Unit1|U3|Add0~6_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~32\,
	combout => \Unit1|Unit1|U3|Add0~33_combout\,
	cout => \Unit1|Unit1|U3|Add0~34\);

-- Location: LCCOMB_X62_Y45_N4
\Unit1|Unit1|U3|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~35_combout\ = ((\Unit1|Unit1|U3|Add0~5_combout\ $ (\Unit1|Unit1|U2|RFr1\(9) $ (!\Unit1|Unit1|U3|Add0~34\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~36\ = CARRY((\Unit1|Unit1|U3|Add0~5_combout\ & ((\Unit1|Unit1|U2|RFr1\(9)) # (!\Unit1|Unit1|U3|Add0~34\))) # (!\Unit1|Unit1|U3|Add0~5_combout\ & (\Unit1|Unit1|U2|RFr1\(9) & !\Unit1|Unit1|U3|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~5_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(9),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~34\,
	combout => \Unit1|Unit1|U3|Add0~35_combout\,
	cout => \Unit1|Unit1|U3|Add0~36\);

-- Location: LCCOMB_X63_Y45_N10
\Unit1|Unit1|U3|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~65_combout\ = (\Unit1|Unit1|U3|Add0~64_combout\) # ((\Unit1|Unit1|U3|Add0~35_combout\ & \Unit1|Unit0|U0|ALUs_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit1|U3|Add0~64_combout\,
	datac => \Unit1|Unit1|U3|Add0~35_combout\,
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|Unit1|U3|Add0~65_combout\);

-- Location: LCCOMB_X61_Y44_N4
\Unit1|Unit1|U1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux6~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0) & (((\Unit1|Unit0|U0|RFs_ctrl\(1)) # (\Unit2|altsyncram_component|auto_generated|q_a\(9))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit1|Unit1|U3|Add0~65_combout\ & 
-- (!\Unit1|Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~65_combout\,
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	combout => \Unit1|Unit1|U1|Mux6~0_combout\);

-- Location: FF_X61_Y44_N5
\Unit1|Unit1|U2|tmp_rf[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][9]~q\);

-- Location: LCCOMB_X61_Y42_N28
\Unit1|Unit1|U2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|Unit1|U2|tmp_rf[7][9]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[3][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[7][9]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[3][9]~q\,
	combout => \Unit1|Unit1|U2|Mux6~7_combout\);

-- Location: LCCOMB_X61_Y42_N22
\Unit1|Unit1|U2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux6~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][9]~q\)) # (!\Unit1|Unit1|U2|Mux6~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][9]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (((\Unit1|Unit1|U2|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][9]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[11][9]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|Unit1|U2|Mux6~7_combout\,
	combout => \Unit1|Unit1|U2|Mux6~8_combout\);

-- Location: LCCOMB_X59_Y42_N10
\Unit1|Unit1|U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit0|U0|RFr1a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[10][9]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[2][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[10][9]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[2][9]~q\,
	combout => \Unit1|Unit1|U2|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y42_N28
\Unit1|Unit1|U2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux6~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][9]~q\)) # (!\Unit1|Unit1|U2|Mux6~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][9]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux6~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][9]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[6][9]~q\,
	combout => \Unit1|Unit1|U2|Mux6~1_combout\);

-- Location: LCCOMB_X58_Y41_N16
\Unit1|Unit1|U2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[8][9]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][9]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[8][9]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux6~4_combout\);

-- Location: LCCOMB_X60_Y41_N20
\Unit1|Unit1|U2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~5_combout\ = (\Unit1|Unit1|U2|Mux6~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][9]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux6~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[4][9]~q\ & \Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux6~4_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[12][9]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][9]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux6~5_combout\);

-- Location: LCCOMB_X61_Y39_N4
\Unit1|Unit1|U2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[5][9]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[1][9]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][9]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[5][9]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux6~2_combout\);

-- Location: LCCOMB_X62_Y40_N18
\Unit1|Unit1|U2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux6~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][9]~q\)) # (!\Unit1|Unit1|U2|Mux6~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][9]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (((\Unit1|Unit1|U2|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[13][9]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][9]~q\,
	datad => \Unit1|Unit1|U2|Mux6~2_combout\,
	combout => \Unit1|Unit1|U2|Mux6~3_combout\);

-- Location: LCCOMB_X63_Y40_N22
\Unit1|Unit1|U2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|Unit1|U2|Mux6~3_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux6~5_combout\,
	datad => \Unit1|Unit1|U2|Mux6~3_combout\,
	combout => \Unit1|Unit1|U2|Mux6~6_combout\);

-- Location: LCCOMB_X63_Y45_N18
\Unit1|Unit1|U2|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux6~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux6~6_combout\ & (\Unit1|Unit1|U2|Mux6~8_combout\)) # (!\Unit1|Unit1|U2|Mux6~6_combout\ & ((\Unit1|Unit1|U2|Mux6~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (((\Unit1|Unit1|U2|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux6~8_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux6~1_combout\,
	datad => \Unit1|Unit1|U2|Mux6~6_combout\,
	combout => \Unit1|Unit1|U2|Mux6~9_combout\);

-- Location: FF_X63_Y45_N19
\Unit1|Unit1|U2|RFr1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux6~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(9));

-- Location: LCCOMB_X65_Y45_N22
\Unit1|Unit0|U1|tmp_PC[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[9]~32_combout\ = (\Unit1|Unit0|U1|tmp_PC\(9) & (!\Unit1|Unit0|U1|tmp_PC[8]~31\)) # (!\Unit1|Unit0|U1|tmp_PC\(9) & ((\Unit1|Unit0|U1|tmp_PC[8]~31\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[9]~33\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[8]~31\) # (!\Unit1|Unit0|U1|tmp_PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(9),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[8]~31\,
	combout => \Unit1|Unit0|U1|tmp_PC[9]~32_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[9]~33\);

-- Location: FF_X65_Y45_N23
\Unit1|Unit0|U1|tmp_PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[9]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(9));

-- Location: LCCOMB_X66_Y45_N22
\Unit1|Unit0|U3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux6~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U0|Ms_ctrl\(1) & (\Unit1|Unit1|U2|RFr1\(9))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U1|tmp_PC\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(9),
	datab => \Unit1|Unit0|U1|tmp_PC\(9),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(0),
	combout => \Unit1|Unit0|U3|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y43_N4
\Unit1|Unit1|U1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux5~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(10))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- ((\Unit1|Unit1|U3|Add0~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	datad => \Unit1|Unit1|U3|Add0~59_combout\,
	combout => \Unit1|Unit1|U1|Mux5~0_combout\);

-- Location: FF_X61_Y43_N5
\Unit1|Unit1|U2|tmp_rf[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][10]~q\);

-- Location: FF_X59_Y43_N19
\Unit1|Unit1|U2|tmp_rf[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][10]~q\);

-- Location: FF_X58_Y43_N25
\Unit1|Unit1|U2|tmp_rf[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][10]~q\);

-- Location: FF_X58_Y43_N7
\Unit1|Unit1|U2|tmp_rf[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][10]~q\);

-- Location: LCCOMB_X58_Y43_N6
\Unit1|Unit1|U2|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[13][10]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[12][10]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[12][10]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][10]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux5~7_combout\);

-- Location: LCCOMB_X58_Y43_N26
\Unit1|Unit1|U2|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~8_combout\ = (\Unit1|Unit1|U2|Mux5~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][10]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux5~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][10]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][10]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[14][10]~q\,
	datac => \Unit1|Unit1|U2|Mux5~7_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux5~8_combout\);

-- Location: FF_X59_Y41_N19
\Unit1|Unit1|U2|tmp_rf[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][10]~q\);

-- Location: FF_X62_Y41_N11
\Unit1|Unit1|U2|tmp_rf[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][10]~q\);

-- Location: LCCOMB_X62_Y41_N10
\Unit1|Unit1|U2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[5][10]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[4][10]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][10]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[5][10]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux5~0_combout\);

-- Location: FF_X60_Y43_N5
\Unit1|Unit1|U2|tmp_rf[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][10]~q\);

-- Location: FF_X60_Y39_N25
\Unit1|Unit1|U2|tmp_rf[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][10]~q\);

-- Location: LCCOMB_X60_Y43_N4
\Unit1|Unit1|U2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux5~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[7][10]~q\)) # (!\Unit1|Unit1|U2|Mux5~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][10]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux5~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][10]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[6][10]~q\,
	combout => \Unit1|Unit1|U2|Mux5~1_combout\);

-- Location: FF_X60_Y40_N7
\Unit1|Unit1|U2|tmp_rf[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][10]~q\);

-- Location: LCCOMB_X60_Y39_N10
\Unit1|Unit1|U2|tmp_rf[2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[2][10]~feeder_combout\ = \Unit1|Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[2][10]~feeder_combout\);

-- Location: FF_X60_Y39_N11
\Unit1|Unit1|U2|tmp_rf[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[2][10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][10]~q\);

-- Location: LCCOMB_X60_Y39_N12
\Unit1|Unit1|U2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][10]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][10]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[2][10]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux5~4_combout\);

-- Location: FF_X60_Y42_N7
\Unit1|Unit1|U2|tmp_rf[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][10]~q\);

-- Location: FF_X61_Y39_N7
\Unit1|Unit1|U2|tmp_rf[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][10]~q\);

-- Location: LCCOMB_X61_Y39_N6
\Unit1|Unit1|U2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~5_combout\ = (\Unit1|Unit1|U2|Mux5~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[3][10]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux5~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[1][10]~q\ & \Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux5~4_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[3][10]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][10]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux5~5_combout\);

-- Location: LCCOMB_X60_Y42_N20
\Unit1|Unit1|U2|tmp_rf[11][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[11][10]~feeder_combout\ = \Unit1|Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[11][10]~feeder_combout\);

-- Location: FF_X60_Y42_N21
\Unit1|Unit1|U2|tmp_rf[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[11][10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][10]~q\);

-- Location: FF_X59_Y40_N27
\Unit1|Unit1|U2|tmp_rf[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][10]~q\);

-- Location: LCCOMB_X58_Y40_N16
\Unit1|Unit1|U2|tmp_rf[10][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[10][10]~feeder_combout\ = \Unit1|Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[10][10]~feeder_combout\);

-- Location: FF_X58_Y40_N17
\Unit1|Unit1|U2|tmp_rf[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[10][10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][10]~q\);

-- Location: FF_X60_Y40_N29
\Unit1|Unit1|U2|tmp_rf[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][10]~q\);

-- Location: LCCOMB_X58_Y40_N2
\Unit1|Unit1|U2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[10][10]~q\) # ((\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[8][10]~q\ & !\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][10]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[8][10]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux5~2_combout\);

-- Location: LCCOMB_X59_Y40_N26
\Unit1|Unit1|U2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux5~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][10]~q\)) # (!\Unit1|Unit1|U2|Mux5~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][10]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[11][10]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[9][10]~q\,
	datad => \Unit1|Unit1|U2|Mux5~2_combout\,
	combout => \Unit1|Unit1|U2|Mux5~3_combout\);

-- Location: LCCOMB_X61_Y39_N0
\Unit1|Unit1|U2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux5~3_combout\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux5~5_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux5~3_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux5~6_combout\);

-- Location: LCCOMB_X63_Y45_N28
\Unit1|Unit1|U2|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux5~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux5~6_combout\ & (\Unit1|Unit1|U2|Mux5~8_combout\)) # (!\Unit1|Unit1|U2|Mux5~6_combout\ & ((\Unit1|Unit1|U2|Mux5~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (((\Unit1|Unit1|U2|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux5~8_combout\,
	datab => \Unit1|Unit1|U2|Mux5~1_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux5~6_combout\,
	combout => \Unit1|Unit1|U2|Mux5~9_combout\);

-- Location: FF_X63_Y45_N29
\Unit1|Unit1|U2|RFr1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux5~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(10));

-- Location: LCCOMB_X65_Y45_N24
\Unit1|Unit0|U1|tmp_PC[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[10]~34_combout\ = (\Unit1|Unit0|U1|tmp_PC\(10) & (\Unit1|Unit0|U1|tmp_PC[9]~33\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(10) & (!\Unit1|Unit0|U1|tmp_PC[9]~33\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[10]~35\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(10) & !\Unit1|Unit0|U1|tmp_PC[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(10),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[9]~33\,
	combout => \Unit1|Unit0|U1|tmp_PC[10]~34_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[10]~35\);

-- Location: FF_X65_Y45_N25
\Unit1|Unit0|U1|tmp_PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[10]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(10));

-- Location: LCCOMB_X65_Y44_N12
\Unit1|Unit0|U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux5~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U0|Ms_ctrl\(1) & (\Unit1|Unit1|U2|RFr1\(10))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U1|tmp_PC\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|Unit1|U2|RFr1\(10),
	datac => \Unit1|Unit0|U1|tmp_PC\(10),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(0),
	combout => \Unit1|Unit0|U3|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y45_N26
\Unit1|Unit0|U1|tmp_PC[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[11]~36_combout\ = \Unit1|Unit0|U1|tmp_PC\(11) $ (\Unit1|Unit0|U1|tmp_PC[10]~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(11),
	cin => \Unit1|Unit0|U1|tmp_PC[10]~35\,
	combout => \Unit1|Unit0|U1|tmp_PC[11]~36_combout\);

-- Location: FF_X65_Y45_N27
\Unit1|Unit0|U1|tmp_PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[11]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(11));

-- Location: FF_X60_Y42_N1
\Unit1|Unit1|U2|tmp_rf[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][11]~q\);

-- Location: FF_X60_Y42_N3
\Unit1|Unit1|U2|tmp_rf[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][11]~q\);

-- Location: LCCOMB_X60_Y42_N2
\Unit1|Unit1|U2|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[11][11]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[3][11]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[11][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][11]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux20~7_combout\);

-- Location: FF_X61_Y44_N31
\Unit1|Unit1|U2|tmp_rf[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][11]~q\);

-- Location: FF_X61_Y42_N9
\Unit1|Unit1|U2|tmp_rf[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][11]~q\);

-- Location: LCCOMB_X61_Y42_N8
\Unit1|Unit1|U2|Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~8_combout\ = (\Unit1|Unit1|U2|Mux20~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][11]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux20~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][11]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux20~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][11]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux20~8_combout\);

-- Location: FF_X59_Y41_N5
\Unit1|Unit1|U2|tmp_rf[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][11]~q\);

-- Location: FF_X58_Y41_N23
\Unit1|Unit1|U2|tmp_rf[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][11]~q\);

-- Location: LCCOMB_X58_Y41_N22
\Unit1|Unit1|U2|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[4][11]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][11]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[0][11]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux20~4_combout\);

-- Location: FF_X59_Y41_N23
\Unit1|Unit1|U2|tmp_rf[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][11]~q\);

-- Location: FF_X58_Y41_N13
\Unit1|Unit1|U2|tmp_rf[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][11]~q\);

-- Location: LCCOMB_X59_Y41_N22
\Unit1|Unit1|U2|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux20~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[12][11]~q\)) # (!\Unit1|Unit1|U2|Mux20~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[8][11]~q\))))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|Mux20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux20~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][11]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[8][11]~q\,
	combout => \Unit1|Unit1|U2|Mux20~5_combout\);

-- Location: FF_X65_Y43_N9
\Unit1|Unit1|U2|tmp_rf[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][11]~q\);

-- Location: FF_X62_Y43_N19
\Unit1|Unit1|U2|tmp_rf[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][11]~q\);

-- Location: LCCOMB_X65_Y42_N14
\Unit1|Unit1|U2|tmp_rf[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[2][11]~feeder_combout\ = \Unit1|Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[2][11]~feeder_combout\);

-- Location: FF_X65_Y42_N15
\Unit1|Unit1|U2|tmp_rf[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[2][11]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][11]~q\);

-- Location: LCCOMB_X65_Y43_N2
\Unit1|Unit1|U2|tmp_rf[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[6][11]~feeder_combout\ = \Unit1|Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[6][11]~feeder_combout\);

-- Location: FF_X65_Y43_N3
\Unit1|Unit1|U2|tmp_rf[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[6][11]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][11]~q\);

-- Location: LCCOMB_X65_Y42_N28
\Unit1|Unit1|U2|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[6][11]~q\) # (\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[2][11]~q\ & ((!\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[2][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][11]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux20~2_combout\);

-- Location: LCCOMB_X62_Y43_N18
\Unit1|Unit1|U2|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux20~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[14][11]~q\))) # (!\Unit1|Unit1|U2|Mux20~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][11]~q\)))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[10][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][11]~q\,
	datad => \Unit1|Unit1|U2|Mux20~2_combout\,
	combout => \Unit1|Unit1|U2|Mux20~3_combout\);

-- Location: LCCOMB_X59_Y43_N30
\Unit1|Unit1|U2|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|Mux20~3_combout\) # (\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|Mux20~5_combout\ & ((!\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux20~5_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux20~3_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux20~6_combout\);

-- Location: FF_X61_Y40_N1
\Unit1|Unit1|U2|tmp_rf[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][11]~q\);

-- Location: FF_X62_Y40_N15
\Unit1|Unit1|U2|tmp_rf[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][11]~q\);

-- Location: LCCOMB_X61_Y40_N0
\Unit1|Unit1|U2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[9][11]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[1][11]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[9][11]~q\,
	combout => \Unit1|Unit1|U2|Mux20~0_combout\);

-- Location: FF_X62_Y40_N17
\Unit1|Unit1|U2|tmp_rf[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][11]~q\);

-- Location: LCCOMB_X62_Y41_N28
\Unit1|Unit1|U2|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~1_combout\ = (\Unit1|Unit1|U2|Mux20~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][11]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux20~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[5][11]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux20~0_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[13][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][11]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux20~1_combout\);

-- Location: LCCOMB_X62_Y41_N24
\Unit1|Unit1|U2|Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux20~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux20~6_combout\ & (\Unit1|Unit1|U2|Mux20~8_combout\)) # (!\Unit1|Unit1|U2|Mux20~6_combout\ & ((\Unit1|Unit1|U2|Mux20~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux20~8_combout\,
	datac => \Unit1|Unit1|U2|Mux20~6_combout\,
	datad => \Unit1|Unit1|U2|Mux20~1_combout\,
	combout => \Unit1|Unit1|U2|Mux20~9_combout\);

-- Location: FF_X62_Y41_N25
\Unit1|Unit1|U2|RFr2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux20~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(11));

-- Location: LCCOMB_X62_Y41_N26
\Unit1|Unit1|U3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~3_combout\ = \Unit1|Unit1|U2|RFr2\(11) $ (\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit1|U2|RFr2\(11),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~3_combout\);

-- Location: LCCOMB_X62_Y45_N6
\Unit1|Unit1|U3|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~37_combout\ = (\Unit1|Unit1|U3|Add0~4_combout\ & ((\Unit1|Unit1|U2|RFr1\(10) & (\Unit1|Unit1|U3|Add0~36\ & VCC)) # (!\Unit1|Unit1|U2|RFr1\(10) & (!\Unit1|Unit1|U3|Add0~36\)))) # (!\Unit1|Unit1|U3|Add0~4_combout\ & 
-- ((\Unit1|Unit1|U2|RFr1\(10) & (!\Unit1|Unit1|U3|Add0~36\)) # (!\Unit1|Unit1|U2|RFr1\(10) & ((\Unit1|Unit1|U3|Add0~36\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~38\ = CARRY((\Unit1|Unit1|U3|Add0~4_combout\ & (!\Unit1|Unit1|U2|RFr1\(10) & !\Unit1|Unit1|U3|Add0~36\)) # (!\Unit1|Unit1|U3|Add0~4_combout\ & ((!\Unit1|Unit1|U3|Add0~36\) # (!\Unit1|Unit1|U2|RFr1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~4_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(10),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~36\,
	combout => \Unit1|Unit1|U3|Add0~37_combout\,
	cout => \Unit1|Unit1|U3|Add0~38\);

-- Location: LCCOMB_X62_Y45_N8
\Unit1|Unit1|U3|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~39_combout\ = ((\Unit1|Unit1|U3|Add0~3_combout\ $ (\Unit1|Unit1|U2|RFr1\(11) $ (!\Unit1|Unit1|U3|Add0~38\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~40\ = CARRY((\Unit1|Unit1|U3|Add0~3_combout\ & ((\Unit1|Unit1|U2|RFr1\(11)) # (!\Unit1|Unit1|U3|Add0~38\))) # (!\Unit1|Unit1|U3|Add0~3_combout\ & (\Unit1|Unit1|U2|RFr1\(11) & !\Unit1|Unit1|U3|Add0~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~3_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(11),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~38\,
	combout => \Unit1|Unit1|U3|Add0~39_combout\,
	cout => \Unit1|Unit1|U3|Add0~40\);

-- Location: LCCOMB_X62_Y41_N20
\Unit1|Unit1|U3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~60_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(11))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr2\(11),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(11),
	combout => \Unit1|Unit1|U3|Add0~60_combout\);

-- Location: LCCOMB_X62_Y45_N18
\Unit1|Unit1|U3|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~61_combout\ = (\Unit1|Unit1|U3|Add0~60_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~39_combout\,
	datad => \Unit1|Unit1|U3|Add0~60_combout\,
	combout => \Unit1|Unit1|U3|Add0~61_combout\);

-- Location: LCCOMB_X61_Y44_N30
\Unit1|Unit1|U1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux4~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(11))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- ((\Unit1|Unit1|U3|Add0~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	datad => \Unit1|Unit1|U3|Add0~61_combout\,
	combout => \Unit1|Unit1|U1|Mux4~0_combout\);

-- Location: FF_X62_Y41_N29
\Unit1|Unit1|U2|tmp_rf[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][11]~q\);

-- Location: LCCOMB_X62_Y40_N14
\Unit1|Unit1|U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[9][11]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[1][11]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][11]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[9][11]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y40_N16
\Unit1|Unit1|U2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~1_combout\ = (\Unit1|Unit1|U2|Mux4~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][11]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux4~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][11]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[5][11]~q\,
	datab => \Unit1|Unit1|U2|Mux4~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][11]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux4~1_combout\);

-- Location: LCCOMB_X60_Y42_N0
\Unit1|Unit1|U2|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|Unit1|U2|tmp_rf[11][11]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[3][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[11][11]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[3][11]~q\,
	combout => \Unit1|Unit1|U2|Mux4~7_combout\);

-- Location: LCCOMB_X60_Y42_N28
\Unit1|Unit1|U2|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux4~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][11]~q\)) # (!\Unit1|Unit1|U2|Mux4~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][11]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (((\Unit1|Unit1|U2|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][11]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[7][11]~q\,
	datad => \Unit1|Unit1|U2|Mux4~7_combout\,
	combout => \Unit1|Unit1|U2|Mux4~8_combout\);

-- Location: LCCOMB_X59_Y41_N4
\Unit1|Unit1|U2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][11]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[0][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][11]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux4~4_combout\);

-- Location: LCCOMB_X58_Y41_N12
\Unit1|Unit1|U2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~5_combout\ = (\Unit1|Unit1|U2|Mux4~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][11]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux4~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[8][11]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux4~4_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[12][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[8][11]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux4~5_combout\);

-- Location: LCCOMB_X65_Y43_N28
\Unit1|Unit1|U2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[6][11]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[2][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[6][11]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|Unit1|U2|tmp_rf[2][11]~q\,
	combout => \Unit1|Unit1|U2|Mux4~2_combout\);

-- Location: LCCOMB_X65_Y43_N8
\Unit1|Unit1|U2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux4~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][11]~q\)) # (!\Unit1|Unit1|U2|Mux4~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[10][11]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[14][11]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][11]~q\,
	datad => \Unit1|Unit1|U2|Mux4~2_combout\,
	combout => \Unit1|Unit1|U2|Mux4~3_combout\);

-- Location: LCCOMB_X63_Y41_N2
\Unit1|Unit1|U2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(0)) # (\Unit1|Unit1|U2|Mux4~3_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|Mux4~5_combout\ & (!\Unit1|Unit0|U0|RFr1a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux4~5_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit1|U2|Mux4~3_combout\,
	combout => \Unit1|Unit1|U2|Mux4~6_combout\);

-- Location: LCCOMB_X63_Y45_N30
\Unit1|Unit1|U2|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux4~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux4~6_combout\ & ((\Unit1|Unit1|U2|Mux4~8_combout\))) # (!\Unit1|Unit1|U2|Mux4~6_combout\ & (\Unit1|Unit1|U2|Mux4~1_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux4~1_combout\,
	datac => \Unit1|Unit1|U2|Mux4~8_combout\,
	datad => \Unit1|Unit1|U2|Mux4~6_combout\,
	combout => \Unit1|Unit1|U2|Mux4~9_combout\);

-- Location: FF_X63_Y45_N31
\Unit1|Unit1|U2|RFr1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux4~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(11));

-- Location: LCCOMB_X65_Y44_N22
\Unit1|Unit0|U3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux4~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit1|U2|RFr1\(11)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (\Unit1|Unit0|U1|tmp_PC\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|Unit0|U1|tmp_PC\(11),
	datac => \Unit1|Unit1|U2|RFr1\(11),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(0),
	combout => \Unit1|Unit0|U3|Mux4~0_combout\);

-- Location: M9K_X64_Y43_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y43_N22
\Unit1|Unit0|U2|dir_addr[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(7) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(7)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|dir_addr\(7),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	combout => \Unit1|Unit0|U2|dir_addr\(7));

-- Location: LCCOMB_X62_Y44_N22
\Unit1|Unit0|U0|IR_PS2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[7]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U2|dir_addr\(7),
	combout => \Unit1|Unit0|U0|IR_PS2[7]~feeder_combout\);

-- Location: FF_X62_Y44_N23
\Unit1|Unit0|U0|IR_PS2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[7]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(7));

-- Location: LCCOMB_X62_Y44_N30
\Unit1|Unit0|U0|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector63~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\ & (((\Unit1|Unit0|U0|IR_PS2\(7))))) # (!\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|state.S25a~q\ & ((\Unit1|Unit0|U0|IR_PS2\(7)))) # (!\Unit1|Unit0|U0|state.S25a~q\ & 
-- (\Unit1|Unit0|U0|IR_PS2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(11),
	datab => \Unit1|Unit0|U0|state.S26a~q\,
	datac => \Unit1|Unit0|U0|IR_PS2\(7),
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|Selector63~0_combout\);

-- Location: FF_X62_Y44_N31
\Unit1|Unit0|U0|RFr1a_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector63~0_combout\,
	ena => \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr1a_ctrl\(3));

-- Location: FF_X60_Y40_N25
\Unit1|Unit1|U2|tmp_rf[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][4]~q\);

-- Location: FF_X59_Y40_N31
\Unit1|Unit1|U2|tmp_rf[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][4]~q\);

-- Location: LCCOMB_X59_Y40_N30
\Unit1|Unit1|U2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[9][4]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[8][4]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[8][4]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][4]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux11~0_combout\);

-- Location: FF_X59_Y42_N19
\Unit1|Unit1|U2|tmp_rf[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][4]~q\);

-- Location: FF_X60_Y43_N13
\Unit1|Unit1|U2|tmp_rf[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][4]~q\);

-- Location: LCCOMB_X60_Y43_N12
\Unit1|Unit1|U2|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~1_combout\ = (\Unit1|Unit1|U2|Mux11~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][4]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux11~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][4]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux11~0_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[10][4]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][4]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux11~1_combout\);

-- Location: FF_X60_Y43_N15
\Unit1|Unit1|U2|tmp_rf[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][4]~q\);

-- Location: FF_X59_Y43_N29
\Unit1|Unit1|U2|tmp_rf[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][4]~q\);

-- Location: LCCOMB_X60_Y41_N16
\Unit1|Unit1|U2|tmp_rf[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[4][4]~feeder_combout\ = \Unit1|Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[4][4]~feeder_combout\);

-- Location: FF_X60_Y41_N17
\Unit1|Unit1|U2|tmp_rf[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[4][4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][4]~q\);

-- Location: LCCOMB_X61_Y44_N18
\Unit1|Unit1|U2|tmp_rf[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[6][4]~feeder_combout\ = \Unit1|Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[6][4]~feeder_combout\);

-- Location: FF_X61_Y44_N19
\Unit1|Unit1|U2|tmp_rf[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[6][4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][4]~q\);

-- Location: LCCOMB_X61_Y44_N28
\Unit1|Unit1|U2|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[6][4]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[4][4]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][4]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[6][4]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux11~2_combout\);

-- Location: LCCOMB_X59_Y43_N28
\Unit1|Unit1|U2|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux11~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[7][4]~q\)) # (!\Unit1|Unit1|U2|Mux11~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[5][4]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[7][4]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][4]~q\,
	datad => \Unit1|Unit1|U2|Mux11~2_combout\,
	combout => \Unit1|Unit1|U2|Mux11~3_combout\);

-- Location: FF_X63_Y40_N13
\Unit1|Unit1|U2|tmp_rf[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][4]~q\);

-- Location: FF_X60_Y40_N27
\Unit1|Unit1|U2|tmp_rf[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][4]~q\);

-- Location: FF_X61_Y40_N17
\Unit1|Unit1|U2|tmp_rf[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][4]~q\);

-- Location: LCCOMB_X61_Y40_N16
\Unit1|Unit1|U2|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[1][4]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[0][4]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][4]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[1][4]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux11~4_combout\);

-- Location: FF_X63_Y40_N27
\Unit1|Unit1|U2|tmp_rf[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][4]~q\);

-- Location: LCCOMB_X63_Y40_N26
\Unit1|Unit1|U2|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~5_combout\ = (\Unit1|Unit1|U2|Mux11~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[3][4]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux11~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[2][4]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][4]~q\,
	datab => \Unit1|Unit1|U2|Mux11~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[2][4]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux11~5_combout\);

-- Location: LCCOMB_X59_Y43_N6
\Unit1|Unit1|U2|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|Mux11~3_combout\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux11~3_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux11~5_combout\,
	combout => \Unit1|Unit1|U2|Mux11~6_combout\);

-- Location: LCCOMB_X61_Y45_N0
\Unit1|Unit1|U2|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux11~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux11~6_combout\ & (\Unit1|Unit1|U2|Mux11~8_combout\)) # (!\Unit1|Unit1|U2|Mux11~6_combout\ & ((\Unit1|Unit1|U2|Mux11~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux11~8_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux11~1_combout\,
	datad => \Unit1|Unit1|U2|Mux11~6_combout\,
	combout => \Unit1|Unit1|U2|Mux11~9_combout\);

-- Location: FF_X61_Y45_N1
\Unit1|Unit1|U2|RFr1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux11~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(4));

-- Location: LCCOMB_X61_Y46_N16
\Unit1|Unit0|U3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux11~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U2|dir_addr\(4)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr1\(4),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U2|dir_addr\(4),
	combout => \Unit1|Unit0|U3|Mux11~0_combout\);

-- Location: LCCOMB_X61_Y46_N18
\Unit1|Unit0|U3|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux11~1_combout\ = (\Unit1|Unit0|U3|Mux11~0_combout\) # ((!\Unit1|Unit0|U0|Ms_ctrl\(0) & (!\Unit1|Unit0|U0|Ms_ctrl\(1) & \Unit1|Unit0|U1|tmp_PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U1|tmp_PC\(4),
	datad => \Unit1|Unit0|U3|Mux11~0_combout\,
	combout => \Unit1|Unit0|U3|Mux11~1_combout\);

-- Location: M9K_X64_Y47_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555555555555555555555545555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555155555555555555555555555555555555555555555555555555555555555555555500000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y43_N10
\Unit1|Unit0|U2|dir_addr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(2) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(2)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|dir_addr\(2),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	datad => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	combout => \Unit1|Unit0|U2|dir_addr\(2));

-- Location: LCCOMB_X61_Y43_N28
\Unit1|Unit1|U1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux13~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0)) # ((\Unit1|Unit0|U2|dir_addr\(2))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- (\Unit2|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	datad => \Unit1|Unit0|U2|dir_addr\(2),
	combout => \Unit1|Unit1|U1|Mux13~0_combout\);

-- Location: LCCOMB_X61_Y43_N26
\Unit1|Unit1|U1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux13~1_combout\ = (\Unit1|Unit1|U1|Mux13~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(1) & (!\Unit1|Unit0|U0|RFs_ctrl\(0) & \Unit1|Unit1|U3|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit1|U3|Add0~74_combout\,
	datad => \Unit1|Unit1|U1|Mux13~0_combout\,
	combout => \Unit1|Unit1|U1|Mux13~1_combout\);

-- Location: FF_X58_Y40_N19
\Unit1|Unit1|U2|tmp_rf[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][2]~q\);

-- Location: FF_X59_Y40_N19
\Unit1|Unit1|U2|tmp_rf[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][2]~q\);

-- Location: FF_X60_Y40_N21
\Unit1|Unit1|U2|tmp_rf[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][2]~q\);

-- Location: FF_X58_Y40_N9
\Unit1|Unit1|U2|tmp_rf[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][2]~q\);

-- Location: LCCOMB_X58_Y40_N8
\Unit1|Unit1|U2|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[10][2]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[8][2]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[8][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][2]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux13~2_combout\);

-- Location: LCCOMB_X59_Y40_N18
\Unit1|Unit1|U2|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux13~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][2]~q\)) # (!\Unit1|Unit1|U2|Mux13~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][2]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[11][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][2]~q\,
	datad => \Unit1|Unit1|U2|Mux13~2_combout\,
	combout => \Unit1|Unit1|U2|Mux13~3_combout\);

-- Location: FF_X61_Y40_N27
\Unit1|Unit1|U2|tmp_rf[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][2]~q\);

-- Location: FF_X61_Y40_N9
\Unit1|Unit1|U2|tmp_rf[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][2]~q\);

-- Location: FF_X60_Y40_N31
\Unit1|Unit1|U2|tmp_rf[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][2]~q\);

-- Location: FF_X60_Y39_N27
\Unit1|Unit1|U2|tmp_rf[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][2]~q\);

-- Location: LCCOMB_X60_Y39_N26
\Unit1|Unit1|U2|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][2]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][2]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[2][2]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux13~4_combout\);

-- Location: LCCOMB_X61_Y40_N8
\Unit1|Unit1|U2|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~5_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux13~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][2]~q\)) # (!\Unit1|Unit1|U2|Mux13~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[1][2]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][2]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[1][2]~q\,
	datad => \Unit1|Unit1|U2|Mux13~4_combout\,
	combout => \Unit1|Unit1|U2|Mux13~5_combout\);

-- Location: LCCOMB_X59_Y40_N28
\Unit1|Unit1|U2|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux13~3_combout\) # ((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit1|U2|Mux13~5_combout\ & !\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux13~3_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux13~5_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux13~6_combout\);

-- Location: FF_X61_Y43_N27
\Unit1|Unit1|U2|tmp_rf[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][2]~q\);

-- Location: FF_X62_Y43_N9
\Unit1|Unit1|U2|tmp_rf[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][2]~q\);

-- Location: FF_X58_Y43_N31
\Unit1|Unit1|U2|tmp_rf[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][2]~q\);

-- Location: FF_X58_Y43_N5
\Unit1|Unit1|U2|tmp_rf[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][2]~q\);

-- Location: LCCOMB_X58_Y43_N4
\Unit1|Unit1|U2|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[13][2]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[12][2]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[12][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][2]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux13~7_combout\);

-- Location: LCCOMB_X61_Y43_N20
\Unit1|Unit1|U2|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux13~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][2]~q\)) # (!\Unit1|Unit1|U2|Mux13~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[14][2]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][2]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[14][2]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|Unit1|U2|Mux13~7_combout\,
	combout => \Unit1|Unit1|U2|Mux13~8_combout\);

-- Location: FF_X61_Y43_N25
\Unit1|Unit1|U2|tmp_rf[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][2]~q\);

-- Location: FF_X60_Y43_N27
\Unit1|Unit1|U2|tmp_rf[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][2]~q\);

-- Location: FF_X60_Y41_N23
\Unit1|Unit1|U2|tmp_rf[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][2]~q\);

-- Location: FF_X59_Y43_N9
\Unit1|Unit1|U2|tmp_rf[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][2]~q\);

-- Location: LCCOMB_X59_Y43_N8
\Unit1|Unit1|U2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[5][2]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[4][2]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[4][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][2]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux13~0_combout\);

-- Location: LCCOMB_X60_Y43_N26
\Unit1|Unit1|U2|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux13~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][2]~q\))) # (!\Unit1|Unit1|U2|Mux13~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[6][2]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (((\Unit1|Unit1|U2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[6][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][2]~q\,
	datad => \Unit1|Unit1|U2|Mux13~0_combout\,
	combout => \Unit1|Unit1|U2|Mux13~1_combout\);

-- Location: LCCOMB_X62_Y42_N26
\Unit1|Unit1|U2|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux13~9_combout\ = (\Unit1|Unit1|U2|Mux13~6_combout\ & ((\Unit1|Unit1|U2|Mux13~8_combout\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux13~6_combout\ & (((\Unit1|Unit1|U2|Mux13~1_combout\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux13~6_combout\,
	datab => \Unit1|Unit1|U2|Mux13~8_combout\,
	datac => \Unit1|Unit1|U2|Mux13~1_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux13~9_combout\);

-- Location: FF_X62_Y42_N27
\Unit1|Unit1|U2|RFr1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux13~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(2));

-- Location: LCCOMB_X62_Y46_N14
\Unit1|Unit1|U3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~12_combout\ = \Unit1|Unit1|U2|RFr2\(2) $ (\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|RFr2\(2),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~12_combout\);

-- Location: LCCOMB_X65_Y44_N26
\Unit1|Unit1|U3|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~71_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr2\(1)))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr1\(1),
	datac => \Unit1|Unit1|U2|RFr2\(1),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|Unit1|U3|Add0~71_combout\);

-- Location: FF_X58_Y43_N19
\Unit1|Unit1|U2|tmp_rf[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][0]~q\);

-- Location: FF_X61_Y46_N13
\Unit1|Unit1|U2|tmp_rf[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][0]~q\);

-- Location: LCCOMB_X61_Y46_N12
\Unit1|Unit1|U2|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[14][0]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[12][0]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[12][0]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[14][0]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux15~7_combout\);

-- Location: FF_X58_Y43_N17
\Unit1|Unit1|U2|tmp_rf[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][0]~q\);

-- Location: FF_X61_Y46_N15
\Unit1|Unit1|U2|tmp_rf[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][0]~q\);

-- Location: LCCOMB_X61_Y46_N14
\Unit1|Unit1|U2|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~8_combout\ = (\Unit1|Unit1|U2|Mux15~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[15][0]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux15~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][0]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux15~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[13][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[15][0]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux15~8_combout\);

-- Location: FF_X60_Y42_N11
\Unit1|Unit1|U2|tmp_rf[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][0]~q\);

-- Location: FF_X59_Y42_N27
\Unit1|Unit1|U2|tmp_rf[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][0]~q\);

-- Location: FF_X60_Y40_N11
\Unit1|Unit1|U2|tmp_rf[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][0]~q\);

-- Location: FF_X61_Y39_N27
\Unit1|Unit1|U2|tmp_rf[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][0]~q\);

-- Location: LCCOMB_X61_Y39_N26
\Unit1|Unit1|U2|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|tmp_rf[1][0]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[0][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][0]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux15~4_combout\);

-- Location: LCCOMB_X59_Y42_N26
\Unit1|Unit1|U2|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~5_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux15~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][0]~q\)) # (!\Unit1|Unit1|U2|Mux15~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[2][0]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (((\Unit1|Unit1|U2|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[3][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[2][0]~q\,
	datad => \Unit1|Unit1|U2|Mux15~4_combout\,
	combout => \Unit1|Unit1|U2|Mux15~5_combout\);

-- Location: FF_X60_Y43_N9
\Unit1|Unit1|U2|tmp_rf[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][0]~q\);

-- Location: FF_X61_Y39_N25
\Unit1|Unit1|U2|tmp_rf[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][0]~q\);

-- Location: FF_X60_Y41_N1
\Unit1|Unit1|U2|tmp_rf[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][0]~q\);

-- Location: FF_X60_Y39_N9
\Unit1|Unit1|U2|tmp_rf[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][0]~q\);

-- Location: LCCOMB_X60_Y39_N8
\Unit1|Unit1|U2|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][0]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][0]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[6][0]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux15~2_combout\);

-- Location: LCCOMB_X61_Y39_N24
\Unit1|Unit1|U2|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux15~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[7][0]~q\)) # (!\Unit1|Unit1|U2|Mux15~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[5][0]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[7][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][0]~q\,
	datad => \Unit1|Unit1|U2|Mux15~2_combout\,
	combout => \Unit1|Unit1|U2|Mux15~3_combout\);

-- Location: LCCOMB_X62_Y42_N14
\Unit1|Unit1|U2|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux15~3_combout\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux15~5_combout\,
	datad => \Unit1|Unit1|U2|Mux15~3_combout\,
	combout => \Unit1|Unit1|U2|Mux15~6_combout\);

-- Location: FF_X59_Y42_N17
\Unit1|Unit1|U2|tmp_rf[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][0]~q\);

-- Location: FF_X60_Y40_N17
\Unit1|Unit1|U2|tmp_rf[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][0]~q\);

-- Location: FF_X59_Y40_N9
\Unit1|Unit1|U2|tmp_rf[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][0]~q\);

-- Location: LCCOMB_X59_Y40_N8
\Unit1|Unit1|U2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[9][0]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[8][0]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[8][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][0]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux15~0_combout\);

-- Location: LCCOMB_X60_Y42_N8
\Unit1|Unit1|U2|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~1_combout\ = (\Unit1|Unit1|U2|Mux15~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][0]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux15~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][0]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][0]~q\,
	datab => \Unit1|Unit1|U2|Mux15~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][0]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux15~1_combout\);

-- Location: LCCOMB_X62_Y42_N0
\Unit1|Unit1|U2|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux15~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux15~6_combout\ & (\Unit1|Unit1|U2|Mux15~8_combout\)) # (!\Unit1|Unit1|U2|Mux15~6_combout\ & ((\Unit1|Unit1|U2|Mux15~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux15~8_combout\,
	datac => \Unit1|Unit1|U2|Mux15~6_combout\,
	datad => \Unit1|Unit1|U2|Mux15~1_combout\,
	combout => \Unit1|Unit1|U2|Mux15~9_combout\);

-- Location: FF_X62_Y42_N1
\Unit1|Unit1|U2|RFr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux15~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(0));

-- Location: LCCOMB_X62_Y46_N2
\Unit1|Unit1|U3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~14_combout\ = \Unit1|Unit1|U2|RFr2\(0) $ (\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|RFr2\(0),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~14_combout\);

-- Location: LCCOMB_X62_Y46_N16
\Unit1|Unit1|U3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~16_cout\ = CARRY(\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => VCC,
	cout => \Unit1|Unit1|U3|Add0~16_cout\);

-- Location: LCCOMB_X62_Y46_N18
\Unit1|Unit1|U3|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~17_combout\ = (\Unit1|Unit1|U2|RFr1\(0) & ((\Unit1|Unit1|U3|Add0~14_combout\ & (\Unit1|Unit1|U3|Add0~16_cout\ & VCC)) # (!\Unit1|Unit1|U3|Add0~14_combout\ & (!\Unit1|Unit1|U3|Add0~16_cout\)))) # (!\Unit1|Unit1|U2|RFr1\(0) & 
-- ((\Unit1|Unit1|U3|Add0~14_combout\ & (!\Unit1|Unit1|U3|Add0~16_cout\)) # (!\Unit1|Unit1|U3|Add0~14_combout\ & ((\Unit1|Unit1|U3|Add0~16_cout\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~18\ = CARRY((\Unit1|Unit1|U2|RFr1\(0) & (!\Unit1|Unit1|U3|Add0~14_combout\ & !\Unit1|Unit1|U3|Add0~16_cout\)) # (!\Unit1|Unit1|U2|RFr1\(0) & ((!\Unit1|Unit1|U3|Add0~16_cout\) # (!\Unit1|Unit1|U3|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(0),
	datab => \Unit1|Unit1|U3|Add0~14_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~16_cout\,
	combout => \Unit1|Unit1|U3|Add0~17_combout\,
	cout => \Unit1|Unit1|U3|Add0~18\);

-- Location: LCCOMB_X62_Y46_N20
\Unit1|Unit1|U3|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~19_combout\ = ((\Unit1|Unit1|U2|RFr1\(1) $ (\Unit1|Unit1|U3|Add0~13_combout\ $ (!\Unit1|Unit1|U3|Add0~18\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~20\ = CARRY((\Unit1|Unit1|U2|RFr1\(1) & ((\Unit1|Unit1|U3|Add0~13_combout\) # (!\Unit1|Unit1|U3|Add0~18\))) # (!\Unit1|Unit1|U2|RFr1\(1) & (\Unit1|Unit1|U3|Add0~13_combout\ & !\Unit1|Unit1|U3|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(1),
	datab => \Unit1|Unit1|U3|Add0~13_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~18\,
	combout => \Unit1|Unit1|U3|Add0~19_combout\,
	cout => \Unit1|Unit1|U3|Add0~20\);

-- Location: LCCOMB_X61_Y45_N8
\Unit1|Unit1|U3|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~72_combout\ = (\Unit1|Unit1|U3|Add0~71_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit1|U3|Add0~71_combout\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~19_combout\,
	combout => \Unit1|Unit1|U3|Add0~72_combout\);

-- Location: LCCOMB_X61_Y44_N0
\Unit1|Unit1|U1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux14~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0)) # ((\Unit1|Unit0|U2|dir_addr\(1))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- (\Unit2|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	datad => \Unit1|Unit0|U2|dir_addr\(1),
	combout => \Unit1|Unit1|U1|Mux14~0_combout\);

-- Location: LCCOMB_X61_Y44_N2
\Unit1|Unit1|U1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux14~1_combout\ = (\Unit1|Unit1|U1|Mux14~0_combout\) # ((\Unit1|Unit1|U3|Add0~72_combout\ & (!\Unit1|Unit0|U0|RFs_ctrl\(0) & !\Unit1|Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~72_combout\,
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|Unit1|U1|Mux14~0_combout\,
	combout => \Unit1|Unit1|U1|Mux14~1_combout\);

-- Location: FF_X59_Y42_N15
\Unit1|Unit1|U2|tmp_rf[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][1]~q\);

-- Location: FF_X59_Y42_N29
\Unit1|Unit1|U2|tmp_rf[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][1]~q\);

-- Location: LCCOMB_X59_Y42_N14
\Unit1|Unit1|U2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[10][1]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[2][1]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[10][1]~q\,
	combout => \Unit1|Unit1|U2|Mux30~0_combout\);

-- Location: FF_X61_Y44_N25
\Unit1|Unit1|U2|tmp_rf[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][1]~q\);

-- Location: FF_X65_Y44_N17
\Unit1|Unit1|U2|tmp_rf[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][1]~q\);

-- Location: LCCOMB_X61_Y44_N24
\Unit1|Unit1|U2|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~1_combout\ = (\Unit1|Unit1|U2|Mux30~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][1]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2)))) # (!\Unit1|Unit1|U2|Mux30~0_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux30~0_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[6][1]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[14][1]~q\,
	combout => \Unit1|Unit1|U2|Mux30~1_combout\);

-- Location: FF_X61_Y44_N3
\Unit1|Unit1|U2|tmp_rf[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][1]~q\);

-- Location: FF_X60_Y42_N15
\Unit1|Unit1|U2|tmp_rf[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][1]~q\);

-- Location: FF_X61_Y42_N25
\Unit1|Unit1|U2|tmp_rf[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][1]~q\);

-- Location: LCCOMB_X60_Y42_N14
\Unit1|Unit1|U2|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit0|U0|RFr2a_ctrl\(2))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[7][1]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[3][1]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[7][1]~q\,
	combout => \Unit1|Unit1|U2|Mux30~7_combout\);

-- Location: FF_X60_Y42_N5
\Unit1|Unit1|U2|tmp_rf[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][1]~q\);

-- Location: LCCOMB_X60_Y42_N4
\Unit1|Unit1|U2|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~8_combout\ = (\Unit1|Unit1|U2|Mux30~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][1]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux30~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][1]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][1]~q\,
	datab => \Unit1|Unit1|U2|Mux30~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][1]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux30~8_combout\);

-- Location: FF_X60_Y41_N11
\Unit1|Unit1|U2|tmp_rf[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][1]~q\);

-- Location: FF_X60_Y41_N13
\Unit1|Unit1|U2|tmp_rf[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][1]~q\);

-- Location: FF_X58_Y41_N25
\Unit1|Unit1|U2|tmp_rf[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][1]~q\);

-- Location: FF_X58_Y41_N27
\Unit1|Unit1|U2|tmp_rf[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][1]~q\);

-- Location: LCCOMB_X58_Y41_N26
\Unit1|Unit1|U2|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[8][1]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[8][1]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[0][1]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux30~4_combout\);

-- Location: LCCOMB_X60_Y41_N12
\Unit1|Unit1|U2|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux30~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][1]~q\))) # (!\Unit1|Unit1|U2|Mux30~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[4][1]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][1]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[12][1]~q\,
	datad => \Unit1|Unit1|U2|Mux30~4_combout\,
	combout => \Unit1|Unit1|U2|Mux30~5_combout\);

-- Location: FF_X61_Y39_N21
\Unit1|Unit1|U2|tmp_rf[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][1]~q\);

-- Location: FF_X61_Y39_N31
\Unit1|Unit1|U2|tmp_rf[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][1]~q\);

-- Location: LCCOMB_X61_Y39_N30
\Unit1|Unit1|U2|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[5][1]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[5][1]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][1]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux30~2_combout\);

-- Location: FF_X62_Y40_N11
\Unit1|Unit1|U2|tmp_rf[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][1]~q\);

-- Location: FF_X62_Y40_N9
\Unit1|Unit1|U2|tmp_rf[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][1]~q\);

-- Location: LCCOMB_X62_Y40_N10
\Unit1|Unit1|U2|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~3_combout\ = (\Unit1|Unit1|U2|Mux30~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][1]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3)))) # (!\Unit1|Unit1|U2|Mux30~2_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[9][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux30~2_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[13][1]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[9][1]~q\,
	combout => \Unit1|Unit1|U2|Mux30~3_combout\);

-- Location: LCCOMB_X63_Y43_N6
\Unit1|Unit1|U2|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # (\Unit1|Unit1|U2|Mux30~3_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|Mux30~5_combout\ & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux30~5_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|Unit1|U2|Mux30~3_combout\,
	combout => \Unit1|Unit1|U2|Mux30~6_combout\);

-- Location: LCCOMB_X63_Y43_N4
\Unit1|Unit1|U2|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux30~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux30~6_combout\ & ((\Unit1|Unit1|U2|Mux30~8_combout\))) # (!\Unit1|Unit1|U2|Mux30~6_combout\ & (\Unit1|Unit1|U2|Mux30~1_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux30~1_combout\,
	datac => \Unit1|Unit1|U2|Mux30~8_combout\,
	datad => \Unit1|Unit1|U2|Mux30~6_combout\,
	combout => \Unit1|Unit1|U2|Mux30~9_combout\);

-- Location: FF_X63_Y43_N5
\Unit1|Unit1|U2|RFr2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux30~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(1));

-- Location: LCCOMB_X62_Y46_N8
\Unit1|Unit1|U3|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~13_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(1),
	combout => \Unit1|Unit1|U3|Add0~13_combout\);

-- Location: LCCOMB_X62_Y46_N22
\Unit1|Unit1|U3|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~21_combout\ = (\Unit1|Unit1|U2|RFr1\(2) & ((\Unit1|Unit1|U3|Add0~12_combout\ & (\Unit1|Unit1|U3|Add0~20\ & VCC)) # (!\Unit1|Unit1|U3|Add0~12_combout\ & (!\Unit1|Unit1|U3|Add0~20\)))) # (!\Unit1|Unit1|U2|RFr1\(2) & 
-- ((\Unit1|Unit1|U3|Add0~12_combout\ & (!\Unit1|Unit1|U3|Add0~20\)) # (!\Unit1|Unit1|U3|Add0~12_combout\ & ((\Unit1|Unit1|U3|Add0~20\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~22\ = CARRY((\Unit1|Unit1|U2|RFr1\(2) & (!\Unit1|Unit1|U3|Add0~12_combout\ & !\Unit1|Unit1|U3|Add0~20\)) # (!\Unit1|Unit1|U2|RFr1\(2) & ((!\Unit1|Unit1|U3|Add0~20\) # (!\Unit1|Unit1|U3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(2),
	datab => \Unit1|Unit1|U3|Add0~12_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~20\,
	combout => \Unit1|Unit1|U3|Add0~21_combout\,
	cout => \Unit1|Unit1|U3|Add0~22\);

-- Location: LCCOMB_X61_Y45_N28
\Unit1|Unit1|U3|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~76_combout\ = (\Unit1|Unit1|U3|Add0~75_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit1|U3|Add0~75_combout\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~23_combout\,
	combout => \Unit1|Unit1|U3|Add0~76_combout\);

-- Location: LCCOMB_X61_Y44_N10
\Unit1|Unit1|U1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux12~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0)) # ((\Unit1|Unit0|U2|dir_addr\(3))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- (\Unit2|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	datad => \Unit1|Unit0|U2|dir_addr\(3),
	combout => \Unit1|Unit1|U1|Mux12~0_combout\);

-- Location: LCCOMB_X61_Y44_N8
\Unit1|Unit1|U1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux12~1_combout\ = (\Unit1|Unit1|U1|Mux12~0_combout\) # ((!\Unit1|Unit0|U0|RFs_ctrl\(1) & (!\Unit1|Unit0|U0|RFs_ctrl\(0) & \Unit1|Unit1|U3|Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit1|U3|Add0~76_combout\,
	datad => \Unit1|Unit1|U1|Mux12~0_combout\,
	combout => \Unit1|Unit1|U1|Mux12~1_combout\);

-- Location: FF_X61_Y42_N27
\Unit1|Unit1|U2|tmp_rf[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][3]~q\);

-- Location: LCCOMB_X61_Y42_N4
\Unit1|Unit1|U2|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit0|U0|RFr1a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[11][3]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[11][3]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[3][3]~q\,
	combout => \Unit1|Unit1|U2|Mux12~7_combout\);

-- Location: LCCOMB_X60_Y42_N24
\Unit1|Unit1|U2|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~8_combout\ = (\Unit1|Unit1|U2|Mux12~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[15][3]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux12~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[7][3]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[7][3]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][3]~q\,
	datac => \Unit1|Unit1|U2|Mux12~7_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux12~8_combout\);

-- Location: LCCOMB_X59_Y41_N16
\Unit1|Unit1|U2|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][3]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[0][3]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][3]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux12~4_combout\);

-- Location: LCCOMB_X58_Y41_N20
\Unit1|Unit1|U2|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~5_combout\ = (\Unit1|Unit1|U2|Mux12~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[12][3]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit1|Unit1|U2|Mux12~4_combout\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[8][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux12~4_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[8][3]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[12][3]~q\,
	combout => \Unit1|Unit1|U2|Mux12~5_combout\);

-- Location: LCCOMB_X61_Y44_N14
\Unit1|Unit1|U2|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[6][3]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[6][3]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|Unit1|U2|tmp_rf[2][3]~q\,
	combout => \Unit1|Unit1|U2|Mux12~2_combout\);

-- Location: LCCOMB_X58_Y40_N20
\Unit1|Unit1|U2|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux12~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][3]~q\)) # (!\Unit1|Unit1|U2|Mux12~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[10][3]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[14][3]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][3]~q\,
	datad => \Unit1|Unit1|U2|Mux12~2_combout\,
	combout => \Unit1|Unit1|U2|Mux12~3_combout\);

-- Location: LCCOMB_X59_Y42_N24
\Unit1|Unit1|U2|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|Mux12~3_combout\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|Mux12~5_combout\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux12~5_combout\,
	datab => \Unit1|Unit1|U2|Mux12~3_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux12~6_combout\);

-- Location: LCCOMB_X62_Y40_N22
\Unit1|Unit1|U2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|Unit1|U2|tmp_rf[9][3]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[9][3]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][3]~q\,
	combout => \Unit1|Unit1|U2|Mux12~0_combout\);

-- Location: LCCOMB_X62_Y40_N24
\Unit1|Unit1|U2|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~1_combout\ = (\Unit1|Unit1|U2|Mux12~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][3]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux12~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][3]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux12~0_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[5][3]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][3]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux12~1_combout\);

-- Location: LCCOMB_X62_Y42_N12
\Unit1|Unit1|U2|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux12~9_combout\ = (\Unit1|Unit1|U2|Mux12~6_combout\ & ((\Unit1|Unit1|U2|Mux12~8_combout\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux12~6_combout\ & (((\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- \Unit1|Unit1|U2|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux12~8_combout\,
	datab => \Unit1|Unit1|U2|Mux12~6_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit1|U2|Mux12~1_combout\,
	combout => \Unit1|Unit1|U2|Mux12~9_combout\);

-- Location: FF_X62_Y42_N13
\Unit1|Unit1|U2|RFr1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux12~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(3));

-- Location: LCCOMB_X66_Y45_N20
\Unit1|Unit0|U3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux12~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & (((\Unit1|Unit1|U2|RFr1\(3) & !\Unit1|Unit0|U0|Ms_ctrl\(0))))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U1|tmp_PC\(3)) # ((\Unit1|Unit0|U0|Ms_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(3),
	datab => \Unit1|Unit1|U2|RFr1\(3),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(0),
	combout => \Unit1|Unit0|U3|Mux12~0_combout\);

-- Location: LCCOMB_X65_Y44_N8
\Unit1|Unit0|U3|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux12~1_combout\ = (\Unit1|Unit0|U3|Mux12~0_combout\ & (((\Unit1|Unit0|U2|IRout\(11))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0)))) # (!\Unit1|Unit0|U3|Mux12~0_combout\ & (\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit0|U2|dir_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U3|Mux12~0_combout\,
	datab => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datac => \Unit1|Unit0|U2|dir_addr\(3),
	datad => \Unit1|Unit0|U2|IRout\(11),
	combout => \Unit1|Unit0|U3|Mux12~1_combout\);

-- Location: M9K_X64_Y45_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004E8A4",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X62_Y44_N28
\Unit1|Unit0|U2|IRout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(8) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(8)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|IRout\(8),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	combout => \Unit1|Unit0|U2|IRout\(8));

-- Location: FF_X62_Y44_N29
\Unit1|Unit0|U0|IR_PS2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U2|IRout\(8),
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(8));

-- Location: LCCOMB_X62_Y44_N2
\Unit1|Unit0|U0|WideOr54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr54~combout\ = (\Unit1|Unit0|U0|state.S28~q\) # ((\Unit1|Unit0|U0|WideOr54~0_combout\ & !\Unit1|Unit0|U0|state.S24b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|WideOr54~0_combout\,
	datac => \Unit1|Unit0|U0|state.S24b~q\,
	datad => \Unit1|Unit0|U0|state.S28~q\,
	combout => \Unit1|Unit0|U0|WideOr54~combout\);

-- Location: LCCOMB_X63_Y44_N0
\Unit1|Unit0|U0|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector60~0_combout\ = (\Unit1|Unit0|U0|WideOr54~0_combout\ & (((\Unit1|Unit0|U0|RFwa_ctrl\(0) & \Unit1|Unit0|U0|WideOr54~combout\)))) # (!\Unit1|Unit0|U0|WideOr54~0_combout\ & ((\Unit1|Unit0|U0|IR_PS2\(8)) # 
-- ((\Unit1|Unit0|U0|RFwa_ctrl\(0) & \Unit1|Unit0|U0|WideOr54~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr54~0_combout\,
	datab => \Unit1|Unit0|U0|IR_PS2\(8),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|WideOr54~combout\,
	combout => \Unit1|Unit0|U0|Selector60~0_combout\);

-- Location: FF_X63_Y44_N1
\Unit1|Unit0|U0|RFwa_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector60~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFwa_ctrl\(0));

-- Location: LCCOMB_X61_Y41_N14
\Unit1|Unit1|U2|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~0_combout\ = (\Unit1|Unit0|U0|RFwa_ctrl\(1) & (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (!\Unit1|Unit0|U0|RFwa_ctrl\(0) & !\Unit1|Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|Unit1|U2|Decoder0~0_combout\);

-- Location: LCCOMB_X61_Y41_N0
\Unit1|Unit1|U2|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~1_combout\ = (\Unit1|Unit1|U2|Decoder0~0_combout\ & \Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|Decoder0~0_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~1_combout\);

-- Location: FF_X58_Y40_N13
\Unit1|Unit1|U2|tmp_rf[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][14]~q\);

-- Location: FF_X60_Y40_N5
\Unit1|Unit1|U2|tmp_rf[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][14]~q\);

-- Location: LCCOMB_X60_Y40_N4
\Unit1|Unit1|U2|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[10][14]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[8][14]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][14]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][14]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux17~2_combout\);

-- Location: FF_X58_Y40_N7
\Unit1|Unit1|U2|tmp_rf[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][14]~q\);

-- Location: FF_X62_Y40_N27
\Unit1|Unit1|U2|tmp_rf[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][14]~q\);

-- Location: LCCOMB_X58_Y40_N6
\Unit1|Unit1|U2|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~3_combout\ = (\Unit1|Unit1|U2|Mux17~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][14]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0)))) # (!\Unit1|Unit1|U2|Mux17~2_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[9][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux17~2_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[11][14]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[9][14]~q\,
	combout => \Unit1|Unit1|U2|Mux17~3_combout\);

-- Location: LCCOMB_X65_Y41_N16
\Unit1|Unit1|U2|tmp_rf[3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[3][14]~feeder_combout\ = \Unit1|Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[3][14]~feeder_combout\);

-- Location: FF_X65_Y41_N17
\Unit1|Unit1|U2|tmp_rf[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[3][14]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][14]~q\);

-- Location: LCCOMB_X60_Y40_N22
\Unit1|Unit1|U2|tmp_rf[0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|tmp_rf[0][14]~feeder_combout\ = \Unit1|Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|Unit1|U2|tmp_rf[0][14]~feeder_combout\);

-- Location: FF_X60_Y40_N23
\Unit1|Unit1|U2|tmp_rf[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|tmp_rf[0][14]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][14]~q\);

-- Location: FF_X63_Y40_N9
\Unit1|Unit1|U2|tmp_rf[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][14]~q\);

-- Location: LCCOMB_X63_Y40_N30
\Unit1|Unit1|U2|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][14]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][14]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[2][14]~q\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux17~4_combout\);

-- Location: FF_X65_Y40_N17
\Unit1|Unit1|U2|tmp_rf[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][14]~q\);

-- Location: LCCOMB_X65_Y40_N10
\Unit1|Unit1|U2|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux17~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][14]~q\)) # (!\Unit1|Unit1|U2|Mux17~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[1][14]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][14]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|Mux17~4_combout\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][14]~q\,
	combout => \Unit1|Unit1|U2|Mux17~5_combout\);

-- Location: LCCOMB_X65_Y40_N20
\Unit1|Unit1|U2|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|Mux17~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|Mux17~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux17~3_combout\,
	datad => \Unit1|Unit1|U2|Mux17~5_combout\,
	combout => \Unit1|Unit1|U2|Mux17~6_combout\);

-- Location: FF_X62_Y40_N31
\Unit1|Unit1|U2|tmp_rf[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][14]~q\);

-- Location: FF_X60_Y41_N29
\Unit1|Unit1|U2|tmp_rf[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][14]~q\);

-- Location: LCCOMB_X60_Y41_N28
\Unit1|Unit1|U2|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[13][14]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[12][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[13][14]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[12][14]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux17~7_combout\);

-- Location: FF_X63_Y42_N9
\Unit1|Unit1|U2|tmp_rf[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][14]~q\);

-- Location: FF_X63_Y42_N11
\Unit1|Unit1|U2|tmp_rf[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][14]~q\);

-- Location: LCCOMB_X63_Y42_N8
\Unit1|Unit1|U2|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux17~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][14]~q\))) # (!\Unit1|Unit1|U2|Mux17~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][14]~q\)))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|Mux17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux17~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][14]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[15][14]~q\,
	combout => \Unit1|Unit1|U2|Mux17~8_combout\);

-- Location: FF_X62_Y41_N23
\Unit1|Unit1|U2|tmp_rf[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][14]~q\);

-- Location: FF_X60_Y41_N19
\Unit1|Unit1|U2|tmp_rf[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][14]~q\);

-- Location: LCCOMB_X60_Y41_N18
\Unit1|Unit1|U2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[5][14]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[5][14]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[4][14]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux17~0_combout\);

-- Location: FF_X61_Y43_N3
\Unit1|Unit1|U2|tmp_rf[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][14]~q\);

-- Location: FF_X60_Y43_N25
\Unit1|Unit1|U2|tmp_rf[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][14]~q\);

-- Location: LCCOMB_X61_Y43_N2
\Unit1|Unit1|U2|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~1_combout\ = (\Unit1|Unit1|U2|Mux17~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][14]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1)))) # (!\Unit1|Unit1|U2|Mux17~0_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[6][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux17~0_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[6][14]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[7][14]~q\,
	combout => \Unit1|Unit1|U2|Mux17~1_combout\);

-- Location: LCCOMB_X62_Y43_N26
\Unit1|Unit1|U2|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux17~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux17~6_combout\ & (\Unit1|Unit1|U2|Mux17~8_combout\)) # (!\Unit1|Unit1|U2|Mux17~6_combout\ & ((\Unit1|Unit1|U2|Mux17~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (\Unit1|Unit1|U2|Mux17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux17~6_combout\,
	datac => \Unit1|Unit1|U2|Mux17~8_combout\,
	datad => \Unit1|Unit1|U2|Mux17~1_combout\,
	combout => \Unit1|Unit1|U2|Mux17~9_combout\);

-- Location: FF_X62_Y43_N27
\Unit1|Unit1|U2|RFr2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux17~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(14));

-- Location: LCCOMB_X58_Y40_N12
\Unit1|Unit1|U2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[10][14]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[8][14]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[8][14]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][14]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux1~2_combout\);

-- Location: LCCOMB_X62_Y40_N26
\Unit1|Unit1|U2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux1~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][14]~q\)) # (!\Unit1|Unit1|U2|Mux1~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][14]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[11][14]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][14]~q\,
	datad => \Unit1|Unit1|U2|Mux1~2_combout\,
	combout => \Unit1|Unit1|U2|Mux1~3_combout\);

-- Location: LCCOMB_X63_Y40_N8
\Unit1|Unit1|U2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[2][14]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[0][14]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][14]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[2][14]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux1~4_combout\);

-- Location: LCCOMB_X65_Y40_N16
\Unit1|Unit1|U2|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~5_combout\ = (\Unit1|Unit1|U2|Mux1~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[3][14]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0)))) # (!\Unit1|Unit1|U2|Mux1~4_combout\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[1][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux1~4_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[1][14]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[3][14]~q\,
	combout => \Unit1|Unit1|U2|Mux1~5_combout\);

-- Location: LCCOMB_X62_Y40_N12
\Unit1|Unit1|U2|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|Unit1|U2|Mux1~3_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux1~3_combout\,
	datad => \Unit1|Unit1|U2|Mux1~5_combout\,
	combout => \Unit1|Unit1|U2|Mux1~6_combout\);

-- Location: LCCOMB_X62_Y41_N22
\Unit1|Unit1|U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit0|U0|RFr1a_ctrl\(0))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[5][14]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[5][14]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[4][14]~q\,
	combout => \Unit1|Unit1|U2|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y43_N24
\Unit1|Unit1|U2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux1~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[7][14]~q\)) # (!\Unit1|Unit1|U2|Mux1~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][14]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux1~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][14]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[6][14]~q\,
	combout => \Unit1|Unit1|U2|Mux1~1_combout\);

-- Location: LCCOMB_X62_Y40_N30
\Unit1|Unit1|U2|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[13][14]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[12][14]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[12][14]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][14]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux1~7_combout\);

-- Location: LCCOMB_X63_Y42_N4
\Unit1|Unit1|U2|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~8_combout\ = (\Unit1|Unit1|U2|Mux1~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[15][14]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux1~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][14]~q\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux1~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[14][14]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|Unit1|U2|tmp_rf[15][14]~q\,
	combout => \Unit1|Unit1|U2|Mux1~8_combout\);

-- Location: LCCOMB_X62_Y42_N18
\Unit1|Unit1|U2|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux1~9_combout\ = (\Unit1|Unit1|U2|Mux1~6_combout\ & (((\Unit1|Unit1|U2|Mux1~8_combout\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|Unit1|U2|Mux1~6_combout\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux1~6_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux1~1_combout\,
	datad => \Unit1|Unit1|U2|Mux1~8_combout\,
	combout => \Unit1|Unit1|U2|Mux1~9_combout\);

-- Location: FF_X62_Y42_N19
\Unit1|Unit1|U2|RFr1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux1~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(14));

-- Location: LCCOMB_X62_Y43_N20
\Unit1|Unit1|U3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~46_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(14))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U2|RFr2\(14),
	datad => \Unit1|Unit1|U2|RFr1\(14),
	combout => \Unit1|Unit1|U3|Add0~46_combout\);

-- Location: LCCOMB_X63_Y45_N2
\Unit1|Unit1|U3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~1_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(13),
	combout => \Unit1|Unit1|U3|Add0~1_combout\);

-- Location: FF_X65_Y43_N27
\Unit1|Unit1|U2|tmp_rf[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][13]~q\);

-- Location: FF_X65_Y42_N13
\Unit1|Unit1|U2|tmp_rf[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][13]~q\);

-- Location: LCCOMB_X65_Y43_N26
\Unit1|Unit1|U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|Unit1|U2|tmp_rf[10][13]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[10][13]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[2][13]~q\,
	combout => \Unit1|Unit1|U2|Mux2~0_combout\);

-- Location: FF_X65_Y43_N25
\Unit1|Unit1|U2|tmp_rf[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][13]~q\);

-- Location: LCCOMB_X63_Y42_N22
\Unit1|Unit1|U2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux2~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][13]~q\)) # (!\Unit1|Unit1|U2|Mux2~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][13]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux2~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][13]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[6][13]~q\,
	combout => \Unit1|Unit1|U2|Mux2~1_combout\);

-- Location: FF_X58_Y41_N3
\Unit1|Unit1|U2|tmp_rf[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][13]~q\);

-- Location: FF_X58_Y41_N1
\Unit1|Unit1|U2|tmp_rf[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][13]~q\);

-- Location: LCCOMB_X58_Y41_N0
\Unit1|Unit1|U2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[8][13]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[0][13]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[8][13]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux2~4_combout\);

-- Location: FF_X60_Y41_N25
\Unit1|Unit1|U2|tmp_rf[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][13]~q\);

-- Location: FF_X59_Y41_N11
\Unit1|Unit1|U2|tmp_rf[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][13]~q\);

-- Location: LCCOMB_X59_Y41_N10
\Unit1|Unit1|U2|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~5_combout\ = (\Unit1|Unit1|U2|Mux2~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][13]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux2~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[4][13]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux2~4_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[12][13]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][13]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux2~5_combout\);

-- Location: FF_X58_Y43_N11
\Unit1|Unit1|U2|tmp_rf[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][13]~q\);

-- Location: FF_X61_Y41_N25
\Unit1|Unit1|U2|tmp_rf[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][13]~q\);

-- Location: FF_X61_Y39_N23
\Unit1|Unit1|U2|tmp_rf[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][13]~q\);

-- Location: FF_X61_Y39_N13
\Unit1|Unit1|U2|tmp_rf[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][13]~q\);

-- Location: LCCOMB_X61_Y39_N12
\Unit1|Unit1|U2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[5][13]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[1][13]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][13]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[5][13]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux2~2_combout\);

-- Location: LCCOMB_X61_Y41_N24
\Unit1|Unit1|U2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux2~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][13]~q\)) # (!\Unit1|Unit1|U2|Mux2~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[9][13]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (((\Unit1|Unit1|U2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[13][13]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[9][13]~q\,
	datad => \Unit1|Unit1|U2|Mux2~2_combout\,
	combout => \Unit1|Unit1|U2|Mux2~3_combout\);

-- Location: LCCOMB_X59_Y40_N6
\Unit1|Unit1|U2|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|Unit1|U2|Mux2~3_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux2~5_combout\,
	datad => \Unit1|Unit1|U2|Mux2~3_combout\,
	combout => \Unit1|Unit1|U2|Mux2~6_combout\);

-- Location: FF_X61_Y43_N17
\Unit1|Unit1|U2|tmp_rf[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][13]~q\);

-- Location: FF_X60_Y42_N17
\Unit1|Unit1|U2|tmp_rf[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][13]~q\);

-- Location: FF_X61_Y42_N11
\Unit1|Unit1|U2|tmp_rf[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][13]~q\);

-- Location: LCCOMB_X61_Y42_N10
\Unit1|Unit1|U2|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[7][13]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[3][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][13]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[7][13]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux2~7_combout\);

-- Location: FF_X60_Y42_N23
\Unit1|Unit1|U2|tmp_rf[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][13]~q\);

-- Location: LCCOMB_X60_Y42_N18
\Unit1|Unit1|U2|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~8_combout\ = (\Unit1|Unit1|U2|Mux2~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][13]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux2~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][13]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][13]~q\,
	datab => \Unit1|Unit1|U2|Mux2~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][13]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux2~8_combout\);

-- Location: LCCOMB_X62_Y42_N24
\Unit1|Unit1|U2|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux2~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux2~6_combout\ & ((\Unit1|Unit1|U2|Mux2~8_combout\))) # (!\Unit1|Unit1|U2|Mux2~6_combout\ & (\Unit1|Unit1|U2|Mux2~1_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (((\Unit1|Unit1|U2|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux2~1_combout\,
	datac => \Unit1|Unit1|U2|Mux2~6_combout\,
	datad => \Unit1|Unit1|U2|Mux2~8_combout\,
	combout => \Unit1|Unit1|U2|Mux2~9_combout\);

-- Location: FF_X62_Y42_N25
\Unit1|Unit1|U2|RFr1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux2~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(13));

-- Location: LCCOMB_X61_Y43_N6
\Unit1|Unit1|U1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux3~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(12)) # ((\Unit1|Unit0|U0|RFs_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & (((\Unit1|Unit1|U3|Add0~57_combout\ & 
-- !\Unit1|Unit0|U0|RFs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit1|U3|Add0~57_combout\,
	datad => \Unit1|Unit0|U0|RFs_ctrl\(1),
	combout => \Unit1|Unit1|U1|Mux3~0_combout\);

-- Location: FF_X65_Y43_N31
\Unit1|Unit1|U2|tmp_rf[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][12]~q\);

-- Location: FF_X60_Y40_N1
\Unit1|Unit1|U2|tmp_rf[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][12]~q\);

-- Location: FF_X59_Y40_N13
\Unit1|Unit1|U2|tmp_rf[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][12]~q\);

-- Location: LCCOMB_X59_Y40_N12
\Unit1|Unit1|U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[9][12]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[8][12]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[8][12]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][12]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux3~0_combout\);

-- Location: FF_X61_Y45_N11
\Unit1|Unit1|U2|tmp_rf[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][12]~q\);

-- Location: LCCOMB_X61_Y45_N10
\Unit1|Unit1|U2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~1_combout\ = (\Unit1|Unit1|U2|Mux3~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][12]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux3~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][12]~q\ & 
-- ((\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][12]~q\,
	datab => \Unit1|Unit1|U2|Mux3~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][12]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux3~1_combout\);

-- Location: FF_X59_Y43_N21
\Unit1|Unit1|U2|tmp_rf[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][12]~q\);

-- Location: FF_X58_Y43_N15
\Unit1|Unit1|U2|tmp_rf[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][12]~q\);

-- Location: LCCOMB_X59_Y43_N20
\Unit1|Unit1|U2|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[14][12]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- ((\Unit1|Unit1|U2|tmp_rf[12][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[14][12]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[12][12]~q\,
	combout => \Unit1|Unit1|U2|Mux3~7_combout\);

-- Location: FF_X58_Y43_N29
\Unit1|Unit1|U2|tmp_rf[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][12]~q\);

-- Location: FF_X61_Y43_N7
\Unit1|Unit1|U2|tmp_rf[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][12]~q\);

-- Location: LCCOMB_X58_Y43_N0
\Unit1|Unit1|U2|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~8_combout\ = (\Unit1|Unit1|U2|Mux3~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[15][12]~q\) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux3~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][12]~q\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux3~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[13][12]~q\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit1|U2|tmp_rf[15][12]~q\,
	combout => \Unit1|Unit1|U2|Mux3~8_combout\);

-- Location: FF_X65_Y42_N19
\Unit1|Unit1|U2|tmp_rf[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][12]~q\);

-- Location: FF_X65_Y42_N9
\Unit1|Unit1|U2|tmp_rf[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][12]~q\);

-- Location: FF_X60_Y40_N19
\Unit1|Unit1|U2|tmp_rf[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][12]~q\);

-- Location: FF_X61_Y40_N3
\Unit1|Unit1|U2|tmp_rf[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][12]~q\);

-- Location: LCCOMB_X61_Y40_N2
\Unit1|Unit1|U2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[1][12]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[0][12]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][12]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[1][12]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux3~4_combout\);

-- Location: LCCOMB_X65_Y42_N8
\Unit1|Unit1|U2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~5_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux3~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][12]~q\)) # (!\Unit1|Unit1|U2|Mux3~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[2][12]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (((\Unit1|Unit1|U2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[3][12]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[2][12]~q\,
	datad => \Unit1|Unit1|U2|Mux3~4_combout\,
	combout => \Unit1|Unit1|U2|Mux3~5_combout\);

-- Location: FF_X59_Y41_N1
\Unit1|Unit1|U2|tmp_rf[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][12]~q\);

-- Location: FF_X60_Y39_N7
\Unit1|Unit1|U2|tmp_rf[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][12]~q\);

-- Location: LCCOMB_X60_Y39_N6
\Unit1|Unit1|U2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][12]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][12]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[6][12]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux3~2_combout\);

-- Location: FF_X61_Y39_N19
\Unit1|Unit1|U2|tmp_rf[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][12]~q\);

-- Location: FF_X60_Y43_N31
\Unit1|Unit1|U2|tmp_rf[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][12]~q\);

-- Location: LCCOMB_X61_Y39_N18
\Unit1|Unit1|U2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux3~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][12]~q\))) # (!\Unit1|Unit1|U2|Mux3~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][12]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux3~2_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][12]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[7][12]~q\,
	combout => \Unit1|Unit1|U2|Mux3~3_combout\);

-- Location: LCCOMB_X62_Y42_N8
\Unit1|Unit1|U2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux3~3_combout\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|Mux3~5_combout\,
	datad => \Unit1|Unit1|U2|Mux3~3_combout\,
	combout => \Unit1|Unit1|U2|Mux3~6_combout\);

-- Location: LCCOMB_X61_Y45_N12
\Unit1|Unit1|U2|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux3~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux3~6_combout\ & ((\Unit1|Unit1|U2|Mux3~8_combout\))) # (!\Unit1|Unit1|U2|Mux3~6_combout\ & (\Unit1|Unit1|U2|Mux3~1_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (((\Unit1|Unit1|U2|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux3~1_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux3~8_combout\,
	datad => \Unit1|Unit1|U2|Mux3~6_combout\,
	combout => \Unit1|Unit1|U2|Mux3~9_combout\);

-- Location: FF_X61_Y45_N13
\Unit1|Unit1|U2|RFr1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux3~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(12));

-- Location: LCCOMB_X58_Y43_N14
\Unit1|Unit1|U2|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[14][12]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[12][12]~q\ & 
-- !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[14][12]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[12][12]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux19~7_combout\);

-- Location: LCCOMB_X58_Y43_N28
\Unit1|Unit1|U2|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~8_combout\ = (\Unit1|Unit1|U2|Mux19~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][12]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux19~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][12]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][12]~q\,
	datab => \Unit1|Unit1|U2|Mux19~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][12]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux19~8_combout\);

-- Location: LCCOMB_X59_Y41_N0
\Unit1|Unit1|U2|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][12]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[4][12]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[6][12]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][12]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux19~2_combout\);

-- Location: LCCOMB_X60_Y43_N30
\Unit1|Unit1|U2|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux19~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][12]~q\))) # (!\Unit1|Unit1|U2|Mux19~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][12]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[5][12]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][12]~q\,
	datad => \Unit1|Unit1|U2|Mux19~2_combout\,
	combout => \Unit1|Unit1|U2|Mux19~3_combout\);

-- Location: LCCOMB_X60_Y40_N18
\Unit1|Unit1|U2|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|Unit1|U2|tmp_rf[1][12]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[0][12]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][12]~q\,
	combout => \Unit1|Unit1|U2|Mux19~4_combout\);

-- Location: LCCOMB_X65_Y42_N18
\Unit1|Unit1|U2|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux19~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[3][12]~q\))) # (!\Unit1|Unit1|U2|Mux19~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[2][12]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[2][12]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][12]~q\,
	datad => \Unit1|Unit1|U2|Mux19~4_combout\,
	combout => \Unit1|Unit1|U2|Mux19~5_combout\);

-- Location: LCCOMB_X60_Y43_N18
\Unit1|Unit1|U2|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|Mux19~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux19~3_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux19~5_combout\,
	combout => \Unit1|Unit1|U2|Mux19~6_combout\);

-- Location: LCCOMB_X60_Y40_N0
\Unit1|Unit1|U2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[9][12]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[8][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[9][12]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][12]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux19~0_combout\);

-- Location: LCCOMB_X65_Y43_N30
\Unit1|Unit1|U2|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~1_combout\ = (\Unit1|Unit1|U2|Mux19~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][12]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1)))) # (!\Unit1|Unit1|U2|Mux19~0_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[10][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux19~0_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[10][12]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[11][12]~q\,
	combout => \Unit1|Unit1|U2|Mux19~1_combout\);

-- Location: LCCOMB_X63_Y43_N0
\Unit1|Unit1|U2|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux19~9_combout\ = (\Unit1|Unit1|U2|Mux19~6_combout\ & ((\Unit1|Unit1|U2|Mux19~8_combout\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux19~6_combout\ & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- \Unit1|Unit1|U2|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux19~8_combout\,
	datab => \Unit1|Unit1|U2|Mux19~6_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|Unit1|U2|Mux19~1_combout\,
	combout => \Unit1|Unit1|U2|Mux19~9_combout\);

-- Location: FF_X63_Y43_N1
\Unit1|Unit1|U2|RFr2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux19~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(12));

-- Location: LCCOMB_X63_Y44_N4
\Unit1|Unit1|U3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~2_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(12),
	combout => \Unit1|Unit1|U3|Add0~2_combout\);

-- Location: LCCOMB_X62_Y45_N10
\Unit1|Unit1|U3|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~41_combout\ = (\Unit1|Unit1|U2|RFr1\(12) & ((\Unit1|Unit1|U3|Add0~2_combout\ & (\Unit1|Unit1|U3|Add0~40\ & VCC)) # (!\Unit1|Unit1|U3|Add0~2_combout\ & (!\Unit1|Unit1|U3|Add0~40\)))) # (!\Unit1|Unit1|U2|RFr1\(12) & 
-- ((\Unit1|Unit1|U3|Add0~2_combout\ & (!\Unit1|Unit1|U3|Add0~40\)) # (!\Unit1|Unit1|U3|Add0~2_combout\ & ((\Unit1|Unit1|U3|Add0~40\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~42\ = CARRY((\Unit1|Unit1|U2|RFr1\(12) & (!\Unit1|Unit1|U3|Add0~2_combout\ & !\Unit1|Unit1|U3|Add0~40\)) # (!\Unit1|Unit1|U2|RFr1\(12) & ((!\Unit1|Unit1|U3|Add0~40\) # (!\Unit1|Unit1|U3|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(12),
	datab => \Unit1|Unit1|U3|Add0~2_combout\,
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~40\,
	combout => \Unit1|Unit1|U3|Add0~41_combout\,
	cout => \Unit1|Unit1|U3|Add0~42\);

-- Location: LCCOMB_X62_Y45_N12
\Unit1|Unit1|U3|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~43_combout\ = ((\Unit1|Unit1|U3|Add0~1_combout\ $ (\Unit1|Unit1|U2|RFr1\(13) $ (!\Unit1|Unit1|U3|Add0~42\)))) # (GND)
-- \Unit1|Unit1|U3|Add0~44\ = CARRY((\Unit1|Unit1|U3|Add0~1_combout\ & ((\Unit1|Unit1|U2|RFr1\(13)) # (!\Unit1|Unit1|U3|Add0~42\))) # (!\Unit1|Unit1|U3|Add0~1_combout\ & (\Unit1|Unit1|U2|RFr1\(13) & !\Unit1|Unit1|U3|Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~1_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(13),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~42\,
	combout => \Unit1|Unit1|U3|Add0~43_combout\,
	cout => \Unit1|Unit1|U3|Add0~44\);

-- Location: LCCOMB_X62_Y43_N0
\Unit1|Unit1|U3|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~45_combout\ = (\Unit1|Unit1|U3|Add0~0_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~43_combout\,
	datad => \Unit1|Unit1|U3|Add0~0_combout\,
	combout => \Unit1|Unit1|U3|Add0~45_combout\);

-- Location: M9K_X64_Y44_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF34F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y43_N16
\Unit1|Unit1|U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux2~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(13)))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) 
-- & (\Unit1|Unit1|U3|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|Unit1|U3|Add0~45_combout\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	combout => \Unit1|Unit1|U1|Mux2~0_combout\);

-- Location: FF_X63_Y42_N23
\Unit1|Unit1|U2|tmp_rf[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][13]~q\);

-- Location: LCCOMB_X65_Y42_N12
\Unit1|Unit1|U2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[10][13]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[10][13]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[2][13]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux18~0_combout\);

-- Location: LCCOMB_X65_Y43_N24
\Unit1|Unit1|U2|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux18~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][13]~q\)) # (!\Unit1|Unit1|U2|Mux18~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][13]~q\))))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[14][13]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][13]~q\,
	datad => \Unit1|Unit1|U2|Mux18~0_combout\,
	combout => \Unit1|Unit1|U2|Mux18~1_combout\);

-- Location: LCCOMB_X60_Y42_N16
\Unit1|Unit1|U2|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[7][13]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[3][13]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[7][13]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[3][13]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux18~7_combout\);

-- Location: LCCOMB_X60_Y42_N22
\Unit1|Unit1|U2|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux18~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][13]~q\))) # (!\Unit1|Unit1|U2|Mux18~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][13]~q\)))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|Mux18~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux18~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][13]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[15][13]~q\,
	combout => \Unit1|Unit1|U2|Mux18~8_combout\);

-- Location: LCCOMB_X61_Y39_N22
\Unit1|Unit1|U2|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|Unit1|U2|tmp_rf[5][13]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[1][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[1][13]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][13]~q\,
	combout => \Unit1|Unit1|U2|Mux18~2_combout\);

-- Location: LCCOMB_X58_Y43_N10
\Unit1|Unit1|U2|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux18~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][13]~q\))) # (!\Unit1|Unit1|U2|Mux18~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[9][13]~q\)))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[9][13]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[13][13]~q\,
	datad => \Unit1|Unit1|U2|Mux18~2_combout\,
	combout => \Unit1|Unit1|U2|Mux18~3_combout\);

-- Location: LCCOMB_X58_Y41_N2
\Unit1|Unit1|U2|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[8][13]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[8][13]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[0][13]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux18~4_combout\);

-- Location: LCCOMB_X60_Y41_N24
\Unit1|Unit1|U2|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux18~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][13]~q\))) # (!\Unit1|Unit1|U2|Mux18~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[4][13]~q\)))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][13]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[12][13]~q\,
	datad => \Unit1|Unit1|U2|Mux18~4_combout\,
	combout => \Unit1|Unit1|U2|Mux18~5_combout\);

-- Location: LCCOMB_X58_Y43_N12
\Unit1|Unit1|U2|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|Mux18~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|Mux18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux18~3_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|Mux18~5_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux18~6_combout\);

-- Location: LCCOMB_X62_Y43_N24
\Unit1|Unit1|U2|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux18~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux18~6_combout\ & ((\Unit1|Unit1|U2|Mux18~8_combout\))) # (!\Unit1|Unit1|U2|Mux18~6_combout\ & (\Unit1|Unit1|U2|Mux18~1_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux18~1_combout\,
	datac => \Unit1|Unit1|U2|Mux18~8_combout\,
	datad => \Unit1|Unit1|U2|Mux18~6_combout\,
	combout => \Unit1|Unit1|U2|Mux18~9_combout\);

-- Location: FF_X62_Y43_N25
\Unit1|Unit1|U2|RFr2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux18~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(13));

-- Location: LCCOMB_X62_Y43_N10
\Unit1|Unit1|U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~0_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(13))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr2\(13),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(13),
	combout => \Unit1|Unit1|U3|Add0~0_combout\);

-- Location: LCCOMB_X62_Y43_N28
\Unit1|Unit1|U3|ALUz~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~6_combout\ = (!\Unit1|Unit1|U3|Add0~51_combout\ & (!\Unit1|Unit1|U3|Add0~46_combout\ & !\Unit1|Unit1|U3|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~51_combout\,
	datab => \Unit1|Unit1|U3|Add0~46_combout\,
	datad => \Unit1|Unit1|U3|Add0~0_combout\,
	combout => \Unit1|Unit1|U3|ALUz~6_combout\);

-- Location: LCCOMB_X62_Y43_N22
\Unit1|Unit1|U3|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~47_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|Unit1|U2|RFr2\(14),
	combout => \Unit1|Unit1|U3|Add0~47_combout\);

-- Location: LCCOMB_X62_Y45_N14
\Unit1|Unit1|U3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~48_combout\ = (\Unit1|Unit1|U3|Add0~47_combout\ & ((\Unit1|Unit1|U2|RFr1\(14) & (\Unit1|Unit1|U3|Add0~44\ & VCC)) # (!\Unit1|Unit1|U2|RFr1\(14) & (!\Unit1|Unit1|U3|Add0~44\)))) # (!\Unit1|Unit1|U3|Add0~47_combout\ & 
-- ((\Unit1|Unit1|U2|RFr1\(14) & (!\Unit1|Unit1|U3|Add0~44\)) # (!\Unit1|Unit1|U2|RFr1\(14) & ((\Unit1|Unit1|U3|Add0~44\) # (GND)))))
-- \Unit1|Unit1|U3|Add0~49\ = CARRY((\Unit1|Unit1|U3|Add0~47_combout\ & (!\Unit1|Unit1|U2|RFr1\(14) & !\Unit1|Unit1|U3|Add0~44\)) # (!\Unit1|Unit1|U3|Add0~47_combout\ & ((!\Unit1|Unit1|U3|Add0~44\) # (!\Unit1|Unit1|U2|RFr1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~47_combout\,
	datab => \Unit1|Unit1|U2|RFr1\(14),
	datad => VCC,
	cin => \Unit1|Unit1|U3|Add0~44\,
	combout => \Unit1|Unit1|U3|Add0~48_combout\,
	cout => \Unit1|Unit1|U3|Add0~49\);

-- Location: LCCOMB_X62_Y45_N28
\Unit1|Unit1|U3|ALUz~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~7_combout\ = (\Unit1|Unit1|U3|ALUz~6_combout\ & (((!\Unit1|Unit1|U3|Add0~48_combout\ & !\Unit1|Unit1|U3|Add0~43_combout\)) # (!\Unit1|Unit0|U0|ALUs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|Unit1|U3|ALUz~6_combout\,
	datac => \Unit1|Unit1|U3|Add0~48_combout\,
	datad => \Unit1|Unit1|U3|Add0~43_combout\,
	combout => \Unit1|Unit1|U3|ALUz~7_combout\);

-- Location: LCCOMB_X63_Y42_N24
\Unit1|Unit1|U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U1|Mux0~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(1) & (\Unit1|Unit0|U0|RFs_ctrl\(0))) # (!\Unit1|Unit0|U0|RFs_ctrl\(1) & ((\Unit1|Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(15))) # (!\Unit1|Unit0|U0|RFs_ctrl\(0) & 
-- ((\Unit1|Unit1|U3|Add0~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	datad => \Unit1|Unit1|U3|Add0~55_combout\,
	combout => \Unit1|Unit1|U1|Mux0~0_combout\);

-- Location: FF_X61_Y41_N13
\Unit1|Unit1|U2|tmp_rf[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[1][15]~q\);

-- Location: FF_X61_Y41_N19
\Unit1|Unit1|U2|tmp_rf[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[9][15]~q\);

-- Location: LCCOMB_X61_Y41_N18
\Unit1|Unit1|U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[9][15]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][15]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[9][15]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux0~0_combout\);

-- Location: FF_X62_Y42_N11
\Unit1|Unit1|U2|tmp_rf[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[13][15]~q\);

-- Location: FF_X62_Y41_N1
\Unit1|Unit1|U2|tmp_rf[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[5][15]~q\);

-- Location: LCCOMB_X62_Y42_N10
\Unit1|Unit1|U2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~1_combout\ = (\Unit1|Unit1|U2|Mux0~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[13][15]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|Unit1|U2|Mux0~0_combout\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux0~0_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[13][15]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][15]~q\,
	combout => \Unit1|Unit1|U2|Mux0~1_combout\);

-- Location: FF_X65_Y42_N11
\Unit1|Unit1|U2|tmp_rf[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[3][15]~q\);

-- Location: FF_X61_Y42_N15
\Unit1|Unit1|U2|tmp_rf[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][15]~q\);

-- Location: LCCOMB_X61_Y42_N14
\Unit1|Unit1|U2|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[11][15]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[3][15]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][15]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[11][15]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux0~7_combout\);

-- Location: FF_X61_Y42_N13
\Unit1|Unit1|U2|tmp_rf[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[7][15]~q\);

-- Location: FF_X63_Y42_N25
\Unit1|Unit1|U2|tmp_rf[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][15]~q\);

-- Location: LCCOMB_X62_Y42_N20
\Unit1|Unit1|U2|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~8_combout\ = (\Unit1|Unit1|U2|Mux0~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[15][15]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|Unit1|U2|Mux0~7_combout\ & (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[7][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux0~7_combout\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[7][15]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[15][15]~q\,
	combout => \Unit1|Unit1|U2|Mux0~8_combout\);

-- Location: FF_X59_Y41_N15
\Unit1|Unit1|U2|tmp_rf[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][15]~q\);

-- Location: FF_X58_Y41_N7
\Unit1|Unit1|U2|tmp_rf[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[0][15]~q\);

-- Location: FF_X59_Y41_N21
\Unit1|Unit1|U2|tmp_rf[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[4][15]~q\);

-- Location: LCCOMB_X59_Y41_N20
\Unit1|Unit1|U2|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][15]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[0][15]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][15]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux0~4_combout\);

-- Location: FF_X58_Y41_N5
\Unit1|Unit1|U2|tmp_rf[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[8][15]~q\);

-- Location: LCCOMB_X58_Y41_N4
\Unit1|Unit1|U2|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~5_combout\ = (\Unit1|Unit1|U2|Mux0~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][15]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit1|U2|Mux0~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[8][15]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[12][15]~q\,
	datab => \Unit1|Unit1|U2|Mux0~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[8][15]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux0~5_combout\);

-- Location: FF_X63_Y42_N31
\Unit1|Unit1|U2|tmp_rf[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[14][15]~q\);

-- Location: FF_X65_Y43_N21
\Unit1|Unit1|U2|tmp_rf[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[10][15]~q\);

-- Location: FF_X65_Y43_N7
\Unit1|Unit1|U2|tmp_rf[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[6][15]~q\);

-- Location: FF_X65_Y42_N7
\Unit1|Unit1|U2|tmp_rf[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[2][15]~q\);

-- Location: LCCOMB_X65_Y43_N6
\Unit1|Unit1|U2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[6][15]~q\)) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|tmp_rf[2][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[6][15]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[2][15]~q\,
	combout => \Unit1|Unit1|U2|Mux0~2_combout\);

-- Location: LCCOMB_X65_Y43_N20
\Unit1|Unit1|U2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux0~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][15]~q\)) # (!\Unit1|Unit1|U2|Mux0~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[10][15]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[14][15]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][15]~q\,
	datad => \Unit1|Unit1|U2|Mux0~2_combout\,
	combout => \Unit1|Unit1|U2|Mux0~3_combout\);

-- Location: LCCOMB_X65_Y42_N16
\Unit1|Unit1|U2|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(0)) # ((\Unit1|Unit1|U2|Mux0~3_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) & (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|Unit1|U2|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|Unit1|U2|Mux0~5_combout\,
	datad => \Unit1|Unit1|U2|Mux0~3_combout\,
	combout => \Unit1|Unit1|U2|Mux0~6_combout\);

-- Location: LCCOMB_X62_Y42_N28
\Unit1|Unit1|U2|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux0~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux0~6_combout\ & ((\Unit1|Unit1|U2|Mux0~8_combout\))) # (!\Unit1|Unit1|U2|Mux0~6_combout\ & (\Unit1|Unit1|U2|Mux0~1_combout\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux0~1_combout\,
	datab => \Unit1|Unit1|U2|Mux0~8_combout\,
	datac => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|Unit1|U2|Mux0~6_combout\,
	combout => \Unit1|Unit1|U2|Mux0~9_combout\);

-- Location: FF_X62_Y42_N29
\Unit1|Unit1|U2|RFr1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux0~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(15));

-- Location: LCCOMB_X62_Y41_N2
\Unit1|Unit1|U3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~52_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit1|U2|RFr2\(15),
	combout => \Unit1|Unit1|U3|Add0~52_combout\);

-- Location: LCCOMB_X62_Y45_N16
\Unit1|Unit1|U3|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~53_combout\ = \Unit1|Unit1|U2|RFr1\(15) $ (\Unit1|Unit1|U3|Add0~49\ $ (!\Unit1|Unit1|U3|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr1\(15),
	datad => \Unit1|Unit1|U3|Add0~52_combout\,
	cin => \Unit1|Unit1|U3|Add0~49\,
	combout => \Unit1|Unit1|U3|Add0~53_combout\);

-- Location: LCCOMB_X62_Y45_N30
\Unit1|Unit1|U3|ALUz~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~8_combout\ = (\Unit1|Unit1|U3|ALUz~7_combout\ & (!\Unit1|Unit1|U3|Add0~57_combout\ & ((!\Unit1|Unit1|U3|Add0~53_combout\) # (!\Unit1|Unit0|U0|ALUs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|Unit1|U3|ALUz~7_combout\,
	datac => \Unit1|Unit1|U3|Add0~53_combout\,
	datad => \Unit1|Unit1|U3|Add0~57_combout\,
	combout => \Unit1|Unit1|U3|ALUz~8_combout\);

-- Location: LCCOMB_X66_Y45_N0
\Unit1|Unit0|U0|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector73~0_combout\ = (\Unit1|Unit0|U0|state.S27a~q\) # ((!\Unit1|Unit0|U0|state.S27c~q\ & \Unit1|Unit0|U0|jmpen_ctrl~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S27c~q\,
	datac => \Unit1|Unit0|U0|jmpen_ctrl~q\,
	datad => \Unit1|Unit0|U0|state.S27a~q\,
	combout => \Unit1|Unit0|U0|Selector73~0_combout\);

-- Location: FF_X66_Y45_N1
\Unit1|Unit0|U0|jmpen_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector73~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|jmpen_ctrl~q\);

-- Location: LCCOMB_X63_Y45_N6
\Unit1|Unit1|U3|ALUz~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~10_combout\ = (!\Unit1|Unit1|U3|Add0~65_combout\ & (!\Unit1|Unit1|U3|Add0~63_combout\ & (!\Unit1|Unit1|U3|Add0~59_combout\ & !\Unit1|Unit1|U3|Add0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~65_combout\,
	datab => \Unit1|Unit1|U3|Add0~63_combout\,
	datac => \Unit1|Unit1|U3|Add0~59_combout\,
	datad => \Unit1|Unit1|U3|Add0~61_combout\,
	combout => \Unit1|Unit1|U3|ALUz~10_combout\);

-- Location: LCCOMB_X62_Y46_N6
\Unit1|Unit1|U3|ALUz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~0_combout\ = (!\Unit1|Unit1|U3|Add0~68_combout\ & (!\Unit1|Unit1|U3|Add0~67_combout\ & ((!\Unit1|Unit1|U3|Add0~27_combout\) # (!\Unit1|Unit0|U0|ALUs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|Unit1|U3|Add0~27_combout\,
	datac => \Unit1|Unit1|U3|Add0~68_combout\,
	datad => \Unit1|Unit1|U3|Add0~67_combout\,
	combout => \Unit1|Unit1|U3|ALUz~0_combout\);

-- Location: LCCOMB_X61_Y45_N22
\Unit1|Unit1|U3|ALUz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~1_combout\ = (!\Unit1|Unit1|U3|Add0~70_combout\ & (!\Unit1|Unit1|U3|Add0~72_combout\ & (!\Unit1|Unit1|U3|Add0~74_combout\ & !\Unit1|Unit1|U3|Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~70_combout\,
	datab => \Unit1|Unit1|U3|Add0~72_combout\,
	datac => \Unit1|Unit1|U3|Add0~74_combout\,
	datad => \Unit1|Unit1|U3|Add0~76_combout\,
	combout => \Unit1|Unit1|U3|ALUz~1_combout\);

-- Location: LCCOMB_X61_Y45_N20
\Unit1|Unit1|U3|ALUz~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~9_combout\ = (!\Unit1|Unit1|U3|Add0~78_combout\ & (!\Unit1|Unit1|U3|Add0~80_combout\ & (\Unit1|Unit1|U3|ALUz~0_combout\ & \Unit1|Unit1|U3|ALUz~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~78_combout\,
	datab => \Unit1|Unit1|U3|Add0~80_combout\,
	datac => \Unit1|Unit1|U3|ALUz~0_combout\,
	datad => \Unit1|Unit1|U3|ALUz~1_combout\,
	combout => \Unit1|Unit1|U3|ALUz~9_combout\);

-- Location: LCCOMB_X66_Y45_N24
\Unit1|Unit0|U1|tmp_PC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC~14_combout\ = ((!\Unit1|Unit1|U3|ALUz~9_combout\) # (!\Unit1|Unit1|U3|ALUz~10_combout\)) # (!\Unit1|Unit0|U0|jmpen_ctrl~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|jmpen_ctrl~q\,
	datac => \Unit1|Unit1|U3|ALUz~10_combout\,
	datad => \Unit1|Unit1|U3|ALUz~9_combout\,
	combout => \Unit1|Unit0|U1|tmp_PC~14_combout\);

-- Location: LCCOMB_X66_Y45_N2
\Unit1|Unit0|U1|tmp_PC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC~15_combout\ = \Unit1|Unit0|U0|PCinc_ctrl~q\ $ (((\Unit1|Unit1|U3|ALUz~8_combout\ & !\Unit1|Unit0|U1|tmp_PC~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	datac => \Unit1|Unit1|U3|ALUz~8_combout\,
	datad => \Unit1|Unit0|U1|tmp_PC~14_combout\,
	combout => \Unit1|Unit0|U1|tmp_PC~15_combout\);

-- Location: FF_X65_Y45_N7
\Unit1|Unit0|U1|tmp_PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[1]~16_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(1),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(1));

-- Location: FF_X65_Y45_N9
\Unit1|Unit0|U1|tmp_PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[2]~18_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(2),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(2));

-- Location: LCCOMB_X62_Y43_N14
\Unit1|Unit0|U3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux13~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(0) & (((\Unit1|Unit0|U2|dir_addr\(2)) # (!\Unit1|Unit0|U0|Ms_ctrl\(1))))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(2) & (\Unit1|Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr1\(2),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U2|dir_addr\(2),
	combout => \Unit1|Unit0|U3|Mux13~0_combout\);

-- Location: LCCOMB_X63_Y43_N22
\Unit1|Unit0|U3|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux13~1_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & (((\Unit1|Unit0|U3|Mux13~0_combout\)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U3|Mux13~0_combout\ & (\Unit1|Unit0|U2|IRout\(10))) # (!\Unit1|Unit0|U3|Mux13~0_combout\ & 
-- ((\Unit1|Unit0|U1|tmp_PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|Unit0|U2|IRout\(10),
	datac => \Unit1|Unit0|U1|tmp_PC\(2),
	datad => \Unit1|Unit0|U3|Mux13~0_combout\,
	combout => \Unit1|Unit0|U3|Mux13~1_combout\);

-- Location: M9K_X64_Y42_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000000000000000000000000000000000000000000450",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X60_Y44_N10
\Unit1|Unit0|U2|dir_addr[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(5) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(5)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|dir_addr\(5),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	combout => \Unit1|Unit0|U2|dir_addr\(5));

-- Location: LCCOMB_X60_Y44_N28
\Unit1|Unit0|U0|IR_PS2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[5]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U2|dir_addr\(5),
	combout => \Unit1|Unit0|U0|IR_PS2[5]~feeder_combout\);

-- Location: FF_X60_Y44_N29
\Unit1|Unit0|U0|IR_PS2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[5]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(5));

-- Location: LCCOMB_X62_Y44_N18
\Unit1|Unit0|U0|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector65~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\ & (((\Unit1|Unit0|U0|IR_PS2\(5))))) # (!\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|state.S25a~q\ & ((\Unit1|Unit0|U0|IR_PS2\(5)))) # (!\Unit1|Unit0|U0|state.S25a~q\ & 
-- (\Unit1|Unit0|U0|IR_PS2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(9),
	datab => \Unit1|Unit0|U0|IR_PS2\(5),
	datac => \Unit1|Unit0|U0|state.S26a~q\,
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|Selector65~0_combout\);

-- Location: FF_X62_Y44_N19
\Unit1|Unit0|U0|RFr1a_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector65~0_combout\,
	ena => \Unit1|Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr1a_ctrl\(1));

-- Location: LCCOMB_X61_Y42_N24
\Unit1|Unit1|U2|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~7_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[7][1]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|tmp_rf[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[3][1]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[7][1]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux14~7_combout\);

-- Location: LCCOMB_X65_Y44_N2
\Unit1|Unit1|U2|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~8_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux14~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][1]~q\)) # (!\Unit1|Unit1|U2|Mux14~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][1]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][1]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux14~7_combout\,
	datad => \Unit1|Unit1|U2|tmp_rf[11][1]~q\,
	combout => \Unit1|Unit1|U2|Mux14~8_combout\);

-- Location: LCCOMB_X61_Y39_N20
\Unit1|Unit1|U2|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~2_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[5][1]~q\) # (\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|Unit1|U2|tmp_rf[1][1]~q\ & ((!\Unit1|Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][1]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[5][1]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux14~2_combout\);

-- Location: LCCOMB_X62_Y40_N8
\Unit1|Unit1|U2|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~3_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux14~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][1]~q\))) # (!\Unit1|Unit1|U2|Mux14~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[9][1]~q\)))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) 
-- & (\Unit1|Unit1|U2|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux14~2_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[9][1]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[13][1]~q\,
	combout => \Unit1|Unit1|U2|Mux14~3_combout\);

-- Location: LCCOMB_X58_Y41_N24
\Unit1|Unit1|U2|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~4_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[8][1]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[0][1]~q\,
	datab => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[8][1]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux14~4_combout\);

-- Location: LCCOMB_X60_Y41_N10
\Unit1|Unit1|U2|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~5_combout\ = (\Unit1|Unit1|U2|Mux14~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][1]~q\) # ((!\Unit1|Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux14~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[4][1]~q\ & 
-- \Unit1|Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[12][1]~q\,
	datab => \Unit1|Unit1|U2|Mux14~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[4][1]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux14~5_combout\);

-- Location: LCCOMB_X62_Y40_N20
\Unit1|Unit1|U2|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~6_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux14~3_combout\) # ((\Unit1|Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|Unit1|U2|Mux14~5_combout\ & !\Unit1|Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux14~3_combout\,
	datac => \Unit1|Unit1|U2|Mux14~5_combout\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux14~6_combout\);

-- Location: LCCOMB_X59_Y42_N28
\Unit1|Unit1|U2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~0_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[10][1]~q\))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[2][1]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][1]~q\,
	datad => \Unit1|Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux14~0_combout\);

-- Location: LCCOMB_X65_Y44_N16
\Unit1|Unit1|U2|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~1_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux14~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[14][1]~q\)) # (!\Unit1|Unit1|U2|Mux14~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[6][1]~q\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(2) 
-- & (\Unit1|Unit1|U2|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux14~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][1]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[6][1]~q\,
	combout => \Unit1|Unit1|U2|Mux14~1_combout\);

-- Location: LCCOMB_X65_Y44_N24
\Unit1|Unit1|U2|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux14~9_combout\ = (\Unit1|Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux14~6_combout\ & (\Unit1|Unit1|U2|Mux14~8_combout\)) # (!\Unit1|Unit1|U2|Mux14~6_combout\ & ((\Unit1|Unit1|U2|Mux14~1_combout\))))) # (!\Unit1|Unit0|U0|RFr1a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux14~8_combout\,
	datac => \Unit1|Unit1|U2|Mux14~6_combout\,
	datad => \Unit1|Unit1|U2|Mux14~1_combout\,
	combout => \Unit1|Unit1|U2|Mux14~9_combout\);

-- Location: FF_X65_Y44_N25
\Unit1|Unit1|U2|RFr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux14~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr1\(1));

-- Location: LCCOMB_X65_Y44_N28
\Unit1|Unit0|U3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux14~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & (\Unit1|Unit1|U2|RFr1\(1) & ((!\Unit1|Unit0|U0|Ms_ctrl\(0))))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (((\Unit1|Unit0|U1|tmp_PC\(1)) # (\Unit1|Unit0|U0|Ms_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|Unit1|U2|RFr1\(1),
	datac => \Unit1|Unit0|U1|tmp_PC\(1),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(0),
	combout => \Unit1|Unit0|U3|Mux14~0_combout\);

-- Location: LCCOMB_X65_Y44_N6
\Unit1|Unit0|U3|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux14~1_combout\ = (\Unit1|Unit0|U3|Mux14~0_combout\ & (((\Unit1|Unit0|U2|IRout\(9))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0)))) # (!\Unit1|Unit0|U3|Mux14~0_combout\ & (\Unit1|Unit0|U0|Ms_ctrl\(0) & ((\Unit1|Unit0|U2|dir_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U3|Mux14~0_combout\,
	datab => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datac => \Unit1|Unit0|U2|IRout\(9),
	datad => \Unit1|Unit0|U2|dir_addr\(1),
	combout => \Unit1|Unit0|U3|Mux14~1_combout\);

-- Location: M9K_X64_Y46_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A5100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X62_Y44_N8
\Unit1|Unit0|U2|IRout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(10) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(10)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(10),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	combout => \Unit1|Unit0|U2|IRout\(10));

-- Location: FF_X62_Y44_N9
\Unit1|Unit0|U0|IR_PS2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U2|IRout\(10),
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(10));

-- Location: LCCOMB_X63_Y44_N28
\Unit1|Unit0|U0|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector58~0_combout\ = (\Unit1|Unit0|U0|IR_PS2\(10) & (((\Unit1|Unit0|U0|RFwa_ctrl\(2) & \Unit1|Unit0|U0|WideOr54~combout\)) # (!\Unit1|Unit0|U0|WideOr54~0_combout\))) # (!\Unit1|Unit0|U0|IR_PS2\(10) & (((\Unit1|Unit0|U0|RFwa_ctrl\(2) & 
-- \Unit1|Unit0|U0|WideOr54~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(10),
	datab => \Unit1|Unit0|U0|WideOr54~0_combout\,
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	datad => \Unit1|Unit0|U0|WideOr54~combout\,
	combout => \Unit1|Unit0|U0|Selector58~0_combout\);

-- Location: FF_X63_Y44_N29
\Unit1|Unit0|U0|RFwa_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector58~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFwa_ctrl\(2));

-- Location: LCCOMB_X61_Y41_N8
\Unit1|Unit1|U2|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~12_combout\ = (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (\Unit1|Unit0|U0|RFwa_ctrl\(2) & (!\Unit1|Unit0|U0|RFwa_ctrl\(0) & !\Unit1|Unit0|U0|RFwa_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	combout => \Unit1|Unit1|U2|Decoder0~12_combout\);

-- Location: LCCOMB_X59_Y41_N30
\Unit1|Unit1|U2|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~22_combout\ = (\Unit1|Unit1|U2|Decoder0~12_combout\ & \Unit1|Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Decoder0~12_combout\,
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|Unit1|U2|Decoder0~22_combout\);

-- Location: FF_X60_Y41_N9
\Unit1|Unit1|U2|tmp_rf[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[12][6]~q\);

-- Location: LCCOMB_X60_Y41_N8
\Unit1|Unit1|U2|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|Unit1|U2|tmp_rf[13][6]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[12][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[12][6]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[13][6]~q\,
	combout => \Unit1|Unit1|U2|Mux25~7_combout\);

-- Location: LCCOMB_X59_Y43_N26
\Unit1|Unit1|U2|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~8_combout\ = (\Unit1|Unit1|U2|Mux25~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][6]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux25~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][6]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux25~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][6]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[14][6]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux25~8_combout\);

-- Location: LCCOMB_X60_Y40_N14
\Unit1|Unit1|U2|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][6]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[0][6]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[2][6]~q\,
	combout => \Unit1|Unit1|U2|Mux25~4_combout\);

-- Location: LCCOMB_X61_Y40_N28
\Unit1|Unit1|U2|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux25~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][6]~q\)) # (!\Unit1|Unit1|U2|Mux25~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[1][6]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux25~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][6]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][6]~q\,
	combout => \Unit1|Unit1|U2|Mux25~5_combout\);

-- Location: LCCOMB_X60_Y40_N12
\Unit1|Unit1|U2|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[10][6]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[8][6]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][6]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][6]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux25~2_combout\);

-- Location: LCCOMB_X58_Y40_N10
\Unit1|Unit1|U2|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux25~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][6]~q\))) # (!\Unit1|Unit1|U2|Mux25~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[9][6]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[9][6]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][6]~q\,
	datad => \Unit1|Unit1|U2|Mux25~2_combout\,
	combout => \Unit1|Unit1|U2|Mux25~3_combout\);

-- Location: LCCOMB_X61_Y40_N4
\Unit1|Unit1|U2|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux25~3_combout\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux25~5_combout\,
	datac => \Unit1|Unit1|U2|Mux25~3_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux25~6_combout\);

-- Location: LCCOMB_X60_Y41_N30
\Unit1|Unit1|U2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|Unit1|U2|tmp_rf[5][6]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[4][6]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][6]~q\,
	combout => \Unit1|Unit1|U2|Mux25~0_combout\);

-- Location: LCCOMB_X60_Y39_N20
\Unit1|Unit1|U2|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~1_combout\ = (\Unit1|Unit1|U2|Mux25~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][6]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux25~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[6][6]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[7][6]~q\,
	datab => \Unit1|Unit1|U2|Mux25~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][6]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux25~1_combout\);

-- Location: LCCOMB_X63_Y43_N24
\Unit1|Unit1|U2|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux25~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux25~6_combout\ & (\Unit1|Unit1|U2|Mux25~8_combout\)) # (!\Unit1|Unit1|U2|Mux25~6_combout\ & ((\Unit1|Unit1|U2|Mux25~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux25~8_combout\,
	datac => \Unit1|Unit1|U2|Mux25~6_combout\,
	datad => \Unit1|Unit1|U2|Mux25~1_combout\,
	combout => \Unit1|Unit1|U2|Mux25~9_combout\);

-- Location: FF_X63_Y43_N25
\Unit1|Unit1|U2|RFr2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux25~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(6));

-- Location: LCCOMB_X63_Y45_N4
\Unit1|Unit1|U3|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~77_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(6))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr2\(6),
	datab => \Unit1|Unit1|U2|RFr1\(6),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~77_combout\);

-- Location: LCCOMB_X61_Y45_N16
\Unit1|Unit1|U3|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~78_combout\ = (\Unit1|Unit1|U3|Add0~77_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~77_combout\,
	datad => \Unit1|Unit1|U3|Add0~29_combout\,
	combout => \Unit1|Unit1|U3|Add0~78_combout\);

-- Location: LCCOMB_X61_Y43_N12
\Unit1|Unit0|U2|dir_addr[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(6) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(6)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|dir_addr\(6),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	combout => \Unit1|Unit0|U2|dir_addr\(6));

-- Location: LCCOMB_X60_Y44_N6
\Unit1|Unit0|U0|IR_PS2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[6]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U2|dir_addr\(6),
	combout => \Unit1|Unit0|U0|IR_PS2[6]~feeder_combout\);

-- Location: FF_X60_Y44_N7
\Unit1|Unit0|U0|IR_PS2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[6]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(6));

-- Location: LCCOMB_X60_Y44_N26
\Unit1|Unit0|U0|IR_PS2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[2]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U2|dir_addr\(2),
	combout => \Unit1|Unit0|U0|IR_PS2[2]~feeder_combout\);

-- Location: FF_X60_Y44_N27
\Unit1|Unit0|U0|IR_PS2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[2]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(2));

-- Location: LCCOMB_X60_Y44_N4
\Unit1|Unit0|U0|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector70~0_combout\ = (\Unit1|Unit0|U0|state.S25a~q\ & (((\Unit1|Unit0|U0|IR_PS2\(2))))) # (!\Unit1|Unit0|U0|state.S25a~q\ & ((\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|IR_PS2\(2)))) # (!\Unit1|Unit0|U0|state.S26a~q\ & 
-- (\Unit1|Unit0|U0|IR_PS2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(6),
	datab => \Unit1|Unit0|U0|state.S25a~q\,
	datac => \Unit1|Unit0|U0|IR_PS2\(2),
	datad => \Unit1|Unit0|U0|state.S26a~q\,
	combout => \Unit1|Unit0|U0|Selector70~0_combout\);

-- Location: LCCOMB_X63_Y44_N22
\Unit1|Unit0|U0|RFr2a_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\ = (!\Unit1|Unit0|U0|state.S28~q\ & (!\sys_rst~input_o\ & ((\Unit1|Unit0|U0|state.S23a~q\) # (!\Unit1|Unit0|U0|WideOr61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr61~0_combout\,
	datab => \Unit1|Unit0|U0|state.S28~q\,
	datac => \Unit1|Unit0|U0|state.S23a~q\,
	datad => \sys_rst~input_o\,
	combout => \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\);

-- Location: FF_X60_Y44_N5
\Unit1|Unit0|U0|RFr2a_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector70~0_combout\,
	ena => \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr2a_ctrl\(2));

-- Location: LCCOMB_X60_Y41_N22
\Unit1|Unit1|U2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[5][2]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[5][2]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[4][2]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux29~0_combout\);

-- Location: LCCOMB_X61_Y43_N24
\Unit1|Unit1|U2|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~1_combout\ = (\Unit1|Unit1|U2|Mux29~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][2]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux29~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[6][2]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[7][2]~q\,
	datab => \Unit1|Unit1|U2|Mux29~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][2]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux29~1_combout\);

-- Location: LCCOMB_X58_Y43_N30
\Unit1|Unit1|U2|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[13][2]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[13][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][2]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux29~7_combout\);

-- Location: LCCOMB_X62_Y43_N8
\Unit1|Unit1|U2|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux29~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][2]~q\)) # (!\Unit1|Unit1|U2|Mux29~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[14][2]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][2]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[14][2]~q\,
	datad => \Unit1|Unit1|U2|Mux29~7_combout\,
	combout => \Unit1|Unit1|U2|Mux29~8_combout\);

-- Location: LCCOMB_X60_Y40_N30
\Unit1|Unit1|U2|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][2]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[0][2]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[2][2]~q\,
	combout => \Unit1|Unit1|U2|Mux29~4_combout\);

-- Location: LCCOMB_X61_Y40_N26
\Unit1|Unit1|U2|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux29~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[3][2]~q\)) # (!\Unit1|Unit1|U2|Mux29~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[1][2]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux29~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux29~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][2]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][2]~q\,
	combout => \Unit1|Unit1|U2|Mux29~5_combout\);

-- Location: LCCOMB_X60_Y40_N20
\Unit1|Unit1|U2|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[10][2]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[8][2]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[10][2]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][2]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux29~2_combout\);

-- Location: LCCOMB_X58_Y40_N18
\Unit1|Unit1|U2|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux29~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][2]~q\))) # (!\Unit1|Unit1|U2|Mux29~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[9][2]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[9][2]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[11][2]~q\,
	datad => \Unit1|Unit1|U2|Mux29~2_combout\,
	combout => \Unit1|Unit1|U2|Mux29~3_combout\);

-- Location: LCCOMB_X61_Y40_N22
\Unit1|Unit1|U2|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux29~3_combout\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux29~5_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|Unit1|U2|Mux29~3_combout\,
	combout => \Unit1|Unit1|U2|Mux29~6_combout\);

-- Location: LCCOMB_X62_Y43_N30
\Unit1|Unit1|U2|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux29~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux29~6_combout\ & ((\Unit1|Unit1|U2|Mux29~8_combout\))) # (!\Unit1|Unit1|U2|Mux29~6_combout\ & (\Unit1|Unit1|U2|Mux29~1_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) 
-- & (((\Unit1|Unit1|U2|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux29~1_combout\,
	datac => \Unit1|Unit1|U2|Mux29~8_combout\,
	datad => \Unit1|Unit1|U2|Mux29~6_combout\,
	combout => \Unit1|Unit1|U2|Mux29~9_combout\);

-- Location: FF_X62_Y43_N31
\Unit1|Unit1|U2|RFr2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux29~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(2));

-- Location: LCCOMB_X62_Y43_N2
\Unit1|Unit1|U3|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~73_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(2))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr2\(2),
	datab => \Unit1|Unit1|U2|RFr1\(2),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|Unit1|U3|Add0~73_combout\);

-- Location: LCCOMB_X61_Y45_N26
\Unit1|Unit1|U3|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~74_combout\ = (\Unit1|Unit1|U3|Add0~73_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~73_combout\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~21_combout\,
	combout => \Unit1|Unit1|U3|Add0~74_combout\);

-- Location: LCCOMB_X60_Y44_N8
\Unit1|Unit0|U2|dir_addr[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(3) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(3)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|dir_addr\(3),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	combout => \Unit1|Unit0|U2|dir_addr\(3));

-- Location: LCCOMB_X60_Y44_N12
\Unit1|Unit0|U0|IR_PS2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[3]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U2|dir_addr\(3),
	combout => \Unit1|Unit0|U0|IR_PS2[3]~feeder_combout\);

-- Location: FF_X60_Y44_N13
\Unit1|Unit0|U0|IR_PS2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[3]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(3));

-- Location: LCCOMB_X60_Y44_N30
\Unit1|Unit0|U0|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector69~0_combout\ = (\Unit1|Unit0|U0|state.S25a~q\ & (\Unit1|Unit0|U0|IR_PS2\(3))) # (!\Unit1|Unit0|U0|state.S25a~q\ & ((\Unit1|Unit0|U0|state.S26a~q\ & (\Unit1|Unit0|U0|IR_PS2\(3))) # (!\Unit1|Unit0|U0|state.S26a~q\ & 
-- ((\Unit1|Unit0|U0|IR_PS2\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(3),
	datab => \Unit1|Unit0|U0|state.S25a~q\,
	datac => \Unit1|Unit0|U0|IR_PS2\(7),
	datad => \Unit1|Unit0|U0|state.S26a~q\,
	combout => \Unit1|Unit0|U0|Selector69~0_combout\);

-- Location: FF_X60_Y44_N31
\Unit1|Unit0|U0|RFr2a_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector69~0_combout\,
	ena => \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr2a_ctrl\(3));

-- Location: LCCOMB_X60_Y40_N8
\Unit1|Unit1|U2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[9][8]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[8][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[9][8]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][8]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux23~0_combout\);

-- Location: LCCOMB_X59_Y42_N8
\Unit1|Unit1|U2|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~1_combout\ = (\Unit1|Unit1|U2|Mux23~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][8]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux23~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[10][8]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[11][8]~q\,
	datab => \Unit1|Unit1|U2|Mux23~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][8]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux23~1_combout\);

-- Location: LCCOMB_X58_Y43_N2
\Unit1|Unit1|U2|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[14][8]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[12][8]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[14][8]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][8]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux23~7_combout\);

-- Location: LCCOMB_X58_Y43_N8
\Unit1|Unit1|U2|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux23~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][8]~q\))) # (!\Unit1|Unit1|U2|Mux23~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][8]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (\Unit1|Unit1|U2|Mux23~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux23~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[15][8]~q\,
	combout => \Unit1|Unit1|U2|Mux23~8_combout\);

-- Location: LCCOMB_X60_Y40_N2
\Unit1|Unit1|U2|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|Unit1|U2|tmp_rf[1][8]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[0][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][8]~q\,
	combout => \Unit1|Unit1|U2|Mux23~4_combout\);

-- Location: LCCOMB_X61_Y40_N20
\Unit1|Unit1|U2|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~5_combout\ = (\Unit1|Unit1|U2|Mux23~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[3][8]~q\) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux23~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[2][8]~q\ & 
-- ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux23~4_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[2][8]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][8]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux23~5_combout\);

-- Location: LCCOMB_X60_Y41_N26
\Unit1|Unit1|U2|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][8]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[4][8]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[6][8]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[4][8]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux23~2_combout\);

-- Location: LCCOMB_X60_Y43_N2
\Unit1|Unit1|U2|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~3_combout\ = (\Unit1|Unit1|U2|Mux23~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][8]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0)))) # (!\Unit1|Unit1|U2|Mux23~2_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[5][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux23~2_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[7][8]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][8]~q\,
	combout => \Unit1|Unit1|U2|Mux23~3_combout\);

-- Location: LCCOMB_X63_Y43_N28
\Unit1|Unit1|U2|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux23~3_combout\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- (\Unit1|Unit1|U2|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux23~5_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux23~3_combout\,
	combout => \Unit1|Unit1|U2|Mux23~6_combout\);

-- Location: LCCOMB_X63_Y43_N30
\Unit1|Unit1|U2|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux23~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux23~6_combout\ & ((\Unit1|Unit1|U2|Mux23~8_combout\))) # (!\Unit1|Unit1|U2|Mux23~6_combout\ & (\Unit1|Unit1|U2|Mux23~1_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux23~1_combout\,
	datac => \Unit1|Unit1|U2|Mux23~8_combout\,
	datad => \Unit1|Unit1|U2|Mux23~6_combout\,
	combout => \Unit1|Unit1|U2|Mux23~9_combout\);

-- Location: FF_X63_Y43_N31
\Unit1|Unit1|U2|RFr2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux23~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(8));

-- Location: LCCOMB_X63_Y45_N12
\Unit1|Unit1|U3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~62_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(8))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr2\(8),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(8),
	combout => \Unit1|Unit1|U3|Add0~62_combout\);

-- Location: LCCOMB_X63_Y45_N14
\Unit1|Unit1|U3|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~63_combout\ = (\Unit1|Unit1|U3|Add0~62_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~62_combout\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~33_combout\,
	combout => \Unit1|Unit1|U3|Add0~63_combout\);

-- Location: LCCOMB_X62_Y44_N14
\Unit1|Unit0|U2|IRout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(9) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(9)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(9),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	combout => \Unit1|Unit0|U2|IRout\(9));

-- Location: FF_X62_Y44_N15
\Unit1|Unit0|U0|IR_PS2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U2|IRout\(9),
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(9));

-- Location: LCCOMB_X63_Y44_N2
\Unit1|Unit0|U0|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector59~0_combout\ = (\Unit1|Unit0|U0|WideOr54~0_combout\ & (((\Unit1|Unit0|U0|RFwa_ctrl\(1) & \Unit1|Unit0|U0|WideOr54~combout\)))) # (!\Unit1|Unit0|U0|WideOr54~0_combout\ & ((\Unit1|Unit0|U0|IR_PS2\(9)) # 
-- ((\Unit1|Unit0|U0|RFwa_ctrl\(1) & \Unit1|Unit0|U0|WideOr54~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr54~0_combout\,
	datab => \Unit1|Unit0|U0|IR_PS2\(9),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	datad => \Unit1|Unit0|U0|WideOr54~combout\,
	combout => \Unit1|Unit0|U0|Selector59~0_combout\);

-- Location: FF_X63_Y44_N3
\Unit1|Unit0|U0|RFwa_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector59~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFwa_ctrl\(1));

-- Location: LCCOMB_X61_Y41_N10
\Unit1|Unit1|U2|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~6_combout\ = (\Unit1|Unit0|U0|RFwa_ctrl\(1) & (\Unit1|Unit0|U0|RFwe_ctrl~q\ & (\Unit1|Unit0|U0|RFwa_ctrl\(0) & !\Unit1|Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit1|Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|Unit1|U2|Decoder0~6_combout\);

-- Location: LCCOMB_X58_Y43_N22
\Unit1|Unit1|U2|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~7_combout\ = (\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit1|U2|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|Unit1|U2|Decoder0~6_combout\,
	combout => \Unit1|Unit1|U2|Decoder0~7_combout\);

-- Location: FF_X60_Y42_N9
\Unit1|Unit1|U2|tmp_rf[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[11][0]~q\);

-- Location: LCCOMB_X60_Y40_N16
\Unit1|Unit1|U2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[9][0]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[9][0]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][0]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux31~0_combout\);

-- Location: LCCOMB_X59_Y42_N16
\Unit1|Unit1|U2|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux31~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[11][0]~q\)) # (!\Unit1|Unit1|U2|Mux31~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[10][0]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (((\Unit1|Unit1|U2|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[11][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][0]~q\,
	datad => \Unit1|Unit1|U2|Mux31~0_combout\,
	combout => \Unit1|Unit1|U2|Mux31~1_combout\);

-- Location: LCCOMB_X60_Y41_N0
\Unit1|Unit1|U2|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][0]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[4][0]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[6][0]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[4][0]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux31~2_combout\);

-- Location: LCCOMB_X60_Y43_N8
\Unit1|Unit1|U2|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux31~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][0]~q\))) # (!\Unit1|Unit1|U2|Mux31~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[5][0]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- (((\Unit1|Unit1|U2|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|tmp_rf[5][0]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][0]~q\,
	datad => \Unit1|Unit1|U2|Mux31~2_combout\,
	combout => \Unit1|Unit1|U2|Mux31~3_combout\);

-- Location: LCCOMB_X60_Y40_N10
\Unit1|Unit1|U2|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|tmp_rf[1][0]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|Unit1|U2|tmp_rf[0][0]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][0]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[0][0]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux31~4_combout\);

-- Location: LCCOMB_X60_Y42_N10
\Unit1|Unit1|U2|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~5_combout\ = (\Unit1|Unit1|U2|Mux31~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[3][0]~q\) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux31~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[2][0]~q\ & 
-- ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[2][0]~q\,
	datab => \Unit1|Unit1|U2|Mux31~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][0]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux31~5_combout\);

-- Location: LCCOMB_X60_Y43_N28
\Unit1|Unit1|U2|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|Mux31~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|Mux31~3_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux31~5_combout\,
	combout => \Unit1|Unit1|U2|Mux31~6_combout\);

-- Location: LCCOMB_X58_Y43_N18
\Unit1|Unit1|U2|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|Unit1|U2|tmp_rf[14][0]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[12][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[12][0]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[14][0]~q\,
	combout => \Unit1|Unit1|U2|Mux31~7_combout\);

-- Location: LCCOMB_X58_Y43_N16
\Unit1|Unit1|U2|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux31~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][0]~q\))) # (!\Unit1|Unit1|U2|Mux31~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][0]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (\Unit1|Unit1|U2|Mux31~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux31~7_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[13][0]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[15][0]~q\,
	combout => \Unit1|Unit1|U2|Mux31~8_combout\);

-- Location: LCCOMB_X63_Y46_N0
\Unit1|Unit1|U2|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux31~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux31~6_combout\ & ((\Unit1|Unit1|U2|Mux31~8_combout\))) # (!\Unit1|Unit1|U2|Mux31~6_combout\ & (\Unit1|Unit1|U2|Mux31~1_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux31~1_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|Mux31~6_combout\,
	datad => \Unit1|Unit1|U2|Mux31~8_combout\,
	combout => \Unit1|Unit1|U2|Mux31~9_combout\);

-- Location: FF_X62_Y46_N1
\Unit1|Unit1|U2|RFr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit1|U2|Mux31~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(0));

-- Location: LCCOMB_X61_Y46_N8
\Unit1|Unit1|U3|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~69_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(0))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr2\(0),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(0),
	combout => \Unit1|Unit1|U3|Add0~69_combout\);

-- Location: LCCOMB_X61_Y46_N26
\Unit1|Unit1|U3|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~70_combout\ = (\Unit1|Unit1|U3|Add0~69_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~69_combout\,
	datad => \Unit1|Unit1|U3|Add0~17_combout\,
	combout => \Unit1|Unit1|U3|Add0~70_combout\);

-- Location: M9K_X64_Y48_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000055105",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X60_Y44_N14
\Unit1|Unit0|U2|dir_addr[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(1) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(1)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|dir_addr\(1),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	combout => \Unit1|Unit0|U2|dir_addr\(1));

-- Location: LCCOMB_X60_Y44_N16
\Unit1|Unit0|U0|IR_PS2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[1]~feeder_combout\ = \Unit1|Unit0|U2|dir_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U2|dir_addr\(1),
	combout => \Unit1|Unit0|U0|IR_PS2[1]~feeder_combout\);

-- Location: FF_X60_Y44_N17
\Unit1|Unit0|U0|IR_PS2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IR_PS2[1]~feeder_combout\,
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(1));

-- Location: LCCOMB_X60_Y44_N2
\Unit1|Unit0|U0|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector71~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\ & (\Unit1|Unit0|U0|IR_PS2\(1))) # (!\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|state.S25a~q\ & (\Unit1|Unit0|U0|IR_PS2\(1))) # (!\Unit1|Unit0|U0|state.S25a~q\ & 
-- ((\Unit1|Unit0|U0|IR_PS2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(1),
	datab => \Unit1|Unit0|U0|state.S26a~q\,
	datac => \Unit1|Unit0|U0|IR_PS2\(5),
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|Selector71~0_combout\);

-- Location: FF_X60_Y44_N3
\Unit1|Unit0|U0|RFr2a_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector71~0_combout\,
	ena => \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr2a_ctrl\(1));

-- Location: LCCOMB_X59_Y41_N18
\Unit1|Unit1|U2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|tmp_rf[5][10]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|tmp_rf[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[4][10]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][10]~q\,
	combout => \Unit1|Unit1|U2|Mux21~0_combout\);

-- Location: LCCOMB_X60_Y39_N24
\Unit1|Unit1|U2|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~1_combout\ = (\Unit1|Unit1|U2|Mux21~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[7][10]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux21~0_combout\ & (((\Unit1|Unit1|U2|tmp_rf[6][10]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux21~0_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[7][10]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[6][10]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux21~1_combout\);

-- Location: LCCOMB_X60_Y40_N28
\Unit1|Unit1|U2|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[10][10]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[8][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][10]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[10][10]~q\,
	combout => \Unit1|Unit1|U2|Mux21~2_combout\);

-- Location: LCCOMB_X60_Y42_N12
\Unit1|Unit1|U2|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~3_combout\ = (\Unit1|Unit1|U2|Mux21~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[11][10]~q\) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit1|U2|Mux21~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[9][10]~q\ & 
-- ((\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[9][10]~q\,
	datab => \Unit1|Unit1|U2|tmp_rf[11][10]~q\,
	datac => \Unit1|Unit1|U2|Mux21~2_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux21~3_combout\);

-- Location: LCCOMB_X60_Y40_N6
\Unit1|Unit1|U2|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[2][10]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[0][10]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[2][10]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[0][10]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux21~4_combout\);

-- Location: LCCOMB_X60_Y42_N6
\Unit1|Unit1|U2|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux21~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[3][10]~q\))) # (!\Unit1|Unit1|U2|Mux21~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[1][10]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[1][10]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[3][10]~q\,
	datad => \Unit1|Unit1|U2|Mux21~4_combout\,
	combout => \Unit1|Unit1|U2|Mux21~5_combout\);

-- Location: LCCOMB_X59_Y42_N20
\Unit1|Unit1|U2|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|Mux21~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|Mux21~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|Mux21~3_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|Unit1|U2|Mux21~5_combout\,
	combout => \Unit1|Unit1|U2|Mux21~6_combout\);

-- Location: LCCOMB_X58_Y43_N24
\Unit1|Unit1|U2|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|Unit1|U2|tmp_rf[13][10]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- ((\Unit1|Unit1|U2|tmp_rf[12][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[13][10]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[12][10]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux21~7_combout\);

-- Location: LCCOMB_X59_Y43_N18
\Unit1|Unit1|U2|Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux21~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][10]~q\)) # (!\Unit1|Unit1|U2|Mux21~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[14][10]~q\))))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][10]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[14][10]~q\,
	datad => \Unit1|Unit1|U2|Mux21~7_combout\,
	combout => \Unit1|Unit1|U2|Mux21~8_combout\);

-- Location: LCCOMB_X63_Y43_N26
\Unit1|Unit1|U2|Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux21~9_combout\ = (\Unit1|Unit1|U2|Mux21~6_combout\ & (((\Unit1|Unit1|U2|Mux21~8_combout\) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux21~6_combout\ & (\Unit1|Unit1|U2|Mux21~1_combout\ & 
-- (\Unit1|Unit0|U0|RFr2a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux21~1_combout\,
	datab => \Unit1|Unit1|U2|Mux21~6_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux21~8_combout\,
	combout => \Unit1|Unit1|U2|Mux21~9_combout\);

-- Location: FF_X63_Y43_N27
\Unit1|Unit1|U2|RFr2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux21~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(10));

-- Location: LCCOMB_X63_Y45_N20
\Unit1|Unit1|U3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~4_combout\ = \Unit1|Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|Unit1|U2|RFr2\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|Unit1|U2|RFr2\(10),
	combout => \Unit1|Unit1|U3|Add0~4_combout\);

-- Location: LCCOMB_X63_Y45_N0
\Unit1|Unit1|U3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~58_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(10))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr2\(10),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(10),
	combout => \Unit1|Unit1|U3|Add0~58_combout\);

-- Location: LCCOMB_X63_Y45_N26
\Unit1|Unit1|U3|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~59_combout\ = (\Unit1|Unit1|U3|Add0~58_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~37_combout\,
	datad => \Unit1|Unit1|U3|Add0~58_combout\,
	combout => \Unit1|Unit1|U3|Add0~59_combout\);

-- Location: LCCOMB_X65_Y46_N8
\Unit1|Unit0|U2|IRout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(11) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(11)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(11),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	combout => \Unit1|Unit0|U2|IRout\(11));

-- Location: FF_X65_Y46_N9
\Unit1|Unit0|U0|IR_PS2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U2|IRout\(11),
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(11));

-- Location: LCCOMB_X63_Y44_N14
\Unit1|Unit0|U0|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector57~0_combout\ = (\Unit1|Unit0|U0|WideOr54~0_combout\ & (((\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit0|U0|WideOr54~combout\)))) # (!\Unit1|Unit0|U0|WideOr54~0_combout\ & ((\Unit1|Unit0|U0|IR_PS2\(11)) # 
-- ((\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit0|U0|WideOr54~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr54~0_combout\,
	datab => \Unit1|Unit0|U0|IR_PS2\(11),
	datac => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|Unit0|U0|WideOr54~combout\,
	combout => \Unit1|Unit0|U0|Selector57~0_combout\);

-- Location: FF_X63_Y44_N15
\Unit1|Unit0|U0|RFwa_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector57~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFwa_ctrl\(3));

-- Location: LCCOMB_X62_Y42_N16
\Unit1|Unit1|U2|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Decoder0~23_combout\ = (\Unit1|Unit0|U0|RFwa_ctrl\(3) & \Unit1|Unit1|U2|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|RFwa_ctrl\(3),
	datac => \Unit1|Unit1|U2|Decoder0~14_combout\,
	combout => \Unit1|Unit1|U2|Decoder0~23_combout\);

-- Location: FF_X61_Y44_N23
\Unit1|Unit1|U2|tmp_rf[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|tmp_rf[15][4]~q\);

-- Location: LCCOMB_X59_Y41_N28
\Unit1|Unit1|U2|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[14][4]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|Unit1|U2|tmp_rf[12][4]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|tmp_rf[14][4]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][4]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|Unit1|U2|Mux27~7_combout\);

-- Location: LCCOMB_X59_Y40_N24
\Unit1|Unit1|U2|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~8_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux27~7_combout\ & (\Unit1|Unit1|U2|tmp_rf[15][4]~q\)) # (!\Unit1|Unit1|U2|Mux27~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[13][4]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[15][4]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit1|U2|tmp_rf[13][4]~q\,
	datad => \Unit1|Unit1|U2|Mux27~7_combout\,
	combout => \Unit1|Unit1|U2|Mux27~8_combout\);

-- Location: LCCOMB_X60_Y40_N24
\Unit1|Unit1|U2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|Unit1|U2|tmp_rf[9][4]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[8][4]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[9][4]~q\,
	combout => \Unit1|Unit1|U2|Mux27~0_combout\);

-- Location: LCCOMB_X59_Y42_N18
\Unit1|Unit1|U2|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux27~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[11][4]~q\))) # (!\Unit1|Unit1|U2|Mux27~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[10][4]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) 
-- & (\Unit1|Unit1|U2|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|Unit1|U2|Mux27~0_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[10][4]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[11][4]~q\,
	combout => \Unit1|Unit1|U2|Mux27~1_combout\);

-- Location: LCCOMB_X60_Y41_N6
\Unit1|Unit1|U2|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|tmp_rf[6][4]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|tmp_rf[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][4]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|Unit1|U2|tmp_rf[6][4]~q\,
	combout => \Unit1|Unit1|U2|Mux27~2_combout\);

-- Location: LCCOMB_X60_Y43_N14
\Unit1|Unit1|U2|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~3_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux27~2_combout\ & (\Unit1|Unit1|U2|tmp_rf[7][4]~q\)) # (!\Unit1|Unit1|U2|Mux27~2_combout\ & ((\Unit1|Unit1|U2|tmp_rf[5][4]~q\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & 
-- (\Unit1|Unit1|U2|Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux27~2_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][4]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[5][4]~q\,
	combout => \Unit1|Unit1|U2|Mux27~3_combout\);

-- Location: LCCOMB_X60_Y40_N26
\Unit1|Unit1|U2|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|Unit1|U2|tmp_rf[1][4]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|Unit1|U2|tmp_rf[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|Unit1|U2|tmp_rf[0][4]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[1][4]~q\,
	combout => \Unit1|Unit1|U2|Mux27~4_combout\);

-- Location: LCCOMB_X63_Y40_N12
\Unit1|Unit1|U2|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~5_combout\ = (\Unit1|Unit1|U2|Mux27~4_combout\ & (((\Unit1|Unit1|U2|tmp_rf[3][4]~q\) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit1|U2|Mux27~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[2][4]~q\ & 
-- ((\Unit1|Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[2][4]~q\,
	datab => \Unit1|Unit1|U2|Mux27~4_combout\,
	datac => \Unit1|Unit1|U2|tmp_rf[3][4]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux27~5_combout\);

-- Location: LCCOMB_X63_Y40_N10
\Unit1|Unit1|U2|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit1|U2|Mux27~3_combout\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & 
-- ((\Unit1|Unit1|U2|Mux27~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux27~3_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|Unit1|U2|Mux27~5_combout\,
	combout => \Unit1|Unit1|U2|Mux27~6_combout\);

-- Location: LCCOMB_X63_Y43_N10
\Unit1|Unit1|U2|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux27~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux27~6_combout\ & (\Unit1|Unit1|U2|Mux27~8_combout\)) # (!\Unit1|Unit1|U2|Mux27~6_combout\ & ((\Unit1|Unit1|U2|Mux27~1_combout\))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) 
-- & (((\Unit1|Unit1|U2|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux27~8_combout\,
	datab => \Unit1|Unit1|U2|Mux27~1_combout\,
	datac => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|Unit1|U2|Mux27~6_combout\,
	combout => \Unit1|Unit1|U2|Mux27~9_combout\);

-- Location: FF_X63_Y43_N11
\Unit1|Unit1|U2|RFr2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux27~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(4));

-- Location: LCCOMB_X62_Y46_N10
\Unit1|Unit1|U3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~10_combout\ = \Unit1|Unit1|U2|RFr2\(4) $ (\Unit1|Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit1|U2|RFr2\(4),
	datad => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|Unit1|U3|Add0~10_combout\);

-- Location: LCCOMB_X62_Y43_N16
\Unit1|Unit1|U3|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~66_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(4))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr2\(4),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(4),
	combout => \Unit1|Unit1|U3|Add0~66_combout\);

-- Location: LCCOMB_X62_Y46_N12
\Unit1|Unit1|U3|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~67_combout\ = (\Unit1|Unit1|U3|Add0~66_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~25_combout\,
	datad => \Unit1|Unit1|U3|Add0~66_combout\,
	combout => \Unit1|Unit1|U3|Add0~67_combout\);

-- Location: LCCOMB_X62_Y44_N26
\Unit1|Unit0|U2|dir_addr[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|dir_addr\(4) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(4)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|dir_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|dir_addr\(4),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	combout => \Unit1|Unit0|U2|dir_addr\(4));

-- Location: FF_X62_Y44_N27
\Unit1|Unit0|U0|IR_PS2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U2|dir_addr\(4),
	ena => \Unit1|Unit0|U0|IR_PS2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IR_PS2\(4));

-- Location: LCCOMB_X60_Y44_N24
\Unit1|Unit0|U0|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector72~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\ & (\Unit1|Unit0|U0|IR_PS2\(0))) # (!\Unit1|Unit0|U0|state.S26a~q\ & ((\Unit1|Unit0|U0|state.S25a~q\ & (\Unit1|Unit0|U0|IR_PS2\(0))) # (!\Unit1|Unit0|U0|state.S25a~q\ & 
-- ((\Unit1|Unit0|U0|IR_PS2\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|IR_PS2\(0),
	datab => \Unit1|Unit0|U0|state.S26a~q\,
	datac => \Unit1|Unit0|U0|IR_PS2\(4),
	datad => \Unit1|Unit0|U0|state.S25a~q\,
	combout => \Unit1|Unit0|U0|Selector72~0_combout\);

-- Location: FF_X60_Y44_N25
\Unit1|Unit0|U0|RFr2a_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector72~0_combout\,
	ena => \Unit1|Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFr2a_ctrl\(0));

-- Location: LCCOMB_X61_Y41_N12
\Unit1|Unit1|U2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~0_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[9][15]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|tmp_rf[1][15]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[9][15]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[1][15]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux16~0_combout\);

-- Location: LCCOMB_X62_Y41_N0
\Unit1|Unit1|U2|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~1_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|Mux16~0_combout\ & (\Unit1|Unit1|U2|tmp_rf[13][15]~q\)) # (!\Unit1|Unit1|U2|Mux16~0_combout\ & ((\Unit1|Unit1|U2|tmp_rf[5][15]~q\))))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit1|U2|tmp_rf[13][15]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[5][15]~q\,
	datad => \Unit1|Unit1|U2|Mux16~0_combout\,
	combout => \Unit1|Unit1|U2|Mux16~1_combout\);

-- Location: LCCOMB_X65_Y42_N10
\Unit1|Unit1|U2|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~7_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|tmp_rf[11][15]~q\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- (\Unit1|Unit1|U2|tmp_rf[3][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[3][15]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[11][15]~q\,
	combout => \Unit1|Unit1|U2|Mux16~7_combout\);

-- Location: LCCOMB_X61_Y42_N12
\Unit1|Unit1|U2|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~8_combout\ = (\Unit1|Unit1|U2|Mux16~7_combout\ & ((\Unit1|Unit1|U2|tmp_rf[15][15]~q\) # ((!\Unit1|Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|Unit1|U2|Mux16~7_combout\ & (((\Unit1|Unit1|U2|tmp_rf[7][15]~q\ & 
-- \Unit1|Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux16~7_combout\,
	datab => \Unit1|Unit1|U2|tmp_rf[15][15]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[7][15]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|Unit1|U2|Mux16~8_combout\);

-- Location: LCCOMB_X58_Y41_N6
\Unit1|Unit1|U2|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~4_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit1|U2|tmp_rf[4][15]~q\) # ((\Unit1|Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|Unit1|U2|tmp_rf[0][15]~q\ & !\Unit1|Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|tmp_rf[4][15]~q\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|Unit1|U2|tmp_rf[0][15]~q\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|Unit1|U2|Mux16~4_combout\);

-- Location: LCCOMB_X59_Y41_N14
\Unit1|Unit1|U2|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~5_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|Unit1|U2|Mux16~4_combout\ & ((\Unit1|Unit1|U2|tmp_rf[12][15]~q\))) # (!\Unit1|Unit1|U2|Mux16~4_combout\ & (\Unit1|Unit1|U2|tmp_rf[8][15]~q\)))) # 
-- (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|Unit1|U2|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|Unit1|U2|tmp_rf[8][15]~q\,
	datac => \Unit1|Unit1|U2|tmp_rf[12][15]~q\,
	datad => \Unit1|Unit1|U2|Mux16~4_combout\,
	combout => \Unit1|Unit1|U2|Mux16~5_combout\);

-- Location: LCCOMB_X65_Y42_N6
\Unit1|Unit1|U2|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~2_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|Unit1|U2|tmp_rf[6][15]~q\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(2) & (!\Unit1|Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|Unit1|U2|tmp_rf[2][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[2][15]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[6][15]~q\,
	combout => \Unit1|Unit1|U2|Mux16~2_combout\);

-- Location: LCCOMB_X63_Y42_N30
\Unit1|Unit1|U2|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~3_combout\ = (\Unit1|Unit1|U2|Mux16~2_combout\ & (((\Unit1|Unit1|U2|tmp_rf[14][15]~q\)) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(3)))) # (!\Unit1|Unit1|U2|Mux16~2_combout\ & (\Unit1|Unit0|U0|RFr2a_ctrl\(3) & 
-- ((\Unit1|Unit1|U2|tmp_rf[10][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|Mux16~2_combout\,
	datab => \Unit1|Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|Unit1|U2|tmp_rf[14][15]~q\,
	datad => \Unit1|Unit1|U2|tmp_rf[10][15]~q\,
	combout => \Unit1|Unit1|U2|Mux16~3_combout\);

-- Location: LCCOMB_X62_Y41_N18
\Unit1|Unit1|U2|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~6_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|Unit1|U2|Mux16~3_combout\))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(1) & 
-- (\Unit1|Unit1|U2|Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux16~5_combout\,
	datac => \Unit1|Unit1|U2|Mux16~3_combout\,
	datad => \Unit1|Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|Unit1|U2|Mux16~6_combout\);

-- Location: LCCOMB_X62_Y41_N6
\Unit1|Unit1|U2|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U2|Mux16~9_combout\ = (\Unit1|Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|Unit1|U2|Mux16~6_combout\ & ((\Unit1|Unit1|U2|Mux16~8_combout\))) # (!\Unit1|Unit1|U2|Mux16~6_combout\ & (\Unit1|Unit1|U2|Mux16~1_combout\)))) # (!\Unit1|Unit0|U0|RFr2a_ctrl\(0) 
-- & (((\Unit1|Unit1|U2|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|Unit1|U2|Mux16~1_combout\,
	datac => \Unit1|Unit1|U2|Mux16~8_combout\,
	datad => \Unit1|Unit1|U2|Mux16~6_combout\,
	combout => \Unit1|Unit1|U2|Mux16~9_combout\);

-- Location: FF_X62_Y41_N7
\Unit1|Unit1|U2|RFr2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit1|U2|Mux16~9_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit1|U2|RFr2\(15));

-- Location: LCCOMB_X62_Y41_N16
\Unit1|Unit1|U3|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~51_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr2\(15))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr1\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U2|RFr2\(15),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U2|RFr1\(15),
	combout => \Unit1|Unit1|U3|Add0~51_combout\);

-- Location: LCCOMB_X62_Y45_N22
\Unit1|Unit1|U3|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~55_combout\ = (\Unit1|Unit1|U3|Add0~51_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~51_combout\,
	datad => \Unit1|Unit1|U3|Add0~53_combout\,
	combout => \Unit1|Unit1|U3|Add0~55_combout\);

-- Location: LCCOMB_X61_Y45_N6
\Unit1|Unit1|U3|ALUz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~2_combout\ = (\Unit1|Unit0|U0|jmpen_ctrl~q\ & (!\Unit1|Unit1|U3|Add0~80_combout\ & (\Unit1|Unit1|U3|ALUz~1_combout\ & !\Unit1|Unit1|U3|Add0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|jmpen_ctrl~q\,
	datab => \Unit1|Unit1|U3|Add0~80_combout\,
	datac => \Unit1|Unit1|U3|ALUz~1_combout\,
	datad => \Unit1|Unit1|U3|Add0~78_combout\,
	combout => \Unit1|Unit1|U3|ALUz~2_combout\);

-- Location: LCCOMB_X61_Y45_N24
\Unit1|Unit1|U3|ALUz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~3_combout\ = (\Unit1|Unit1|U3|ALUz~0_combout\ & (!\Unit1|Unit1|U3|Add0~63_combout\ & (!\Unit1|Unit1|U3|Add0~65_combout\ & \Unit1|Unit1|U3|ALUz~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|ALUz~0_combout\,
	datab => \Unit1|Unit1|U3|Add0~63_combout\,
	datac => \Unit1|Unit1|U3|Add0~65_combout\,
	datad => \Unit1|Unit1|U3|ALUz~2_combout\,
	combout => \Unit1|Unit1|U3|ALUz~3_combout\);

-- Location: LCCOMB_X65_Y45_N0
\Unit1|Unit1|U3|ALUz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~4_combout\ = (!\Unit1|Unit1|U3|Add0~61_combout\ & (!\Unit1|Unit1|U3|Add0~57_combout\ & (!\Unit1|Unit1|U3|Add0~59_combout\ & \Unit1|Unit1|U3|ALUz~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~61_combout\,
	datab => \Unit1|Unit1|U3|Add0~57_combout\,
	datac => \Unit1|Unit1|U3|Add0~59_combout\,
	datad => \Unit1|Unit1|U3|ALUz~3_combout\,
	combout => \Unit1|Unit1|U3|ALUz~4_combout\);

-- Location: LCCOMB_X65_Y45_N2
\Unit1|Unit1|U3|ALUz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|ALUz~5_combout\ = (!\Unit1|Unit1|U3|Add0~55_combout\ & (!\Unit1|Unit1|U3|Add0~50_combout\ & (!\Unit1|Unit1|U3|Add0~45_combout\ & \Unit1|Unit1|U3|ALUz~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~55_combout\,
	datab => \Unit1|Unit1|U3|Add0~50_combout\,
	datac => \Unit1|Unit1|U3|Add0~45_combout\,
	datad => \Unit1|Unit1|U3|ALUz~4_combout\,
	combout => \Unit1|Unit1|U3|ALUz~5_combout\);

-- Location: LCCOMB_X65_Y45_N30
\Unit1|Unit0|U1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|process_0~0_combout\ = (!\Unit1|Unit0|U0|PCinc_ctrl~q\ & \Unit1|Unit1|U3|ALUz~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit1|Unit1|U3|ALUz~5_combout\,
	combout => \Unit1|Unit0|U1|process_0~0_combout\);

-- Location: FF_X65_Y45_N5
\Unit1|Unit0|U1|tmp_PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[0]~12_combout\,
	asdata => \Unit1|Unit0|U2|dir_addr\(0),
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit1|Unit0|U1|process_0~0_combout\,
	ena => \Unit1|Unit0|U1|tmp_PC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(0));

-- Location: LCCOMB_X61_Y46_N4
\Unit1|Unit0|U3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux15~0_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(0) & (((\Unit1|Unit0|U2|dir_addr\(0)) # (!\Unit1|Unit0|U0|Ms_ctrl\(1))))) # (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(0) & (\Unit1|Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|Unit1|U2|RFr1\(0),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U2|dir_addr\(0),
	combout => \Unit1|Unit0|U3|Mux15~0_combout\);

-- Location: LCCOMB_X61_Y46_N6
\Unit1|Unit0|U3|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux15~1_combout\ = (\Unit1|Unit0|U0|Ms_ctrl\(1) & (((\Unit1|Unit0|U3|Mux15~0_combout\)))) # (!\Unit1|Unit0|U0|Ms_ctrl\(1) & ((\Unit1|Unit0|U3|Mux15~0_combout\ & ((\Unit1|Unit0|U2|IRout\(8)))) # (!\Unit1|Unit0|U3|Mux15~0_combout\ & 
-- (\Unit1|Unit0|U1|tmp_PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(0),
	datab => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U3|Mux15~0_combout\,
	datad => \Unit1|Unit0|U2|IRout\(8),
	combout => \Unit1|Unit0|U3|Mux15~1_combout\);

-- Location: M9K_X64_Y41_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000450",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "init.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem:Unit2|altsyncram:altsyncram_component|altsyncram_csq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit1|Unit0|U0|ALT_INV_Mwe_ctrl~q\,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X68_Y44_N16
\Unit1|Unit0|U2|IRout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(15) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(15)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(15),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	datad => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	combout => \Unit1|Unit0|U2|IRout\(15));

-- Location: LCCOMB_X68_Y44_N22
\Unit1|Unit0|U0|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector14~1_combout\ = (\Unit1|Unit0|U2|IRout\(12) & (!\Unit1|Unit0|U2|IRout\(15) & (!\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|IRout\(12),
	datab => \Unit1|Unit0|U2|IRout\(15),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector14~0_combout\,
	combout => \Unit1|Unit0|U0|Selector14~1_combout\);

-- Location: FF_X68_Y44_N23
\Unit1|Unit0|U0|state.S24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector14~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S24~q\);

-- Location: LCCOMB_X67_Y44_N12
\Unit1|Unit0|U0|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr4~1_combout\ = (!\Unit1|Unit0|U0|state.S27~q\ & (!\Unit1|Unit0|U0|state.S25~q\ & (!\Unit1|Unit0|U0|state.S26~q\ & !\Unit1|Unit0|U0|state.S24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S27~q\,
	datab => \Unit1|Unit0|U0|state.S25~q\,
	datac => \Unit1|Unit0|U0|state.S26~q\,
	datad => \Unit1|Unit0|U0|state.S24~q\,
	combout => \Unit1|Unit0|U0|WideOr4~1_combout\);

-- Location: LCCOMB_X67_Y44_N0
\Unit1|Unit0|U0|IR_PS2[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IR_PS2[8]~0_combout\ = (\Unit1|Unit0|U0|WideOr4~1_combout\ & (!\Unit1|Unit0|U0|state.S29~q\ & (!\Unit1|Unit0|U0|state.S24a~q\ & \Unit1|Unit0|U0|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr4~1_combout\,
	datab => \Unit1|Unit0|U0|state.S29~q\,
	datac => \Unit1|Unit0|U0|state.S24a~q\,
	datad => \Unit1|Unit0|U0|WideOr4~0_combout\,
	combout => \Unit1|Unit0|U0|IR_PS2[8]~0_combout\);

-- Location: LCCOMB_X68_Y44_N0
\Unit1|Unit0|U0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector3~0_combout\ = (\Unit1|Unit0|U0|WideOr39~1_combout\ & (\Unit1|Unit0|U0|IR_PS2[8]~0_combout\ & (!\Unit1|Unit0|U2|IRout\(12) & !\Unit1|Unit0|U2|IRout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr39~1_combout\,
	datab => \Unit1|Unit0|U0|IR_PS2[8]~0_combout\,
	datac => \Unit1|Unit0|U2|IRout\(12),
	datad => \Unit1|Unit0|U2|IRout\(15),
	combout => \Unit1|Unit0|U0|Selector3~0_combout\);

-- Location: LCCOMB_X68_Y44_N20
\Unit1|Unit0|U0|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector23~0_combout\ = (\Unit1|Unit0|U2|IRout\(13) & (\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(13),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector3~0_combout\,
	combout => \Unit1|Unit0|U0|Selector23~0_combout\);

-- Location: FF_X68_Y44_N21
\Unit1|Unit0|U0|state.S27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector23~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S27~q\);

-- Location: FF_X66_Y44_N31
\Unit1|Unit0|U0|state.S27a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S27~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S27a~q\);

-- Location: FF_X66_Y44_N23
\Unit1|Unit0|U0|state.S27b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S27a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S27b~q\);

-- Location: LCCOMB_X66_Y44_N12
\Unit1|Unit0|U0|WideOr39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr39~1_combout\ = (\Unit1|Unit0|U0|WideOr39~0_combout\ & (!\Unit1|Unit0|U0|state.S27b~q\ & \Unit1|Unit0|U0|Selector34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|WideOr39~0_combout\,
	datac => \Unit1|Unit0|U0|state.S27b~q\,
	datad => \Unit1|Unit0|U0|Selector34~0_combout\,
	combout => \Unit1|Unit0|U0|WideOr39~1_combout\);

-- Location: LCCOMB_X68_Y44_N2
\Unit1|Unit0|U0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector6~0_combout\ = (\Unit1|Unit0|U0|WideOr39~1_combout\ & (\Unit1|Unit0|U0|IR_PS2[8]~0_combout\ & (\Unit1|Unit0|U2|IRout\(12) & !\Unit1|Unit0|U2|IRout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr39~1_combout\,
	datab => \Unit1|Unit0|U0|IR_PS2[8]~0_combout\,
	datac => \Unit1|Unit0|U2|IRout\(12),
	datad => \Unit1|Unit0|U2|IRout\(15),
	combout => \Unit1|Unit0|U0|Selector6~0_combout\);

-- Location: LCCOMB_X68_Y44_N10
\Unit1|Unit0|U0|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector20~0_combout\ = (!\Unit1|Unit0|U2|IRout\(13) & (\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(13),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector6~0_combout\,
	combout => \Unit1|Unit0|U0|Selector20~0_combout\);

-- Location: FF_X68_Y44_N11
\Unit1|Unit0|U0|state.S26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector20~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S26~q\);

-- Location: FF_X66_Y44_N1
\Unit1|Unit0|U0|state.S26a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S26~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S26a~q\);

-- Location: LCCOMB_X62_Y44_N10
\Unit1|Unit0|U0|WideOr59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr59~combout\ = (\Unit1|Unit0|U0|state.S28~q\) # ((!\Unit1|Unit0|U0|state.S26a~q\ & \Unit1|Unit0|U0|WideOr59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S26a~q\,
	datac => \Unit1|Unit0|U0|WideOr59~0_combout\,
	datad => \Unit1|Unit0|U0|state.S28~q\,
	combout => \Unit1|Unit0|U0|WideOr59~combout\);

-- Location: LCCOMB_X63_Y44_N10
\Unit1|Unit0|U0|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector68~0_combout\ = (\Unit1|Unit0|U0|state.S26a~q\) # ((\Unit1|Unit0|U0|state.S23a~q\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & \Unit1|Unit0|U0|WideOr59~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S26a~q\,
	datab => \Unit1|Unit0|U0|state.S23a~q\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|Unit0|U0|WideOr59~combout\,
	combout => \Unit1|Unit0|U0|Selector68~0_combout\);

-- Location: FF_X63_Y44_N11
\Unit1|Unit0|U0|ALUs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector68~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|ALUs_ctrl\(0));

-- Location: LCCOMB_X61_Y45_N14
\Unit1|Unit1|U3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~56_combout\ = (!\Unit1|Unit0|U0|ALUs_ctrl\(1) & ((\Unit1|Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|Unit1|U2|RFr2\(12)))) # (!\Unit1|Unit0|U0|ALUs_ctrl\(0) & (\Unit1|Unit1|U2|RFr1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|Unit1|U2|RFr1\(12),
	datad => \Unit1|Unit1|U2|RFr2\(12),
	combout => \Unit1|Unit1|U3|Add0~56_combout\);

-- Location: LCCOMB_X62_Y45_N24
\Unit1|Unit1|U3|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~57_combout\ = (\Unit1|Unit1|U3|Add0~56_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit1|U3|Add0~56_combout\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit1|U3|Add0~41_combout\,
	combout => \Unit1|Unit1|U3|Add0~57_combout\);

-- Location: LCCOMB_X68_Y44_N26
\Unit1|Unit0|U2|IRout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(12) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(12)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|IRout\(12),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	combout => \Unit1|Unit0|U2|IRout\(12));

-- Location: LCCOMB_X68_Y44_N6
\Unit1|Unit0|U0|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector17~0_combout\ = (\Unit1|Unit0|U0|IR_PS2[8]~0_combout\ & (\Unit1|Unit0|U0|WideOr39~1_combout\ & !\Unit1|Unit0|U2|IRout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|IR_PS2[8]~0_combout\,
	datac => \Unit1|Unit0|U0|WideOr39~1_combout\,
	datad => \Unit1|Unit0|U2|IRout\(13),
	combout => \Unit1|Unit0|U0|Selector17~0_combout\);

-- Location: LCCOMB_X68_Y44_N24
\Unit1|Unit0|U0|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector17~1_combout\ = (!\Unit1|Unit0|U2|IRout\(12) & (!\Unit1|Unit0|U2|IRout\(15) & (\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|IRout\(12),
	datab => \Unit1|Unit0|U2|IRout\(15),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector17~0_combout\,
	combout => \Unit1|Unit0|U0|Selector17~1_combout\);

-- Location: FF_X68_Y44_N25
\Unit1|Unit0|U0|state.S25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector17~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S25~q\);

-- Location: FF_X66_Y44_N11
\Unit1|Unit0|U0|state.S25a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S25~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S25a~q\);

-- Location: LCCOMB_X63_Y45_N8
\Unit1|Unit0|U0|Selector67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector67~2_combout\ = (\Unit1|Unit0|U0|state.S25a~q\) # ((\Unit1|Unit0|U0|state.S26a~q\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit0|U0|WideOr59~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S25a~q\,
	datab => \Unit1|Unit0|U0|state.S26a~q\,
	datac => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|Unit0|U0|WideOr59~combout\,
	combout => \Unit1|Unit0|U0|Selector67~2_combout\);

-- Location: FF_X63_Y45_N9
\Unit1|Unit0|U0|ALUs_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector67~2_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|ALUs_ctrl\(1));

-- Location: LCCOMB_X63_Y42_N16
\Unit1|Unit1|U3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit1|U3|Add0~50_combout\ = (\Unit1|Unit1|U3|Add0~46_combout\) # ((\Unit1|Unit0|U0|ALUs_ctrl\(1) & \Unit1|Unit1|U3|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|Unit1|U3|Add0~46_combout\,
	datad => \Unit1|Unit1|U3|Add0~48_combout\,
	combout => \Unit1|Unit1|U3|Add0~50_combout\);

-- Location: LCCOMB_X68_Y44_N30
\Unit1|Unit0|U2|IRout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(14) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(14)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U2|IRout\(14),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	combout => \Unit1|Unit0|U2|IRout\(14));

-- Location: LCCOMB_X68_Y44_N18
\Unit1|Unit0|U0|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector6~1_combout\ = (!\Unit1|Unit0|U2|IRout\(13) & (!\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(13),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector6~0_combout\,
	combout => \Unit1|Unit0|U0|Selector6~1_combout\);

-- Location: FF_X68_Y44_N19
\Unit1|Unit0|U0|state.S22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector6~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S22~q\);

-- Location: FF_X67_Y44_N29
\Unit1|Unit0|U0|state.S22a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S22~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S22a~q\);

-- Location: FF_X66_Y44_N9
\Unit1|Unit0|U0|state.S22b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S22a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S22b~q\);

-- Location: LCCOMB_X66_Y44_N8
\Unit1|Unit0|U0|WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr30~0_combout\ = (!\Unit1|Unit0|U0|state.S23b~q\ & (!\Unit1|Unit0|U0|state.S23c~q\ & (!\Unit1|Unit0|U0|state.S22b~q\ & !\Unit1|Unit0|U0|state.S22c~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S23b~q\,
	datab => \Unit1|Unit0|U0|state.S23c~q\,
	datac => \Unit1|Unit0|U0|state.S22b~q\,
	datad => \Unit1|Unit0|U0|state.S22c~q\,
	combout => \Unit1|Unit0|U0|WideOr30~0_combout\);

-- Location: LCCOMB_X66_Y44_N28
\Unit1|Unit0|U0|WideOr48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr48~2_combout\ = (!\Unit1|Unit0|U0|state.S26a~q\ & (!\Unit1|Unit0|U0|state.S24b~q\ & (\Unit1|Unit0|U0|WideOr48~1_combout\ & \Unit1|Unit0|U0|Selector62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S26a~q\,
	datab => \Unit1|Unit0|U0|state.S24b~q\,
	datac => \Unit1|Unit0|U0|WideOr48~1_combout\,
	datad => \Unit1|Unit0|U0|Selector62~0_combout\,
	combout => \Unit1|Unit0|U0|WideOr48~2_combout\);

-- Location: LCCOMB_X67_Y44_N6
\Unit1|Unit0|U0|WideOr30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr30~1_combout\ = (\Unit1|Unit0|U0|WideOr30~0_combout\ & (!\Unit1|Unit0|U0|state.S21b~q\ & (!\Unit1|Unit0|U0|state.S29b~q\ & \Unit1|Unit0|U0|WideOr48~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr30~0_combout\,
	datab => \Unit1|Unit0|U0|state.S21b~q\,
	datac => \Unit1|Unit0|U0|state.S29b~q\,
	datad => \Unit1|Unit0|U0|WideOr48~2_combout\,
	combout => \Unit1|Unit0|U0|WideOr30~1_combout\);

-- Location: LCCOMB_X63_Y48_N18
\Unit1|Unit0|U0|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector35~0_combout\ = ((!\Unit1|Unit0|U0|WideOr30~1_combout\ & \Unit1|Unit0|U0|IRld_ctrl~q\)) # (!\Unit1|Unit0|U0|WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|WideOr30~1_combout\,
	datac => \Unit1|Unit0|U0|WideOr4~2_combout\,
	datad => \Unit1|Unit0|U0|IRld_ctrl~q\,
	combout => \Unit1|Unit0|U0|Selector35~0_combout\);

-- Location: LCCOMB_X63_Y48_N14
\Unit1|Unit0|U0|IRld_ctrl~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|IRld_ctrl~feeder_combout\ = \Unit1|Unit0|U0|Selector35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|Selector35~0_combout\,
	combout => \Unit1|Unit0|U0|IRld_ctrl~feeder_combout\);

-- Location: FF_X63_Y48_N15
\Unit1|Unit0|U0|IRld_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|IRld_ctrl~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|IRld_ctrl~q\);

-- Location: CLKCTRL_G14
\Unit1|Unit0|U0|IRld_ctrl~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\);

-- Location: LCCOMB_X68_Y44_N28
\Unit1|Unit0|U2|IRout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U2|IRout\(13) = (GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(13)))) # (!GLOBAL(\Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit1|Unit0|U2|IRout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(13),
	datac => \Unit1|Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	combout => \Unit1|Unit0|U2|IRout\(13));

-- Location: LCCOMB_X68_Y44_N4
\Unit1|Unit0|U0|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector10~0_combout\ = (\Unit1|Unit0|U2|IRout\(13) & (!\Unit1|Unit0|U2|IRout\(14) & \Unit1|Unit0|U0|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U2|IRout\(13),
	datac => \Unit1|Unit0|U2|IRout\(14),
	datad => \Unit1|Unit0|U0|Selector3~0_combout\,
	combout => \Unit1|Unit0|U0|Selector10~0_combout\);

-- Location: FF_X68_Y44_N5
\Unit1|Unit0|U0|state.S23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector10~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	ena => \Unit1|Unit0|U0|ALT_INV_state.S28~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S23~q\);

-- Location: LCCOMB_X66_Y44_N4
\Unit1|Unit0|U0|state.S23a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S23a~feeder_combout\ = \Unit1|Unit0|U0|state.S23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U0|state.S23~q\,
	combout => \Unit1|Unit0|U0|state.S23a~feeder_combout\);

-- Location: FF_X66_Y44_N5
\Unit1|Unit0|U0|state.S23a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S23a~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S23a~q\);

-- Location: FF_X66_Y44_N7
\Unit1|Unit0|U0|state.S23b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S23a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S23b~q\);

-- Location: LCCOMB_X67_Y44_N10
\Unit1|Unit0|U0|WideOr48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr48~3_combout\ = (\Unit1|Unit0|U0|WideOr59~0_combout\ & (\Unit1|Unit0|U0|Selector39~0_combout\ & (!\Unit1|Unit0|U0|state.S1a~q\ & !\Unit1|Unit0|U0|state.S21a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr59~0_combout\,
	datab => \Unit1|Unit0|U0|Selector39~0_combout\,
	datac => \Unit1|Unit0|U0|state.S1a~q\,
	datad => \Unit1|Unit0|U0|state.S21a~q\,
	combout => \Unit1|Unit0|U0|WideOr48~3_combout\);

-- Location: LCCOMB_X66_Y44_N24
\Unit1|Unit0|U0|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector42~0_combout\ = (\Unit1|Unit0|U0|Mwe_ctrl~q\ & ((\Unit1|Unit0|U0|state.S29b~q\) # ((!\Unit1|Unit0|U0|WideOr48~2_combout\) # (!\Unit1|Unit0|U0|WideOr48~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S29b~q\,
	datab => \Unit1|Unit0|U0|Mwe_ctrl~q\,
	datac => \Unit1|Unit0|U0|WideOr48~3_combout\,
	datad => \Unit1|Unit0|U0|WideOr48~2_combout\,
	combout => \Unit1|Unit0|U0|Selector42~0_combout\);

-- Location: LCCOMB_X66_Y45_N8
\Unit1|Unit0|U0|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector42~1_combout\ = (\Unit1|Unit0|U0|state.S23b~q\) # ((\Unit1|Unit0|U0|Selector42~0_combout\) # (\Unit1|Unit0|U0|state.S22b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S23b~q\,
	datac => \Unit1|Unit0|U0|Selector42~0_combout\,
	datad => \Unit1|Unit0|U0|state.S22b~q\,
	combout => \Unit1|Unit0|U0|Selector42~1_combout\);

-- Location: FF_X66_Y45_N9
\Unit1|Unit0|U0|Mwe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector42~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Mwe_ctrl~q\);

-- Location: LCCOMB_X67_Y44_N14
\Unit1|Unit0|U0|WideOr30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|WideOr30~2_combout\ = (\Unit1|Unit0|U0|WideOr30~0_combout\ & \Unit1|Unit0|U0|WideOr48~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr30~0_combout\,
	datad => \Unit1|Unit0|U0|WideOr48~2_combout\,
	combout => \Unit1|Unit0|U0|WideOr30~2_combout\);

-- Location: LCCOMB_X67_Y44_N20
\Unit1|Unit0|U0|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector43~0_combout\ = (\Unit1|Unit0|U0|oe_ctrl~q\ & (((\Unit1|Unit0|U0|state.S29a~q\) # (!\Unit1|Unit0|U0|WideOr30~2_combout\)) # (!\Unit1|Unit0|U0|WideOr48~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|WideOr48~3_combout\,
	datab => \Unit1|Unit0|U0|WideOr30~2_combout\,
	datac => \Unit1|Unit0|U0|state.S29a~q\,
	datad => \Unit1|Unit0|U0|oe_ctrl~q\,
	combout => \Unit1|Unit0|U0|Selector43~0_combout\);

-- Location: LCCOMB_X67_Y44_N2
\Unit1|Unit0|U0|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector43~1_combout\ = (\Unit1|Unit0|U0|Selector43~0_combout\) # (\Unit1|Unit0|U0|state.S29b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|Selector43~0_combout\,
	datad => \Unit1|Unit0|U0|state.S29b~q\,
	combout => \Unit1|Unit0|U0|Selector43~1_combout\);

-- Location: FF_X67_Y44_N3
\Unit1|Unit0|U0|oe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector43~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|oe_ctrl~q\);

-- Location: LCCOMB_X67_Y44_N26
\Unit1|Unit0|U0|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector36~0_combout\ = (\Unit1|Unit0|U0|state.S29a~q\) # ((\Unit1|Unit0|U0|state.S21a~q\) # (!\Unit1|Unit0|U0|WideOr4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S29a~q\,
	datac => \Unit1|Unit0|U0|WideOr4~2_combout\,
	datad => \Unit1|Unit0|U0|state.S21a~q\,
	combout => \Unit1|Unit0|U0|Selector36~0_combout\);

-- Location: LCCOMB_X67_Y44_N8
\Unit1|Unit0|U0|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector36~1_combout\ = (\Unit1|Unit0|U0|Selector36~0_combout\) # ((\Unit1|Unit0|U0|Mre_ctrl~q\ & ((\Unit1|Unit0|U0|state.S29b~q\) # (!\Unit1|Unit0|U0|WideOr30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S29b~q\,
	datab => \Unit1|Unit0|U0|WideOr30~2_combout\,
	datac => \Unit1|Unit0|U0|Mre_ctrl~q\,
	datad => \Unit1|Unit0|U0|Selector36~0_combout\,
	combout => \Unit1|Unit0|U0|Selector36~1_combout\);

-- Location: FF_X67_Y44_N9
\Unit1|Unit0|U0|Mre_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector36~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Mre_ctrl~q\);

-- Location: LCCOMB_X114_Y53_N0
\cnt_clock[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[0]~45_combout\ = !cnt_clock(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_clock(0),
	combout => \cnt_clock[0]~45_combout\);

-- Location: FF_X114_Y53_N1
\cnt_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[0]~45_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(0));

-- Location: LCCOMB_X114_Y53_N2
\cnt_clock[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[1]~15_combout\ = (cnt_clock(1) & (cnt_clock(0) $ (VCC))) # (!cnt_clock(1) & (cnt_clock(0) & VCC))
-- \cnt_clock[1]~16\ = CARRY((cnt_clock(1) & cnt_clock(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(1),
	datab => cnt_clock(0),
	datad => VCC,
	combout => \cnt_clock[1]~15_combout\,
	cout => \cnt_clock[1]~16\);

-- Location: FF_X114_Y53_N3
\cnt_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[1]~15_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(1));

-- Location: LCCOMB_X114_Y53_N4
\cnt_clock[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[2]~17_combout\ = (cnt_clock(2) & (!\cnt_clock[1]~16\)) # (!cnt_clock(2) & ((\cnt_clock[1]~16\) # (GND)))
-- \cnt_clock[2]~18\ = CARRY((!\cnt_clock[1]~16\) # (!cnt_clock(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(2),
	datad => VCC,
	cin => \cnt_clock[1]~16\,
	combout => \cnt_clock[2]~17_combout\,
	cout => \cnt_clock[2]~18\);

-- Location: FF_X114_Y53_N5
\cnt_clock[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[2]~17_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(2));

-- Location: LCCOMB_X114_Y53_N6
\cnt_clock[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[3]~19_combout\ = (cnt_clock(3) & (\cnt_clock[2]~18\ $ (GND))) # (!cnt_clock(3) & (!\cnt_clock[2]~18\ & VCC))
-- \cnt_clock[3]~20\ = CARRY((cnt_clock(3) & !\cnt_clock[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(3),
	datad => VCC,
	cin => \cnt_clock[2]~18\,
	combout => \cnt_clock[3]~19_combout\,
	cout => \cnt_clock[3]~20\);

-- Location: FF_X114_Y53_N7
\cnt_clock[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[3]~19_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(3));

-- Location: LCCOMB_X114_Y53_N8
\cnt_clock[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[4]~21_combout\ = (cnt_clock(4) & (!\cnt_clock[3]~20\)) # (!cnt_clock(4) & ((\cnt_clock[3]~20\) # (GND)))
-- \cnt_clock[4]~22\ = CARRY((!\cnt_clock[3]~20\) # (!cnt_clock(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(4),
	datad => VCC,
	cin => \cnt_clock[3]~20\,
	combout => \cnt_clock[4]~21_combout\,
	cout => \cnt_clock[4]~22\);

-- Location: FF_X114_Y53_N9
\cnt_clock[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[4]~21_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(4));

-- Location: LCCOMB_X114_Y53_N10
\cnt_clock[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[5]~23_combout\ = (cnt_clock(5) & (\cnt_clock[4]~22\ $ (GND))) # (!cnt_clock(5) & (!\cnt_clock[4]~22\ & VCC))
-- \cnt_clock[5]~24\ = CARRY((cnt_clock(5) & !\cnt_clock[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(5),
	datad => VCC,
	cin => \cnt_clock[4]~22\,
	combout => \cnt_clock[5]~23_combout\,
	cout => \cnt_clock[5]~24\);

-- Location: FF_X114_Y53_N11
\cnt_clock[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[5]~23_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(5));

-- Location: LCCOMB_X114_Y53_N12
\cnt_clock[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[6]~25_combout\ = (cnt_clock(6) & (!\cnt_clock[5]~24\)) # (!cnt_clock(6) & ((\cnt_clock[5]~24\) # (GND)))
-- \cnt_clock[6]~26\ = CARRY((!\cnt_clock[5]~24\) # (!cnt_clock(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(6),
	datad => VCC,
	cin => \cnt_clock[5]~24\,
	combout => \cnt_clock[6]~25_combout\,
	cout => \cnt_clock[6]~26\);

-- Location: FF_X114_Y53_N13
\cnt_clock[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[6]~25_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(6));

-- Location: LCCOMB_X114_Y53_N14
\cnt_clock[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[7]~27_combout\ = (cnt_clock(7) & (\cnt_clock[6]~26\ $ (GND))) # (!cnt_clock(7) & (!\cnt_clock[6]~26\ & VCC))
-- \cnt_clock[7]~28\ = CARRY((cnt_clock(7) & !\cnt_clock[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(7),
	datad => VCC,
	cin => \cnt_clock[6]~26\,
	combout => \cnt_clock[7]~27_combout\,
	cout => \cnt_clock[7]~28\);

-- Location: FF_X114_Y53_N15
\cnt_clock[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[7]~27_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(7));

-- Location: LCCOMB_X114_Y53_N16
\cnt_clock[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[8]~29_combout\ = (cnt_clock(8) & (!\cnt_clock[7]~28\)) # (!cnt_clock(8) & ((\cnt_clock[7]~28\) # (GND)))
-- \cnt_clock[8]~30\ = CARRY((!\cnt_clock[7]~28\) # (!cnt_clock(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(8),
	datad => VCC,
	cin => \cnt_clock[7]~28\,
	combout => \cnt_clock[8]~29_combout\,
	cout => \cnt_clock[8]~30\);

-- Location: FF_X114_Y53_N17
\cnt_clock[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[8]~29_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(8));

-- Location: LCCOMB_X114_Y53_N18
\cnt_clock[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[9]~31_combout\ = (cnt_clock(9) & (\cnt_clock[8]~30\ $ (GND))) # (!cnt_clock(9) & (!\cnt_clock[8]~30\ & VCC))
-- \cnt_clock[9]~32\ = CARRY((cnt_clock(9) & !\cnt_clock[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(9),
	datad => VCC,
	cin => \cnt_clock[8]~30\,
	combout => \cnt_clock[9]~31_combout\,
	cout => \cnt_clock[9]~32\);

-- Location: FF_X114_Y53_N19
\cnt_clock[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[9]~31_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(9));

-- Location: LCCOMB_X114_Y53_N20
\cnt_clock[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[10]~33_combout\ = (cnt_clock(10) & (!\cnt_clock[9]~32\)) # (!cnt_clock(10) & ((\cnt_clock[9]~32\) # (GND)))
-- \cnt_clock[10]~34\ = CARRY((!\cnt_clock[9]~32\) # (!cnt_clock(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(10),
	datad => VCC,
	cin => \cnt_clock[9]~32\,
	combout => \cnt_clock[10]~33_combout\,
	cout => \cnt_clock[10]~34\);

-- Location: FF_X114_Y53_N21
\cnt_clock[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[10]~33_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(10));

-- Location: LCCOMB_X114_Y53_N22
\cnt_clock[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[11]~35_combout\ = (cnt_clock(11) & (\cnt_clock[10]~34\ $ (GND))) # (!cnt_clock(11) & (!\cnt_clock[10]~34\ & VCC))
-- \cnt_clock[11]~36\ = CARRY((cnt_clock(11) & !\cnt_clock[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(11),
	datad => VCC,
	cin => \cnt_clock[10]~34\,
	combout => \cnt_clock[11]~35_combout\,
	cout => \cnt_clock[11]~36\);

-- Location: FF_X114_Y53_N23
\cnt_clock[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[11]~35_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(11));

-- Location: LCCOMB_X114_Y53_N24
\cnt_clock[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[12]~37_combout\ = (cnt_clock(12) & (!\cnt_clock[11]~36\)) # (!cnt_clock(12) & ((\cnt_clock[11]~36\) # (GND)))
-- \cnt_clock[12]~38\ = CARRY((!\cnt_clock[11]~36\) # (!cnt_clock(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(12),
	datad => VCC,
	cin => \cnt_clock[11]~36\,
	combout => \cnt_clock[12]~37_combout\,
	cout => \cnt_clock[12]~38\);

-- Location: FF_X114_Y53_N25
\cnt_clock[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[12]~37_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(12));

-- Location: LCCOMB_X114_Y53_N26
\cnt_clock[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[13]~39_combout\ = (cnt_clock(13) & (\cnt_clock[12]~38\ $ (GND))) # (!cnt_clock(13) & (!\cnt_clock[12]~38\ & VCC))
-- \cnt_clock[13]~40\ = CARRY((cnt_clock(13) & !\cnt_clock[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(13),
	datad => VCC,
	cin => \cnt_clock[12]~38\,
	combout => \cnt_clock[13]~39_combout\,
	cout => \cnt_clock[13]~40\);

-- Location: FF_X114_Y53_N27
\cnt_clock[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[13]~39_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(13));

-- Location: LCCOMB_X114_Y53_N28
\cnt_clock[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[14]~41_combout\ = (cnt_clock(14) & (!\cnt_clock[13]~40\)) # (!cnt_clock(14) & ((\cnt_clock[13]~40\) # (GND)))
-- \cnt_clock[14]~42\ = CARRY((!\cnt_clock[13]~40\) # (!cnt_clock(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clock(14),
	datad => VCC,
	cin => \cnt_clock[13]~40\,
	combout => \cnt_clock[14]~41_combout\,
	cout => \cnt_clock[14]~42\);

-- Location: FF_X114_Y53_N29
\cnt_clock[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[14]~41_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(14));

-- Location: LCCOMB_X114_Y53_N30
\cnt_clock[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_clock[15]~43_combout\ = cnt_clock(15) $ (!\cnt_clock[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clock(15),
	cin => \cnt_clock[14]~42\,
	combout => \cnt_clock[15]~43_combout\);

-- Location: FF_X114_Y53_N31
\cnt_clock[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt_clock[15]~43_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clock(15));

ww_sys_output(0) <= \sys_output[0]~output_o\;

ww_sys_output(1) <= \sys_output[1]~output_o\;

ww_sys_output(2) <= \sys_output[2]~output_o\;

ww_sys_output(3) <= \sys_output[3]~output_o\;

ww_sys_output(4) <= \sys_output[4]~output_o\;

ww_sys_output(5) <= \sys_output[5]~output_o\;

ww_sys_output(6) <= \sys_output[6]~output_o\;

ww_sys_output(7) <= \sys_output[7]~output_o\;

ww_sys_output(8) <= \sys_output[8]~output_o\;

ww_sys_output(9) <= \sys_output[9]~output_o\;

ww_sys_output(10) <= \sys_output[10]~output_o\;

ww_sys_output(11) <= \sys_output[11]~output_o\;

ww_sys_output(12) <= \sys_output[12]~output_o\;

ww_sys_output(13) <= \sys_output[13]~output_o\;

ww_sys_output(14) <= \sys_output[14]~output_o\;

ww_sys_output(15) <= \sys_output[15]~output_o\;

ww_D_rfout_bus(0) <= \D_rfout_bus[0]~output_o\;

ww_D_rfout_bus(1) <= \D_rfout_bus[1]~output_o\;

ww_D_rfout_bus(2) <= \D_rfout_bus[2]~output_o\;

ww_D_rfout_bus(3) <= \D_rfout_bus[3]~output_o\;

ww_D_rfout_bus(4) <= \D_rfout_bus[4]~output_o\;

ww_D_rfout_bus(5) <= \D_rfout_bus[5]~output_o\;

ww_D_rfout_bus(6) <= \D_rfout_bus[6]~output_o\;

ww_D_rfout_bus(7) <= \D_rfout_bus[7]~output_o\;

ww_D_rfout_bus(8) <= \D_rfout_bus[8]~output_o\;

ww_D_rfout_bus(9) <= \D_rfout_bus[9]~output_o\;

ww_D_rfout_bus(10) <= \D_rfout_bus[10]~output_o\;

ww_D_rfout_bus(11) <= \D_rfout_bus[11]~output_o\;

ww_D_rfout_bus(12) <= \D_rfout_bus[12]~output_o\;

ww_D_rfout_bus(13) <= \D_rfout_bus[13]~output_o\;

ww_D_rfout_bus(14) <= \D_rfout_bus[14]~output_o\;

ww_D_rfout_bus(15) <= \D_rfout_bus[15]~output_o\;

ww_D_RFwa(0) <= \D_RFwa[0]~output_o\;

ww_D_RFwa(1) <= \D_RFwa[1]~output_o\;

ww_D_RFwa(2) <= \D_RFwa[2]~output_o\;

ww_D_RFwa(3) <= \D_RFwa[3]~output_o\;

ww_D_RFr1a(0) <= \D_RFr1a[0]~output_o\;

ww_D_RFr1a(1) <= \D_RFr1a[1]~output_o\;

ww_D_RFr1a(2) <= \D_RFr1a[2]~output_o\;

ww_D_RFr1a(3) <= \D_RFr1a[3]~output_o\;

ww_D_RFr2a(0) <= \D_RFr2a[0]~output_o\;

ww_D_RFr2a(1) <= \D_RFr2a[1]~output_o\;

ww_D_RFr2a(2) <= \D_RFr2a[2]~output_o\;

ww_D_RFr2a(3) <= \D_RFr2a[3]~output_o\;

ww_D_RFwe <= \D_RFwe~output_o\;

ww_D_RFr1e <= \D_RFr1e~output_o\;

ww_D_RFr2e <= \D_RFr2e~output_o\;

ww_D_RFs(0) <= \D_RFs[0]~output_o\;

ww_D_RFs(1) <= \D_RFs[1]~output_o\;

ww_D_ALUs(0) <= \D_ALUs[0]~output_o\;

ww_D_ALUs(1) <= \D_ALUs[1]~output_o\;

ww_D_PCld <= \D_PCld~output_o\;

ww_D_jpz <= \D_jpz~output_o\;

ww_D_mdout_bus(0) <= \D_mdout_bus[0]~output_o\;

ww_D_mdout_bus(1) <= \D_mdout_bus[1]~output_o\;

ww_D_mdout_bus(2) <= \D_mdout_bus[2]~output_o\;

ww_D_mdout_bus(3) <= \D_mdout_bus[3]~output_o\;

ww_D_mdout_bus(4) <= \D_mdout_bus[4]~output_o\;

ww_D_mdout_bus(5) <= \D_mdout_bus[5]~output_o\;

ww_D_mdout_bus(6) <= \D_mdout_bus[6]~output_o\;

ww_D_mdout_bus(7) <= \D_mdout_bus[7]~output_o\;

ww_D_mdout_bus(8) <= \D_mdout_bus[8]~output_o\;

ww_D_mdout_bus(9) <= \D_mdout_bus[9]~output_o\;

ww_D_mdout_bus(10) <= \D_mdout_bus[10]~output_o\;

ww_D_mdout_bus(11) <= \D_mdout_bus[11]~output_o\;

ww_D_mdout_bus(12) <= \D_mdout_bus[12]~output_o\;

ww_D_mdout_bus(13) <= \D_mdout_bus[13]~output_o\;

ww_D_mdout_bus(14) <= \D_mdout_bus[14]~output_o\;

ww_D_mdout_bus(15) <= \D_mdout_bus[15]~output_o\;

ww_D_mdin_bus(0) <= \D_mdin_bus[0]~output_o\;

ww_D_mdin_bus(1) <= \D_mdin_bus[1]~output_o\;

ww_D_mdin_bus(2) <= \D_mdin_bus[2]~output_o\;

ww_D_mdin_bus(3) <= \D_mdin_bus[3]~output_o\;

ww_D_mdin_bus(4) <= \D_mdin_bus[4]~output_o\;

ww_D_mdin_bus(5) <= \D_mdin_bus[5]~output_o\;

ww_D_mdin_bus(6) <= \D_mdin_bus[6]~output_o\;

ww_D_mdin_bus(7) <= \D_mdin_bus[7]~output_o\;

ww_D_mdin_bus(8) <= \D_mdin_bus[8]~output_o\;

ww_D_mdin_bus(9) <= \D_mdin_bus[9]~output_o\;

ww_D_mdin_bus(10) <= \D_mdin_bus[10]~output_o\;

ww_D_mdin_bus(11) <= \D_mdin_bus[11]~output_o\;

ww_D_mdin_bus(12) <= \D_mdin_bus[12]~output_o\;

ww_D_mdin_bus(13) <= \D_mdin_bus[13]~output_o\;

ww_D_mdin_bus(14) <= \D_mdin_bus[14]~output_o\;

ww_D_mdin_bus(15) <= \D_mdin_bus[15]~output_o\;

ww_D_mem_addr(0) <= \D_mem_addr[0]~output_o\;

ww_D_mem_addr(1) <= \D_mem_addr[1]~output_o\;

ww_D_mem_addr(2) <= \D_mem_addr[2]~output_o\;

ww_D_mem_addr(3) <= \D_mem_addr[3]~output_o\;

ww_D_mem_addr(4) <= \D_mem_addr[4]~output_o\;

ww_D_mem_addr(5) <= \D_mem_addr[5]~output_o\;

ww_D_mem_addr(6) <= \D_mem_addr[6]~output_o\;

ww_D_mem_addr(7) <= \D_mem_addr[7]~output_o\;

ww_D_mem_addr(8) <= \D_mem_addr[8]~output_o\;

ww_D_mem_addr(9) <= \D_mem_addr[9]~output_o\;

ww_D_mem_addr(10) <= \D_mem_addr[10]~output_o\;

ww_D_mem_addr(11) <= \D_mem_addr[11]~output_o\;

ww_D_Mre <= \D_Mre~output_o\;

ww_D_Mwe <= \D_Mwe~output_o\;

ww_count_clock(0) <= \count_clock[0]~output_o\;

ww_count_clock(1) <= \count_clock[1]~output_o\;

ww_count_clock(2) <= \count_clock[2]~output_o\;

ww_count_clock(3) <= \count_clock[3]~output_o\;

ww_count_clock(4) <= \count_clock[4]~output_o\;

ww_count_clock(5) <= \count_clock[5]~output_o\;

ww_count_clock(6) <= \count_clock[6]~output_o\;

ww_count_clock(7) <= \count_clock[7]~output_o\;

ww_count_clock(8) <= \count_clock[8]~output_o\;

ww_count_clock(9) <= \count_clock[9]~output_o\;

ww_count_clock(10) <= \count_clock[10]~output_o\;

ww_count_clock(11) <= \count_clock[11]~output_o\;

ww_count_clock(12) <= \count_clock[12]~output_o\;

ww_count_clock(13) <= \count_clock[13]~output_o\;

ww_count_clock(14) <= \count_clock[14]~output_o\;

ww_count_clock(15) <= \count_clock[15]~output_o\;
END structure;


