LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_PRIORITY_ENCODER IS
END TB_PRIORITY_ENCODER;
 
ARCHITECTURE behavior OF TB_PRIORITY_ENCODER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PRIORITY_ENCODER
    PORT(
         X : IN  std_logic_vector(23 downto 0);
         SHIFT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(23 downto 0);

 	--Outputs
   signal SHIFT : std_logic_vector(7 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PRIORITY_ENCODER PORT MAP (
          X => X,
          SHIFT => SHIFT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		X <= "000000000000000000000000";
      wait for 100 ns;	

		X <= "010000010000000000000100";
		-- expected output: 00000001
		wait for 50 ns;
		
		X <= "000000100001110000000000";
		-- expected output:00000110
		wait for 50 ns;
		
		X <= "000000000000000101100001";
		-- expected output:00001111
		
      wait;
   end process;

END;