
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Ripple-carry adder entity
ENTITY RIPPLE_CARRY_ADDER IS
    GENERIC (N : NATURAL);
    PORT (
        X : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        Y : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        CIN : IN STD_LOGIC;
        S : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        COUT : OUT STD_LOGIC
    );
END RIPPLE_CARRY_ADDER;

-- Ripple-carry adder architecture
ARCHITECTURE STRUCT OF RIPPLE_CARRY_ADDER IS
    COMPONENT FULL_ADDER IS
        PORT (
            X : IN STD_LOGIC;
            Y : IN STD_LOGIC;
            CIN : IN STD_LOGIC;
            S : OUT STD_LOGIC;
            COUT : OUT STD_LOGIC
        );
    END COMPONENT;
    SIGNAL C : STD_LOGIC_VECTOR (N DOWNTO 0);
BEGIN
    GEN : FOR i IN 0 TO N - 1 GENERATE
        U : FULL_ADDER PORT MAP(
            X => X(i),
            Y => Y(i),
            CIN => C(i),
            S => S(i),
            COUT => C(i + 1)
        );
    END GENERATE;
    C(0) <= CIN;
    COUT <= C(N);
END STRUCT;