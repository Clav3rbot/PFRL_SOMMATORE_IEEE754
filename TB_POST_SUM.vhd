
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TB_POST_SUM IS
END TB_POST_SUM;

ARCHITECTURE behavior OF TB_POST_SUM IS

        -- Component Declaration
        COMPONENT POST_SUM
                PORT (
                        X : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        Y : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        XSIGN : IN STD_LOGIC;
                        XCASE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
                        YCASE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
                        SPECIAL : IN STD_LOGIC;
                        XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        MAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                        Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
                );
        END COMPONENT;

        --Inputs
        SIGNAL X : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL Y : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL XSIGN : STD_LOGIC;
        SIGNAL XCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);
        SIGNAL YCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);
        SIGNAL SPECIAL : STD_LOGIC;
        SIGNAL XEXP : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL MAN : STD_LOGIC_VECTOR(26 DOWNTO 0);

        --Outputs
        SIGNAL Z : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

        -- Component Instantiation
        uut : POST_SUM PORT MAP(
				X => X,
				Y => Y,
				XSIGN => XSIGN,
				XCASE => XCASE,
				YCASE => YCASE,
				SPECIAL => SPECIAL,
				XEXP => XEXP,
				MAN => MAN,
				Z => Z
        );
		  
        --  Test Bench Statements
        tb : PROCESS
        BEGIN
					 
					 X <= "00000000000000000000000000000000";
					 Y <= "00000000000000000000000000000000";
					 XSIGN <= '0';
					 XCASE <= "000";
					 YCASE <= "000";
					 SPECIAL <= '0';
					 XEXP <= "00000000";
					 MAN <= "000000000000000000000000000";
                
					 WAIT FOR 100 ns;
					 
					 X <= "01000100101111100011011110101110";
					 Y <= "01000100101111100011011110101110";
					 XSIGN <= '0';
					 XCASE <= "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "10001001";
					 MAN <= "000000000000000000000000000";
					 
					 WAIT FOR 50 ns;
					 
					 X <= "01111011000001000010000000000000";
					 Y <= "01000010000000000000110000010000";
					 XSIGN <= '0';
					 XCASE <= "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "00001001";
					 MAN <= "001111111111111111111111111";
					 
					 WAIT FOR 50 ns;
					 
					 X <= "01111011000001000010000000000000";
					 Y <= "01000010000000000000110000010000";
					 XSIGN <= '0';
					 XCASE <= "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "00001001";
					 MAN <= "000111001111111111111111111";
					 
					 WAIT FOR 50 ns;
					 
					 X <= "00000000000000000000000000000000";
					 Y <= "01000010000000000000110000010000";
					 XSIGN <= '0';
					 XCASE <= "000";
					 YCASE <= "100";
					 SPECIAL <= '1';
					 XEXP <= "00001001";
					 MAN <= "000111001111111111111111111";
                
					 WAIT;
					 
        END PROCESS tb;
        --  End Test Bench 

END;