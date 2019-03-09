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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/06/2019 15:44:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SimpleCompArch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SimpleCompArch_vhd_vec_tst IS
END SimpleCompArch_vhd_vec_tst;
ARCHITECTURE SimpleCompArch_arch OF SimpleCompArch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D_ALUs : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL D_jpz : STD_LOGIC;
SIGNAL D_mdin_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL D_mdout_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL D_mem_addr : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL D_Mre : STD_LOGIC;
SIGNAL D_Mwe : STD_LOGIC;
SIGNAL D_PCld : STD_LOGIC;
SIGNAL D_rfout_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL D_RFr1a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D_RFr1e : STD_LOGIC;
SIGNAL D_RFr2a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D_RFr2e : STD_LOGIC;
SIGNAL D_RFs : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL D_RFwa : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D_RFwe : STD_LOGIC;
SIGNAL sys_clk : STD_LOGIC;
SIGNAL sys_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sys_rst : STD_LOGIC;
COMPONENT SimpleCompArch
	PORT (
	D_ALUs : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	D_jpz : BUFFER STD_LOGIC;
	D_mdin_bus : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	D_mdout_bus : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	D_mem_addr : BUFFER STD_LOGIC_VECTOR(11 DOWNTO 0);
	D_Mre : BUFFER STD_LOGIC;
	D_Mwe : BUFFER STD_LOGIC;
	D_PCld : BUFFER STD_LOGIC;
	D_rfout_bus : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	D_RFr1a : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	D_RFr1e : BUFFER STD_LOGIC;
	D_RFr2a : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	D_RFr2e : BUFFER STD_LOGIC;
	D_RFs : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	D_RFwa : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	D_RFwe : BUFFER STD_LOGIC;
	sys_clk : IN STD_LOGIC;
	sys_output : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	sys_rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SimpleCompArch
	PORT MAP (
-- list connections between master ports and signals
	D_ALUs => D_ALUs,
	D_jpz => D_jpz,
	D_mdin_bus => D_mdin_bus,
	D_mdout_bus => D_mdout_bus,
	D_mem_addr => D_mem_addr,
	D_Mre => D_Mre,
	D_Mwe => D_Mwe,
	D_PCld => D_PCld,
	D_rfout_bus => D_rfout_bus,
	D_RFr1a => D_RFr1a,
	D_RFr1e => D_RFr1e,
	D_RFr2a => D_RFr2a,
	D_RFr2e => D_RFr2e,
	D_RFs => D_RFs,
	D_RFwa => D_RFwa,
	D_RFwe => D_RFwe,
	sys_clk => sys_clk,
	sys_output => sys_output,
	sys_rst => sys_rst
	);

-- sys_clk
t_prcs_sys_clk: PROCESS
BEGIN
LOOP
	sys_clk <= '0';
	WAIT FOR 500 ps;
	sys_clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 40000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sys_clk;

-- sys_rst
t_prcs_sys_rst: PROCESS
BEGIN
	sys_rst <= '1';
	WAIT FOR 40000 ps;
	sys_rst <= '0';
WAIT;
END PROCESS t_prcs_sys_rst;
END SimpleCompArch_arch;
