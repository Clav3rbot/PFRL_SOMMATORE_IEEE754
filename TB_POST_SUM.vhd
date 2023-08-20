
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
                        XEXP_INCR : IN STD_LOGIC;
                        MAN : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
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
        SIGNAL XEXP_INCR : STD_LOGIC;
        SIGNAL MAN : STD_LOGIC_VECTOR(23 DOWNTO 0);

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
				XEXP_INCR => XEXP_INCR,
				MAN => MAN,
				Z => Z
        );
		  
        --  Test Bench Statements
        tb : PROCESS
        BEGIN

                WAIT FOR 50 ns;
					 
					 X <= "00000000000000000000000000000000";
					 Y <= "00000000000000000000000000000000";
					 XSIGN <= '0';
					 XCASE <= "000";
					 YCASE <= "000";
					 SPECIAL <= '0';
					 XEXP <= "00000000";
					 XEXP_INCR <= '0';
					 MAN <= "000000000000000000000000";
                
					 WAIT FOR 50 ns;
					 
					 X <= "01111111100000000000000000000000";
					 Y <= "01000010000000000000110000010000";
					 XSIGN <= '0';
					 XCASE <= "001";
					 YCASE <= "100";
					 SPECIAL <= '1';
					 XEXP <= "11111111";
					 XEXP_INCR <= '0';
					 MAN <= "000000000000000000000000";
                
					 WAIT FOR 50 ns;
					 
					 X <= "01000001111010001100110011000000";
					 Y <= "11111111111010001100110011000000";
					 XSIGN <= '0';
					 XCASE <= "100";
					 YCASE <= "011";
					 SPECIAL <= '1';
					 XEXP <= "11111111";
					 XEXP_INCR <= '0';
					 MAN <= "111010001100110011000000";
					 
					 WAIT FOR 50 ns;
					 
					 X <= "01111111100000000000000000000000";
					 Y <= "11111111100000000000000000000000";
					 XSIGN <= '0';
					 XCASE <=  "001";
					 YCASE <= "010";
					 SPECIAL <= '1';
					 XEXP <= "11111111";
					 XEXP_INCR <= '0';
					 MAN <="000000000000000000000000"; --ok 
					 
					 WAIT FOR 50 ns;
					 
					 X <= "00000000011111111111111111111111";
					 Y <= "00000000011111111111111111111111";
					 XSIGN <= '0';
					 XCASE <=  "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "00000000";
					 XEXP_INCR <= '1';
					 MAN <="111111111111111111111111";	--ok
					 
					 WAIT FOR 50 ns;
					 
					 X <= "00000000011111111111111111111111";
					 Y <= "10000000011111111111111111111111";
					 XSIGN <= '0';
					 XCASE <=  "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "00000000";
					 XEXP_INCR <= '1';
					 MAN <="111111111111111111111110"; -- non ok
					 WAIT FOR 50 ns;
					 
					 X <= "10000000000000000000000000000011";
					 Y <= "11111111011111111111111111111111";
					 XSIGN <= '1';
					 XCASE <=  "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "11111110";
					 XEXP_INCR <= '0';
					 MAN <="111111111111111111111111"; -- ok 
					 WAIT FOR 50 ns;
					 
					 X <= "01111111011111111111111111111111";
					 Y <= "01111110000000000000000000000011";
					 XSIGN <= '0';
					 XCASE <=  "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "11111110";
					 XEXP_INCR <= '1';
					 MAN <="000111111111111111111111"; -- non ok 
					 WAIT FOR 50 ns;
					 
					 X <= "01000100101111100011011110101110";
					 Y <= "01000100101001101010010011001101";
					 XSIGN <= '0';
					 XCASE <=  "100";
					 YCASE <= "100";
					 SPECIAL <= '0';
					 XEXP <= "10001001";
					 XEXP_INCR <= '0';
					 MAN <="011001001101110001111011"; -- non ok 
					 -- output should be 01000101001100100110111000111110
                
					 WAIT;
					 
        END PROCESS tb;
        --  End Test Bench 

END;