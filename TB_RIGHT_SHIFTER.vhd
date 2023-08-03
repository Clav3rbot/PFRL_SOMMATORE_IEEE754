LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY TB_RIGHT_SHIFTER IS
END TB_RIGHT_SHIFTER;
 
ARCHITECTURE behavior OF TB_RIGHT_SHIFTER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RIGHT_SHIFTER
    PORT(
		  X : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        Y : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
        );
    END COMPONENT;
    

   --Inputs
	signal X   : std_logic_vector(23 downto 0);
	signal S   : std_logic_vector(7 downto 0);


 	--Outputs
	signal Y   : std_logic_vector(23 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RIGHT_SHIFTER PORT MAP (
			 X => X,
          S => S,
          Y => Y
        ); 

process
	begin
		X <= "000000000000000000000000";
		S <= "00000000";

	wait for 100 ns;	

		X <= "010101010101010101010101"; 
		S <= "00011000";
		-- output should be 00000000000000000000000
		
	wait for 100 ns;

		X <= "110010011010110111000010"; 
		S <= "00000010";
		-- output should be 001100100110101101110000
	
	wait;
	end process;
end;