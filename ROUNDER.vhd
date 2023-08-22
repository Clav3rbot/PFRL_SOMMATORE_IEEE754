
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ROUNDER IS
    PORT (
        ZEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        ZMAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
        ZROUNDED : OUT STD_LOGIC_VECTOR(30 DOWNTO 0)
    );
END ROUNDER;

ARCHITECTURE Behavioral OF ROUNDER IS

    COMPONENT RIPPLE_CARRY_ADDER
        GENERIC (N : NATURAL := N);
        PORT (
            X : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            CIN : IN STD_LOGIC;
            S : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            COUT : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT ROUNDER_STD
        PORT (
            LAST4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            INCR : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL ManIncr : STD_LOGIC;
    SIGNAL MZVec : STD_LOGIC_VECTOR(22 DOWNTO 0);
    SIGNAL EZVec : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL TempMan : STD_LOGIC_VECTOR(22 DOWNTO 0);
    SIGNAL TempExp : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL MantAddOF : STD_LOGIC;
    SIGNAL ExpAddOF : STD_LOGIC;

    -- Aumento la mantissa se necessario (indicato da ROUNDER_STD)
    --MZVec 	<= "0000000000000000000000" & ManIncr;

    -- Aumento l'esponente se c'è un overflow di mantissa
    --EZVec 	<= "0000000" & MantAddOF;

BEGIN
    U1 : ROUNDER_STD
    PORT MAP(
        LAST4 => ZMAN(3 DOWNTO 0),
        INCR => ManIncr
    );
    U2 : RIPPLE_CARRY_ADDER
    GENERIC MAP(N => 23)
    PORT MAP(
        X => ZMAN(25 DOWNTO 3),
        Y => Y, --da controllare se aggiungere MZVec
        CIN => '0',
        S => TempMan,
        COUT => MantAddOF
    );

    U3 : RIPPLE_CARRY_ADDER
    GENERIC MAP( N => 8)
        X => ZEXP,
        Y => Y, --da controllare EZVec
        CIN => '0',
        S => TempExp,
        COUT => ExpAddOF
    );
	 ZROUNDED <= TempExp & TempMan;

    -- isZero <= '1' when TempExp		= "00000000" or Man(26) = '0' else '0';
    -- isInfty 	<= '1' when ( TempE 	= "11111111" or ExpAddOF 	= '1' ) else '0';
END Behavioral;