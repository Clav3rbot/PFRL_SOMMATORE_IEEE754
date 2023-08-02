
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_SWAPPER IS
END TB_SWAPPER;
 
ARCHITECTURE behavior OF TB_SWAPPER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SWAPPER
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         DIFF : OUT  std_logic_vector(7 downto 0);
         G : OUT  std_logic_vector(31 downto 0);
         S : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0);
   signal B : std_logic_vector(31 downto 0);

 	--Outputs
   signal DIFF : std_logic_vector(7 downto 0);
   signal G : std_logic_vector(31 downto 0);
   signal S : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SWAPPER PORT MAP (
          A => A,
          B => B,
          DIFF => DIFF,
          G => G,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			A <= "01010101000000000000000000000011";
			B <= "01010101000000000000000000000000";
		wait for 100 ns;
			A <= "01000001111010001100110011000000";
			B <= "01000001111010001100110011000001";
		wait for 100 ns;
			A <= "01010101000000000000000000000000";
			B <= "01110101000000000000000000001001";
		wait for 100 ns;
			A <= "01110101000000000000000000000000";
			B <= "01010101000000000000000000000011";
		wait for 100 ns;
			A <= "01010101000000000000000000000000";
			B <= "01010101000000000000000010001000";
		wait for 100 ns;
			A <= "01010101000000000000000010000000";
			B <= "01010101000000000000000000000000";
		wait for 100 ns;
			A <= "01011111000000000000000000000000";
			B <= "01010101000000000000000010001000";
		wait for 100 ns;
			A <= "01010101000000000000000010001000";
			B <= "01011111000000000000000000000000";
		wait for 100 ns;	
			A <= "00000000000000000000000000000010";
			B <= "00010000100000000000000000000001";
		wait for 100 ns;
		   A <= "00010000100000000000000000000000";
         B <= "00010000100000000000000000000001";
      wait for 100 ns;
         A <= "00010000100000000001010101001010";
			B <= "00010000111100000111001110000001";
			wait;
		  wait for 100 ns;
			A <= "00010000100000000000000000000000";
			B <= "00010000100000000000000000000001";
      wait for 100 ns;
			A <= "00010000100000000000000110000000";
			B <= "00010000100000000001100000000111";
      wait for 100 ns;
			A <= "00010000100000000001100000110000";
			B <= "00010000100000000000000100000001";
		wait for 100 ns;
         A <= "00010000100000000001100011110000";
			B <= "00010000100000000000101010111111";
      wait for 100 ns;
         A <= "00010000100000000000000000000001";
			B <= "00010000100000000001010101001010";	
			wait;
   end process;

END;