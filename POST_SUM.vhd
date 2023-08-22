
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY POST_SUM IS
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
END POST_SUM;

ARCHITECTURE RTL OF POST_SUM IS
        COMPONENT SPECIAL_CASE_HANDLER IS
                PORT (
                        CASEX : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
                        CASEY : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
                        X : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        Y : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        RESULT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
                );
        END COMPONENT;

        COMPONENT NORMALIZER IS
                PORT (
                        EXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        MAN : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
                        NEXP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                        NMAN : OUT STD_LOGIC_VECTOR(22 DOWNTO 0)
                );
        END COMPONENT;

        COMPONENT CARRY_ADDER IS
                GENERIC (N : NATURAL);
                PORT (
                        X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        CIN : IN STD_LOGIC;
                        S : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        COUT : OUT STD_LOGIC
                );
        END COMPONENT;

        COMPONENT MULTIPLEXER_N IS
                GENERIC (N : NATURAL);
                PORT (
                        X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        Y : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        S : IN STD_LOGIC;
                        Z : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
                );
        END COMPONENT;

        COMPONENT ROUNDER IS
                PORT (
                        ZEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        ZMAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                        ZROUNDED : OUT STD_LOGIC_VECTOR(30 DOWNTO 0)
                );
        END COMPONENT;
        SIGNAL ExpIncr : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL ExpNorm : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL MantNorm : STD_LOGIC_VECTOR(22 DOWNTO 0);
        SIGNAL FinalExp : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL FinalMant : STD_LOGIC_VECTOR(22 DOWNTO 0);
        SIGNAL SpecialResult : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL TempResult : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

        U1 : NORMALIZER PORT MAP(
                EXP => XEXP,
                MAN => MAN,
                NEXP => ExpNorm,
                NMAN => MantNorm
        );

        U2 : SPECIAL_CASE_HANDLER PORT MAP(
                CASEX => XCASE,
                CASEY => YCASE,
                X => X,
                Y => Y,
                RESULT => SpecialResult
        );
		  
		  --invece che fare la somma e usare un mux, conviene sommare direttamente il bit

        U3 : CARRY_ADDER
        GENERIC MAP(N => 8)
        PORT MAP(
                X => XEXP,
                CIN => '1',
                S => ExpIncr
        );

        U4 : MULTIPLEXER_N
        GENERIC MAP(N => 8)
        PORT MAP(
                X => ExpNorm,
                Y => ExpIncr,
                S => XEXP_INCR,
                Z => FinalExp
        );

        U5 : MULTIPLEXER_N
        GENERIC MAP(N => 23)
        PORT MAP(
                X => MantNorm,
                Y => MAN(23 DOWNTO 1),
                S => XEXP_INCR,
                Z => FinalMant
        );

        TempResult <= XSIGN & FinalExp & FinalMant;

        U6 : MULTIPLEXER_N
        GENERIC MAP(N => 32)
        PORT MAP(
                X => TempResult,
                Y => SpecialResult,
                S => SPECIAL,
                Z => Z
        );

        U7 : ROUNDER
		  PORT MAP (
			ZEXP => ZEXP,
			ZMAN => ZMAN,
			ZROUNDED => ZROUNDED
		);

END RTL;