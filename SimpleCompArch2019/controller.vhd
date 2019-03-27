----------------------------------------------------------------------------
-- Simple Microprocessor Design 
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
	PCld_flag:	in 	std_logic;
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
	immdata_ctrl: 	out std_logic;
	oe_ctrl:	out std_logic
);
end controller;

architecture fsm of controller is

  type state_type is (S0,S1,S1a,S1b,S1c,S2,S2a,S2b,S2c,S3Delay,S3,S3a,S3b,S4Delay,S4,S4a,S4b,S5Delay,S5,S5a,S5b,S6Delay,S6,S6a,S6b,S7Delay,S7,S7a,S7b,S8Delay,
							S8,S8a,S8b,S9Delay,S9,S9a,S9b,S10,S11Delay,S11,S11a,S11b,S12Delay,S12,S12a,S12b);
							
  signal state: state_type;
  signal IR_PS2: std_logic_vector(15 downto 0);
  signal IR_PS3: std_logic_vector(15 downto 0);



  procedure stage1 is -- Fetch Instruction, enable memread, set address mux to pass addrr. on PC
	begin
		PCinc_ctrl <= '0';	
		IRld_ctrl <= '1'; 	  	
		Ms_ctrl <= "10";  	  
		RFwe_ctrl <= '0'; 
		RFr1e_ctrl <= '0'; 
		RFr2e_ctrl <= '0'; 
		Mwe_ctrl <= '0';
		oe_ctrl <= '0';
		jmpen_ctrl <= '0';
		immdata_ctrl <= '0';
  end procedure stage1;
  
	
	--stage1a is a delay	
	
	procedure stage1b is
   begin
		IRld_ctrl <= '0';
		PCinc_ctrl <= '1';
		Mwe_ctrl <= '0';
	end procedure stage1b;
		

  function stage2(IR_word: std_logic_vector(15 downto 0)) return state_type is  -- Decode inst, disable increment of PC
    variable OPCODE_S1: std_logic_vector(3 downto 0);
    variable next_state: state_type;
	begin
	  immdata_ctrl <= '1';
	  OPCODE_S1 := IR_word(15 downto 12);
	  case OPCODE_S1 is
		when mov1 		=> 	next_state := S3Delay;
		when mov2 		=> 	next_state := S4Delay;
		when mov3	 	=> 	next_state := S5Delay;
		when mov4 		=> 	next_state := S6Delay;
		when add 		=>  next_state := S7Delay;
		when subt 		=>	next_state := S8Delay;
		when jz 		=>	next_state := S9Delay;
		when halt 		=>	next_state := S10; 
		when readm 		=> 	next_state := S11Delay;   
		when mov5 => 	next_state := S12Delay;
		when others 	=> 	next_state := S10;
	  end case;
	  return next_state;
  end ;
	
begin
  process(clock, rst, IR_word)
  begin
    if rst='1' then			   -- Reset State
		Ms_ctrl <= "10";
		PCclr_ctrl <= '1';		  	
		PCinc_ctrl <= '0';
		IRld_ctrl <= '0';
		RFs_ctrl <= "00";		
		Rfwe_ctrl <= '0';
		Mwe_ctrl <= '0';
		Mre_ctrl <= '0';
		jmpen_ctrl <= '0';
		immdata_ctrl <= '0';		
		oe_ctrl <= '0';
		state <= S0;

    elsif rising_edge(clock) then
	case state is 
	  when S0 =>	
			PCclr_ctrl <= '0';	-- Reset State	
			state <= S1;
			
				
	  when S1 => 
			stage1; -- Fetch Instruction, enable memread, set address mux to pass addrr. on PC
			state <= S1a;
	  when S1a => 	 
			state <= S1b;  	  	
	  when S1b => 	--satge1b is a delay
			stage1b;
			state <= S1c;
	  when S1c =>
			PCinc_ctrl <= '0';
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
	
--	  when S2 =>
--			 stage1;
--			 state <= S2a;
--	  when S2a =>
--			 stage1a;
--			 state <= S2b;
--	  when S2b =>
--			 state <= S2c;
--	  when S2c =>
--			 state<=stage2(IR_word);
			
	   -- called from stage2
	  when S3Delay =>
			 stage1;
			 state <= S3;
	  when S3 =>	
	      RFwa_ctrl <= IR_PS2(11 downto 8);	
			RFs_ctrl <= "01";  -- RF[rn] <= mem[direct]
			Ms_ctrl <= "01";
			Mwe_ctrl <= '0';		  
	  when S3a => 
			stage1b;
			RFwe_ctrl <= '1'; 
			state <= S3b;
	  when S3b => 	
	       PCinc_ctrl <= '0';
			 RFwe_ctrl <= '0';
			 IR_PS2 <= IR_word;
			 state<=stage2(IR_word);		
		
	  when S4Delay =>
			 stage1;
			 state <= S4;
	  when S4 =>	
	      RFr1a_ctrl <= IR_PS2(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[rn]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "00";	  
			IRld_ctrl <= '0';
			state <= S4a;			-- read value from RF
	  when S4a => 
	      stage1b;  
			Mwe_ctrl <= '1';		-- write into memory							
	  when S4b => 
	      PCinc_ctrl <= '0';  
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
			
	  when S5Delay =>
			stage1;
			state <= S5;
	  when S5 =>	
	      RFr1a_ctrl <= IR_PS2(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[RF[rn]] <= RF[rm]
			Ms_ctrl <= "00";
			ALUs_ctrl <= "01";
			RFr2a_ctrl <= IR_PS2(7 downto 4); 
			RFr2e_ctrl <= '1'; -- set addr.& data
			state <= S5a;
	  when S5a => 
	      stage1b;  			
			Mwe_ctrl <= '1'; -- write into memory			
	  when S5b => 
	      Ms_ctrl <= "10";-- return
			PCinc_ctrl <= '0';
			Mwe_ctrl <= '0';
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
	  
	  when S6Delay =>
			stage1;
			state <= S6;
	  when S6 =>	
	      RFwa_ctrl <= IR_PS2(11 downto 8);	
			RFwe_ctrl <= '1'; -- RF[rn] <= imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			state <= S6a;
	  when S6a =>
			RFwe_ctrl <= '0';
	      stage1b;
			state <= S6b;
	  when S6b =>
	      PCinc_ctrl <= '0';
			IR_PS2 <= IR_word; 
			state<=stage2(IR_word);
	  
	  when S7Delay =>
	      stage1;
			state <= S7;  
	  when S7 =>	
	      RFr1a_ctrl <= IR_PS2(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] + RF[rm]
			RFr2e_ctrl <= '1'; 
			RFr2a_ctrl <= IR_PS2(7 downto 4);
 			ALUs_ctrl <= "10";
			state <= S7a;
	  when S7a =>  
	      stage1b;
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_PS2(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S7b;
	  when S7b =>  
			RFwe_ctrl <= '0';
	      PCinc_ctrl <= '0';
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
			
	  when S8Delay =>
	      stage1;
			state <= S8;
	  when S8 =>	
	      RFr1a_ctrl <= IR_PS2(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] - RF[rm]
			RFr2a_ctrl <= IR_PS2(7 downto 4);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "11";
			state <= S8a;
	  when S8a =>   
			stage1b;
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_PS2(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S8b;
	  when S8b =>  
	      PCinc_ctrl <= '0'; 
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
	  
	  when S9Delay =>
			stage1;
			state <= S9;
	  when S9 =>
	      stage1b;
			jmpen_ctrl <= '1';
			RFr1a_ctrl <= IR_PS2(11 downto 8);	
			RFr1e_ctrl <= '1'; -- jz if R[rn] = 0
			ALUs_ctrl <= "00";
			state <= S9a;
	  when S9a => 
			 PCinc_ctrl <= '0';
			 state <= S9b;
	  when S9b =>   
			  jmpen_ctrl <= '0';
			  if PCld_flag = '0' then		
				  IR_PS2 <= IR_word;	  			
				  state<=stage2(IR_word);
			  else
		        state <= S1;  -- flush the pipeline
			  end if;
	        
			  
	  when S10 =>	state <= S10; -- halt
		
	  when S11Delay =>
	      stage1;
			state <= S11;
	  when S11 =>   
	      Ms_ctrl <= "01";
			Mwe_ctrl <= '0';		  			
	  when S11a => 
	      stage1b; 
			oe_ctrl <= '1'; 
			state <= S11b;
	  when S11b =>
			PCinc_ctrl <= '0';
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
			
			
		when S12Delay =>
			stage1;
			state <= S12;	
		when s12 => 
			Ms_ctrl <= "00";		
			RFr1a_ctrl<= IR_PS2(7 downto 4);
			RFr1e_ctrl <= '1';
			state <= S12a;
		when s12a =>
		  -- stage1b;
			RFr1e_ctrl <='0';
			Mwe_ctrl <='0';
			IR_PS3 <= IR_PS2;
			state <= S12b;
		when s12b =>
			RFs_ctrl <= "01";
			PCinc_ctrl <= '0';
			RFwa_ctrl <= IR_PS3(11 downto 8);
			RFwe_ctrl <= '1';
			IR_PS2 <= IR_word;
			state<=stage2(IR_word);
			

	  when others =>
	end case;
    end if;
  end process;
end fsm;
































