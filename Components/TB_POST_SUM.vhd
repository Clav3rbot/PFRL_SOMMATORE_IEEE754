
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TB_POST_SUM IS
END TB_POST_SUM;

ARCHITECTURE behavior OF TB_POST_SUM IS

        -- Component Declaration
        COMPONENT POST_SUM
                PORT (
                        XSIGN : IN STD_LOGIC;
                        SPECIAL : IN STD_LOGIC;
								SPECIAL_RESULT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        MAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                        Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
                );
        END COMPONENT;

        --Inputs
        SIGNAL XSIGN : STD_LOGIC;
        SIGNAL SPECIAL : STD_LOGIC;
		  SIGNAL SPECIAL_RESULT : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL XEXP : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL MAN : STD_LOGIC_VECTOR(26 DOWNTO 0);

        --Outputs
        SIGNAL Z : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

        -- Component Instantiation
        uut : POST_SUM PORT MAP(
				XSIGN => XSIGN,
				SPECIAL => SPECIAL,
				SPECIAL_RESULT => SPECIAL_RESULT,
				XEXP => XEXP,
				MAN => MAN,
				Z => Z
        );
		  
        --  Test Bench Statements
        tb : PROCESS
        BEGIN
					 
					 XSIGN <= '0';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "00000000000000000000000000000000";
					 XEXP <= "00000000";
					 MAN <= "110100000000000100001100000";
                
					 WAIT FOR 100 ns;
					 
					 XSIGN <= '0';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "01010101010101010101010101010101";
					 XEXP <= "11111111";
					 MAN <= "111111111111111111111111100";
					 
					 WAIT FOR 50 ns;
					 
					 
					 XSIGN <= '1';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "01010101010101010101010101010101";
					 XEXP <= "11111110";
					 MAN <= "111111111111111111111111100";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "01010101010101010101010101010101";
					 XEXP <= "00000001";
					 MAN <= "000000000000000000000001000";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "01010101010101010101010101010101";
					 XEXP <= "10001001";
					 MAN <= "000000000000000000000000000";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "01010101010101010101010101010101";
					 XEXP <= "00001001";
					 MAN <= "001111111111111111111111111";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
					 SPECIAL <= '0';
					 SPECIAL_RESULT <= "01010101010101010101010101010101";
					 XEXP <= "00001001";
					 MAN <= "000111001111111111111111111";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
					 SPECIAL <= '1';
					 SPECIAL_RESULT <= "11111111100000000000000000000000";
					 XEXP <= "00001001";
					 MAN <= "000111001111111111111111111";
                
					 WAIT;
					 
        END PROCESS tb;
        --  End Test Bench 

END;