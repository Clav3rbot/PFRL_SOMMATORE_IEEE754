LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY TB_NORMALIZER IS
END TB_NORMALIZER;
 
ARCHITECTURE behavior OF TB_NORMALIZER IS 
  
    COMPONENT NORMALIZER
    PORT(
         EXP : IN  std_logic_vector(7 downto 0);
         MAN : IN  std_logic_vector(26 downto 0);
         NEXP : OUT  std_logic_vector(7 downto 0);
         NMAN : OUT  std_logic_vector(26 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EXP : std_logic_vector(7 downto 0);
   signal MAN : std_logic_vector(26 downto 0);

 	--Outputs
   signal NEXP : std_logic_vector(7 downto 0);
   signal NMAN : std_logic_vector(26 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NORMALIZER PORT MAP (
          EXP => EXP,
          MAN => MAN,
          NEXP => NEXP,
          NMAN => NMAN
        );

   -- Stimulus process
   stim_proc: process
   begin
	
      wait for 100 ns;	
		EXP <= "00000000";
	   MAN <= "000000000000000000000000000";
		
		wait for 50 ns;	
		EXP <= "00011000";
	   MAN <= "000001000000000000100110000";
		
		wait for 50 ns;
		
		EXP <= "00000010";
	   MAN <= "000001000000000000100110000";
		
		wait for 50 ns;      
      EXP <= "01010100";
		MAN  <= "000000000000000000000011000";
		
		wait for 50 ns;      
      EXP <= "01010101";
		MAN  <= "000000000000000000000000000";
		
      wait;
   end process;

END;
