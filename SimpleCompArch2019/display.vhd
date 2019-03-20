-------------------------------------------------------------------------------------------------						     ---
-- Display first memory occurence						     ---
-- Positive logic input								     ---
-------------------------------------------------------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
entity display is
  port( CLOCK_50  : in std_logic;
		  hexdat0      : in STD_LOGIC_VECTOR(3 downto 0);
		  hexdat1      : in STD_LOGIC_VECTOR(3 downto 0);
		  hexdat2      : in STD_LOGIC_VECTOR(3 downto 0);
		  hexdat3      : in STD_LOGIC_VECTOR(3 downto 0);
        seg0 	    : out STD_LOGIC_VECTOR(0 to 6);
		  seg1 	    : out STD_LOGIC_VECTOR(0 to 6);
		  seg2 	    : out STD_LOGIC_VECTOR(0 to 6);
		  seg3 	    : out STD_LOGIC_VECTOR(0 to 6));
end display;

architecture display_logic_func of display is

SIGNAL clk : STD_LOGIC;
SIGNAL test: STD_LOGIC_VECTOR(3 downto 0);

--On board clock 
COMPONENT  clk_gen IS  
	  generic( n  : integer := 25000;
				  n1 : integer := 2000);  
	  port( Clock : in  std_logic;
			  c_out : out std_logic );
END COMPONENT;

--7 segement display
COMPONENT B_7S is
  port( hexdat      : in STD_LOGIC_VECTOR(3 downto 0);
        seg 	    : out STD_LOGIC_VECTOR(0 to 6));
END COMPONENT;


begin

-- Setting clock
GO: clk_gen generic map(25000,1000) Port map (CLOCK_50,clk);

test <= "0000";

display_seg: B_7S PORT MAP (test,seg0);
display_seg1: B_7S PORT MAP (test,seg1);
display_seg2: B_7S PORT MAP (test,seg2);
display_seg3: B_7S PORT MAP (test,seg3);
	
end display_logic_func;