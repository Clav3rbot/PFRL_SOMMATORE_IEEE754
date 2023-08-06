
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_LEFT_SHIFTER IS
END TB_LEFT_SHIFTER;
 
ARCHITECTURE behavior OF TB_LEFT_SHIFTER IS 
 
    COMPONENT LEFT_SHIFTER
    PORT(
         X : IN  std_logic_vector(23 downto 0);
         S : IN  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(23 downto 0) := (others => '0');
   signal S : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(23 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LEFT_SHIFTER PORT MAP (
          X => X,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
		X <= "000000000000000000000000";
		S  <= "00000000";

	wait for 100 ns;
		
		X <= "010101010101010101010101"; 
		S <= "00011000";
		-- output should be 000000000000000000000000

	wait for 20 ns;

		X <= "110010011010110111000010"; 
		S <= "00000010";
		-- output should be 010011010110111000010000
	wait;
   end process;

END;
