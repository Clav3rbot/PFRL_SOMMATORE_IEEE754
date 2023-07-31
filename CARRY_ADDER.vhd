
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CARRY_ADDER IS
        GENERIC (N : NATURAL := 8);
        PORT (
                X    : IN  STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                CIN  : IN  STD_LOGIC;
                S    : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                COUT : OUT STD_LOGIC
        );
END CARRY_ADDER;

ARCHITECTURE STRUCT OF CARRY_ADDER IS

        COMPONENT HALF_ADDER IS
                PORT (
                        X    : IN  STD_LOGIC;
                        CIN  : IN  STD_LOGIC;
                        S    : OUT STD_LOGIC;
                        COUT : OUT STD_LOGIC
                );
        END COMPONENT;

        SIGNAL C : STD_LOGIC_VECTOR(N DOWNTO 0);

BEGIN

        GEN : FOR i IN 0 TO N - 1 GENERATE
                U : HALF_ADDER PORT MAP(
                        X    => X(i),
                        CIN  => C(i),
                        S    => S(i),
                        COUT => C(i + 1)
                );
        END GENERATE;

        C(0) <= CIN;
        COUT <= C(N);

END STRUCT;