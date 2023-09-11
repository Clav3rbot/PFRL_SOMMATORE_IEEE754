
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SUM IS
        PORT (
                XSIGN : IN STD_LOGIC;
                YSIGN : IN STD_LOGIC;
                XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                XMAN : IN STD_LOGIC_VECTOR (26 DOWNTO 0);
                YMAN : IN STD_LOGIC_VECTOR (26 DOWNTO 0);
                ZMANT : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
                XEXP_INCR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
END SUM;

ARCHITECTURE RTL OF SUM IS

        COMPONENT CONDITIONAL_C2 IS
                GENERIC (N : NATURAL);
                PORT (
                        X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        S : IN STD_LOGIC;
                        Z : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        COUT : OUT STD_LOGIC
                );
        END COMPONENT;

        COMPONENT RIPPLE_CARRY_ADDER IS
                GENERIC (N : NATURAL);
                PORT (
                        X : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
                        Y : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
                        CIN : IN STD_LOGIC;
                        S : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
                        COUT : OUT STD_LOGIC
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

        SIGNAL OperationLogic : STD_LOGIC;
        SIGNAL C2Mant : STD_LOGIC_VECTOR(26 DOWNTO 0);
        SIGNAL SumCarry : STD_LOGIC;
        SIGNAL XExpIncr : STD_LOGIC;
        SIGNAL ZMant_Temp : STD_LOGIC_VECTOR(26 DOWNTO 0);

BEGIN

        OperationLogic <= XSIGN XOR YSIGN;

        U1 : CONDITIONAL_C2
        GENERIC MAP(N => 27)
        PORT MAP(
                X => YMAN,
                S => OperationLogic,
                Z => C2Mant
        );

        U2 : RIPPLE_CARRY_ADDER
        GENERIC MAP(N => 27)
        PORT MAP(
                X => XMAN,
                Y => C2Mant,
                CIN => '0',
                S => ZMant_Temp,
                COUT => SumCarry -- importante ! se = 1 => bisogna incrementare l'esponente
        );

        XExpIncr <= SumCarry AND (NOT OperationLogic);

        ZMANT <= ZMant_Temp WHEN XExpIncr = '0' ELSE
                ('1' & ZMant_Temp(26 DOWNTO 1));

        U3 : CARRY_ADDER
        GENERIC MAP(N => 8)
        PORT MAP(
                X => XEXP,
                CIN => XExpIncr,
                S => XEXP_INCR
        );

END RTL;