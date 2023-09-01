
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
                GENERIC (N : NATURAL);
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

        SIGNAL MantIncr : STD_LOGIC;
        SIGNAL ExtMant : STD_LOGIC_VECTOR(22 DOWNTO 0);
        SIGNAL ExtExp : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL TempMan : STD_LOGIC_VECTOR(22 DOWNTO 0);
        SIGNAL TempExp : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL MantCarry : STD_LOGIC;
        SIGNAL ExpCarry : STD_LOGIC;
        SIGNAL isInfty : STD_LOGIC;

BEGIN
        U1 : ROUNDER_STD
        PORT MAP(
                LAST4 => ZMAN(3 DOWNTO 0),
                INCR => MantIncr
        );

        -- Aumento la mantissa se necessario (indicato da ROUNDER_STD)
        ExtMant <= "0000000000000000000000" & MantIncr;

        U2 : RIPPLE_CARRY_ADDER
        GENERIC MAP(N => 23)
        PORT MAP(
                X => ZMAN(25 DOWNTO 3),
                Y => ExtMant,
                CIN => '0',
                S => TempMan,
                COUT => MantCarry
        );

        -- Aumento l'esponente se c'è un overflow di mantissa
        ExtExp <= "0000000" & MantCarry;

        U3 : RIPPLE_CARRY_ADDER
        GENERIC MAP(N => 8)
        PORT MAP(
                X => ZEXP,
                Y => ExtExp,
                CIN => '0',
                S => TempExp,
                COUT => ExpCarry
        );

        isInfty <= '1' WHEN (TempExp = "11111111" OR ExpCarry = '1') ELSE
                '0';

        ZROUNDED <= ("11111111" & "00000000000000000000000") WHEN isInfty = '1' ELSE
                TempExp & TempMan;
END Behavioral;