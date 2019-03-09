----------------------------------------------------------------------------
-- Simple Microprocessor Design (ESD Book Chapter 3)
-- Copyright 2001 Weijun Zhang
--
-- Controller (control logic plus state register)
-- VHDL FSM modeling
-- controller.vhd
----------------------------------------------------------------------------

library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.MP_lib.all;

entity controller is
port(	clock:		in std_logic;
	rst:		in std_logic;
	IR_word:	in std_logic_vector(15 downto 0);
	RFs_ctrl:	out std_logic_vector(1 downto 0);
	RFwa_ctrl:	out std_logic_vector(3 downto 0);
	RFr1a_ctrl:	out std_logic_vector(3 downto 0);
	RFr2a_ctrl:	out std_logic_vector(3 downto 0);
	RFwe_ctrl:	out std_logic;
	RFr1e_ctrl:	out std_logic;
	RFr2e_ctrl:	out std_logic;						 
	ALUs_ctrl:	out std_logic_vector(1 downto 0);	 
	jmpen_ctrl:	out std_logic;
	PCinc_ctrl:	out std_logic;
	PCclr_ctrl:	out std_logic;
	IRld_ctrl:	out std_logic;
	Ms_ctrl:	out std_logic_vector(1 downto 0);
	Mre_ctrl:	out std_logic;
	Mwe_ctrl:	out std_logic;
	oe_ctrl:	out std_logic
);
end controller;

architecture fsm of controller is

  type state_type is (S0,Sdly,S1,S1a,S1b,S2,S3,S3a,S3b,S4,S4a,S4b,S5,S5a,S5b,
			S6,S6a,S7,S7a,S7b,S8,S8a,S8b,S9,S9a,S9b,S10,S11,S11a, S12, S12a, S12b, S12c);
  signal state: state_type;
  signal delaystate: state_type;
  constant memdelay: integer :=1;
  signal usedelay: boolean := false;
  
begin
  process(clock, rst, IR_word)
    variable OPCODE: std_logic_vector(3 downto 0);
	 variable maccesdelay: integer;
	 begin
    if rst='1' then			   
		Ms_ctrl <= "10";
		PCclr_ctrl <= '1';		  	-- Reset State
		PCinc_ctrl <= '0';
		IRld_ctrl <= '0';
		RFs_ctrl <= "00";		
		Rfwe_ctrl <= '0';
		Mre_ctrl <= '0';
		Mwe_ctrl <= '0';					
		jmpen_ctrl <= '0';		
		oe_ctrl <= '0';
		state <= S0;
    elsif (clock'event and clock='1') then
	case state is 
	  when S0 =>	PCclr_ctrl <= '0';	-- Reset State	
			state <= S1;	

	  when Sdly =>								-- Delay State	
			maccesdelay:=maccesdelay-1;
			if maccesdelay=0 then state <= delaystate;
			   else state <= Sdly ;
			end if;
			
	  when S1 =>	PCinc_ctrl <= '0';	
			IRld_ctrl <= '1'; -- Fetch Instruction
			Mre_ctrl <= '1';  
			RFwe_ctrl <= '0'; 
			RFr1e_ctrl <= '0'; 
			RFr2e_ctrl <= '0'; 
			Ms_ctrl <= "10";
			Mwe_ctrl <= '0';
			jmpen_ctrl <= '0';
			oe_ctrl <= '0';
			state <= S1a;
			if usedelay = false then state <= S1a;
			else 
				maccesdelay:=memdelay;
				delaystate<= S1a;
				state <= Sdly;
			end if;
	  when S1a => 	
	  		  state <= S1b;		--One memory access delay	
	  when S1b => 
	        Mre_ctrl <= '0';
			  IRld_ctrl <= '0';
	        PCinc_ctrl <= '1';
			  state <= S2;			-- Fetch end ...
	  				
	  when S2 =>	
			  PCinc_ctrl <= '0';
			  OPCODE := IR_word(15 downto 12);
			  case OPCODE is
			    when mov1 => 	state <= S3;
			    when mov2 => 	state <= S4;
			    when mov3 => 	state <= S5;
			    when mov4 => 	state <= S6;
			    when add =>  	state <= S7;
			    when subt =>	state <= S8;
			    when jz =>		state <= S9;
			    when halt =>	state <= S10; 
			    when readm => 	state <= S11;
				 when mov5 => 	state <= S12;
			    when others => 	state <= S1;
			    end case;
					
	  when S3 =>	RFwa_ctrl <= IR_word(11 downto 8);	
			RFs_ctrl <= "01";  -- RF[rn] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';		  
			if usedelay = false then state <= S3a;
			else 
				maccesdelay:=memdelay;
				delaystate<= S3a;
				state <= Sdly;
			end if;
	  when S3a => RFwe_ctrl <= '1'; 
	      Mre_ctrl <= '0'; 
			state <= S3b;
	  when S3b => 	RFwe_ctrl <= '0';
			state <= S1;
	    
	  when S4 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[rn]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "00";	  
			IRld_ctrl <= '0';
			state <= S4a;			-- read value from RF
	  when S4a =>   Mre_ctrl <= '0';
			Mwe_ctrl <= '1';		-- write into memory				
			if usedelay = false then state <= S4b;
			else 
				maccesdelay:=memdelay;
				delaystate<= S4b;
				state <= Sdly;
			end if;			
	  when S4b =>   Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			state <= S1;
		
	  when S5 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[RF[rn]] <= RF[rm]
			Ms_ctrl <= "00";
			ALUs_ctrl <= "01";
			RFr2a_ctrl <= IR_word(7 downto 4); 
			RFr2e_ctrl <= '1'; -- set addr.& data
			state <= S5a;
	  when S5a =>   Mre_ctrl <= '0';			
			Mwe_ctrl <= '1'; -- write into memory
			if usedelay = false then state <= S5b;
			else 
				maccesdelay:=memdelay;
				delaystate<= S5b;
				state <= Sdly;
			end if;			
	  when S5b => 	Ms_ctrl <= "10";-- return
			Mwe_ctrl <= '0';
			state <= S1;
					
	  when S6 =>	RFwa_ctrl <= IR_word(11 downto 8);	
			RFwe_ctrl <= '1'; -- RF[rn] <= imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			state <= S6a;
	  when S6a =>   state <= S1;
	    
	  when S7 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] + RF[rm]
			RFr2e_ctrl <= '1'; 
			RFr2a_ctrl <= IR_word(7 downto 4);
 			ALUs_ctrl <= "10";
			state <= S7a;
	  when S7a =>   RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S7b;
	  when S7b =>   state <= S1;
					
	  when S8 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] - RF[rm]
			RFr2a_ctrl <= IR_word(7 downto 4);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "11";
			state <= S8a;
	  when S8a =>   RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S8b;
	  when S8b =>   state <= S1;
	  when S9 =>	jmpen_ctrl <= '1';
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- jz if R[rn] = 0
			ALUs_ctrl <= "00";
			state <= S9a;
	  when S9a =>   state <= S9b;
	  when S9b =>   jmpen_ctrl <= '0';
	        state <= S1;
	  when S10 =>	state <= S10; -- halt
		
	  when S11 =>   Ms_ctrl <= "01";
			Mre_ctrl <= '1'; -- read memory
			Mwe_ctrl <= '0';		  
			if usedelay = false then state <= S11a;
			else 
				maccesdelay:=memdelay;
				delaystate<= S11a;
				state <= Sdly;
			end if;			
	  when S11a =>  oe_ctrl <= '1'; 
			Mre_ctrl <= '0';
			state <= S1;
			
	when s12 => 
		Ms_ctrl <= "00";		
		RFr1a_ctrl<= IR_word(7 downto 4);
		RFr1e_ctrl <= '1';
		state <= S12a;
	
	when s12a =>
	   
		RFr1e_ctrl <='0';
		Mwe_ctrl <='0';
		if usedelay = false then state <= S12b;
				else 
					maccesdelay:=memdelay;
					delaystate<= S12b;
					state <= Sdly;
				end if;
			
	when s12b => 
		state <= S12c;
	
	when s12c =>
		RFs_ctrl <= "01";
		RFwa_ctrl <= IR_word(11 downto 8);
		RFwe_ctrl <= '1';
		
		
		state <= S1;
	
	
	
	
	
	
	  when others =>
	end case;
    end if;
  end process;
end fsm;