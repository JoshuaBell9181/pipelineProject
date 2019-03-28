------------------------------------------------------------------
-- Simple Computer Architecture
--
-- System composed of
-- 	CPU, Memory and output buffer
--    Sinals with the prefix "D_" are set for Debugging purpose only
-- SimpleCompArch.vhd
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;			   
use work.MP_lib.all;

entity SimpleCompArch is
port(   sys_clk								:	in std_logic;
		  sys_rst							   :	in std_logic;
		  key_push								:	in std_logic;
		  sys_output						   :	out std_logic_vector(15 downto 0);
		
		-- Debug signals from CPU: output for simulation purpose only	
		D_rfout_bus											: out std_logic_vector(15 downto 0);  
		D_RFwa, D_RFr1a, D_RFr2a				      : out std_logic_vector(3 downto 0);
		D_RFwe, D_RFr1e, D_RFr2e				      : out std_logic;
		D_RFs, D_ALUs										: out std_logic_vector(1 downto 0);
		D_PCld, D_jpz										: out std_logic;
		-- end debug variables	

		-- Debug signals from Memory: output for simulation purpose only	
		D_mdout_bus,D_mdin_bus					      : out std_logic_vector(15 downto 0); 
		D_mem_addr											: out std_logic_vector(11 downto 0); 
		D_Mre,D_Mwe										   : out std_logic;
		count_clock: out std_logic_vector(15 downto 0);            -- count how many clock cycles have happend
		seg0 	   : out STD_LOGIC_VECTOR(0 to 6);
		seg1 	   : out STD_LOGIC_VECTOR(0 to 6);
		seg2 	   : out STD_LOGIC_VECTOR(0 to 6);
		seg3 	   : out STD_LOGIC_VECTOR(0 to 6)
		-- end debug variables	
);
end SimpleCompArch;

architecture rtl of SimpleCompArch is
--Memory local variables												  							        							(ORIGIN	-> DEST)
	signal mdout_bus					: std_logic_vector(15 downto 0);  -- Mem data output 		(MEM  	-> CTLU)
	signal mdin_bus					: std_logic_vector(15 downto 0);  -- Mem data bus input 	(CTRLER	-> Mem)
	signal mem_addr					: std_logic_vector(11 downto 0);   -- Const. operand addr.(CTRLER	-> MEM)
	signal Mre							: std_logic;							 -- Mem. read enable  	(CTRLER	-> Mem) 
	signal Mwe							: std_logic;							 -- Mem. write enable 	(CTRLER	-> Mem)
	signal cnt_clock              : std_logic_vector(15 downto 0);            -- count how many clock cycles have happend
	signal mem_data               : std_logic_vector(15 downto 0);            -- memory data
	signal matrix3_Location_long  : std_logic_vector(15 downto 0);            -- Location of the matrix3
	signal matrix3_Location  : std_logic_vector(11 downto 0);            -- Location of the matrix3
	SIGNAL clk                    : STD_LOGIC;

	--System local variables
	signal oe							: std_logic;	
	
	COMPONENT display is
	port(
		  data      : in STD_LOGIC_VECTOR(15 downto 0);
        seg0 	   : out STD_LOGIC_VECTOR(0 to 6);
		  seg1 	   : out STD_LOGIC_VECTOR(0 to 6);
		  seg2 	   : out STD_LOGIC_VECTOR(0 to 6);
		  seg3 	   : out STD_LOGIC_VECTOR(0 to 6));
	end COMPONENT;
	
	COMPONENT connector is
	  port(
			  input      : in STD_LOGIC_VECTOR(11 downto 0);
			  output1     : out STD_LOGIC_VECTOR(11 downto 0));
			  
	end COMPONENT;
	
	
begin

 --Keep count
count: process(sys_clk, sys_rst,cnt_clock)
  begin
    if sys_rst='1' then				-- high active
        cnt_clock <= ZERO;
    else
		if rising_edge(sys_clk) then
			cnt_clock <= cnt_clock + 1;
		end if;
   end if;
	 count_clock <= cnt_clock;
end process;


--show: process(key_push)
--  begin
--	 if sys_rst='1' then				-- high active
--        matrix3_Location_long <= "0000001000100111"; --0x227 mem location of the 3 matrix
--    else
--			if ( key_push='1') then
--			matrix3_Location_long <= matrix3_Location_long + 1;
--			matrix3_Location <= matrix3_Location_long(11 downto 0);
--			end if;
--   end if;
--end process;



Display_out: display port map(mdout_bus,seg3,seg2,seg1,seg0);

--access_mem: mem port map(mem_addr,sys_clk,mdin_bus,'0',mem_data);		


--Unit2: memory port map(	sys_clk,sys_rst,Mre,Mwe,mem_addr,mdin_bus,mdout_bus);
Unit2: mem port map(mem_addr,sys_clk,mdin_bus,Mwe,mdout_bus);

Unit1: CPU port map (sys_clk,sys_rst,mdout_bus,mdin_bus,
mem_addr,
Mre,
Mwe,
oe,
										D_rfout_bus,D_RFwa, D_RFr1a, D_RFr2a,D_RFwe, 			 				--Degug signals
										D_RFr1e, D_RFr2e,D_RFs, D_ALUs,D_PCld, D_jpz);	 						--Degug signals
																					


Unit3: obuf port map(oe, mdout_bus, sys_output);

-- Debug signals: output to upper level for simulation purpose only
	D_mdout_bus <= mdout_bus;	
	D_mdin_bus <= mdin_bus;
	D_mem_addr <= mem_addr; 
	D_Mre <= Mre;
	D_Mwe <= Mwe;
-- end debug variables	
   	
		
end rtl;
