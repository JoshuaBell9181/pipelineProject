-------------------------------------------------------------------------------------------------						     ---
-- Display first memory occurence						     ---
-- Positive logic input								     ---
-------------------------------------------------------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
entity display is
  port(
		  data      : in STD_LOGIC_VECTOR(15 downto 0);
		  seg0 	   : out STD_LOGIC_VECTOR(0 to 6);
		  seg1 	   : out STD_LOGIC_VECTOR(0 to 6);
		  seg2 	   : out STD_LOGIC_VECTOR(0 to 6);
		  seg3 	   : out STD_LOGIC_VECTOR(0 to 6));
        
end display;

architecture display_logic_func of display is

SIGNAL hexdat0      :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL hexdat1      :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL hexdat2      :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL hexdat3      :  STD_LOGIC_VECTOR(3 downto 0);

--On board clock 
--COMPONENT  clk_gen IS  
--	  generic( n  : integer := 25000;
--				  n1 : integer := 2000);  
--	  port( Clock : in  std_logic;
--			  c_out : out std_logic );
--END COMPONENT;

--7 segement display
COMPONENT B_7S is
  port( hexdat      : in STD_LOGIC_VECTOR(3 downto 0);
        seg 	    : out STD_LOGIC_VECTOR(0 to 6));
END COMPONENT;


begin

-- Setting clock
--GO: clk_gen generic map(25000,1000) Port map (CLOCK_50,clk);

hexdat0 <= data(15 downto 12); 
hexdat1 <= data(11 downto 8); 
hexdat2 <= data(7 downto 4); 
hexdat3 <= data(3 downto 0); 

display_seg: B_7S PORT MAP  (hexdat0,seg0);
display_seg1: B_7S PORT MAP (hexdat1,seg1);
display_seg2: B_7S PORT MAP (hexdat2,seg2);
display_seg3: B_7S PORT MAP (hexdat3,seg3);
	
end display_logic_func;
