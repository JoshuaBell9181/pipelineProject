-------------------------------------------------------------------------------------------------
--                 Bin_7S_case.vhd						     ---
-- Binary-to-7-segment converter.						     ---
-- Positive logic input								     ---
-- Negative logic output to cope with 7S Altera board.			     ---
-- Developed by E.C.G.           				    25/07/2006    ---
-------------------------------------------------------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
entity B_7S is
  port( hexdat      : in STD_LOGIC_vector(3 downto 0);
        seg 	    : out STD_LOGIC_vector(0 to 6));
end B_7S;

architecture B_7S_logic_func of B_7S is
begin
  process( hexdat )
  begin
    case hexdat is
      when "0000" => seg <= not ("1111110");
      when "0001" => seg <= not ("0110000");
      when "0010" => seg <= not ("1101101");
      when "0011" => seg <= not ("1111001");
      when "0100" => seg <= not ("0110011");
      when "0101" => seg <= not ("1011011");
      when "0110" => seg <= not ("1011111");
      when "0111" => seg <= not ("1110000");
      when "1000" => seg <= not ("1111111");
      when "1001" => seg <= not ("1111011");
      when "1010" => seg <= not ("1110111");
      when "1011" => seg <= not ("0011111");
      when "1100" => seg <= not ("0001101");
      when "1101" => seg <= not ("0111101");
      when "1110" => seg <= not ("1001111");
      when "1111" => seg <= not ("1000111");
     end case;
  end process;
end B_7S_logic_func;