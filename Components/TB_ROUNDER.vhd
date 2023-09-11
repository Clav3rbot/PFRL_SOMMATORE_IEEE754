 LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY TB_ROUNDER IS
  END TB_ROUNDER;

  ARCHITECTURE behavior OF TB_ROUNDER IS 

  -- Component Declaration
          COMPONENT ROUNDER IS
        PORT (
                ZEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                ZMAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                ZROUNDED : OUT STD_LOGIC_VECTOR(30 DOWNTO 0)
        );
END COMPONENT;

          SIGNAL ZEXP :  std_logic_vector(7 downto 0);
          SIGNAL ZMAN :  std_logic_vector(26 downto 0);
			 SIGNAL ZROUNDED : STD_LOGIC_VECTOR(30 DOWNTO 0);
          

  BEGIN

  -- Component Instantiation
          uut: ROUNDER PORT MAP(
                  ZEXP => ZEXP,
						ZMAN => ZMAN,
						ZROUNDED => ZROUNDED
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
	  
		ZEXP <= "00000000";
	   ZMAN <= "000000000000000000000000000";
        wait for 100 ns; 

		ZEXP <= "11111110";
	   ZMAN <= "111111111111111111111111000";
        wait;
     END PROCESS tb;
  --  End Test Bench 

  END;
