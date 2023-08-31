
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY POST_SUM IS
        PORT (
                XSIGN : IN STD_LOGIC;
                SPECIAL : IN STD_LOGIC;
					 SPECIAL_RESULT: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                MAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
END POST_SUM;

ARCHITECTURE RTL OF POST_SUM IS

        COMPONENT NORMALIZER IS
                PORT (
                        EXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        MAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                        NEXP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                        NMAN : OUT STD_LOGIC_VECTOR(26 DOWNTO 0)
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
        SIGNAL MantNorm : STD_LOGIC_VECTOR(26 DOWNTO 0);
        SIGNAL TempResult : STD_LOGIC_VECTOR(30 DOWNTO 0);

BEGIN

        U1 : NORMALIZER PORT MAP(
                EXP => XEXP,
                MAN => MAN,
                NEXP => ExpNorm,
                NMAN => MantNorm
        );

        U2 : ROUNDER
        PORT MAP(
                ZEXP => ExpNorm,
                ZMAN => MantNorm,
                ZROUNDED => TempResult
        );

        Z <= (XSIGN & TempResult) WHEN SPECIAL = '0' ELSE
                SPECIAL_RESULT;

END RTL;