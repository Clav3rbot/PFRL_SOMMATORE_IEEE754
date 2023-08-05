-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TB_SUM IS
END TB_SUM;

ARCHITECTURE behavior OF TB_SUM IS

        -- Component Declaration
        COMPONENT SUM
                PORT (
                        XSIGN : IN STD_LOGIC;
                        YSIGN : IN STD_LOGIC;
                        XMAN : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
                        YMAN : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
                        ZMANT : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
                        EXPINCR : OUT STD_LOGIC
                );
        END COMPONENT;

        --Inputs
        SIGNAL XSIGN : STD_LOGIC;
        SIGNAL YSIGN : STD_LOGIC;
        SIGNAL XMAN : STD_LOGIC_VECTOR (23 DOWNTO 0);
        SIGNAL YMAN : STD_LOGIC_VECTOR (23 DOWNTO 0);

        --Outputs
        SIGNAL ZMANT : STD_LOGIC_VECTOR(23 DOWNTO 0);
        SIGNAL EXPINCR : STD_LOGIC;

BEGIN

        -- Component Instantiation
        uut : SUM PORT MAP(
                XSIGN => XSIGN,
                YSIGN => YSIGN,
                XMAN => XMAN,
                YMAN => YMAN,
                ZMANT => ZMANT,
                EXPINCR => EXPINCR
        );
        --  Test Bench Statements
        tb : PROCESS
        BEGIN
                WAIT FOR 100 ns;
					 
                XSIGN <= '0';
                YSIGN <= '0';
                XMAN <= "100000001000000000000000";
                YMAN <= "000000010000000000000000";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
                YSIGN <= '1';
                XMAN <= "100000001000000000000000";
                YMAN <= "000000010000000000000000";
					 
					 WAIT FOR 50 ns;
					 
					 XSIGN <= '0';
                YSIGN <= '0';
                XMAN <= "100000000000000000000001";
                YMAN <= "100000000000000000000001";
					 
                WAIT;
        END PROCESS tb;
        --  End Test Bench 

END;