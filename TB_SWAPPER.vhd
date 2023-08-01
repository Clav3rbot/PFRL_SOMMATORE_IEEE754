
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
	X <= "01010101000000000000000000000011";
			Y <= "01010101000000000000000000000000";
		wait for 100 ns;
			X <= "01000001111010001100110011000000";
			Y <= "01000001111010001100110011000001";
		wait for 100 ns;
			X <= "01010101000000000000000000000000";
			Y <= "01110101000000000000000000001001";
		wait for 100 ns;
			X <= "01110101000000000000000000000000";
			Y <= "01010101000000000000000000000011";
		wait for 100 ns;
			X <= "01010101000000000000000000000000";
			Y <= "01010101000000000000000010001000";
		wait for 100 ns;
			X <= "01010101000000000000000010000000";
			Y <= "01010101000000000000000000000000";
		wait for 100 ns;
			X <= "01011111000000000000000000000000";
			Y <= "01010101000000000000000010001000";
		wait for 100 ns;
			X <= "01010101000000000000000010001000";
			Y <= "01011111000000000000000000000000";
		wait for 50 ns;	
			X <= "00000000000000000000000000000010";
			Y <= "00010000100000000000000000000001";
      wait;
   end process;

END;