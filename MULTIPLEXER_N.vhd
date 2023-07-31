
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Multiplexer N bit entity
ENTITY MULTIPLEXER_N IS
    GENERIC (N : NATURAL := 8);
    PORT (
        X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        Y : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        S : IN STD_LOGIC;
        Z : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
    );
END MULTIPLEXER_N;

-- Multiplexer N bit architecture
ARCHITECTURE STRUCT OF MULTIPLEXER_N IS
    COMPONENT MULTIPLEXER_2 IS
        PORT (
            X : IN STD_LOGIC;
            Y : IN STD_LOGIC;
            S : IN STD_LOGIC;
            Z : OUT STD_LOGIC
        );
    END COMPONENT;
BEGIN
    GEN : FOR i IN 0 TO N - 1 GENERATE
        U : MULTIPLEXER_2 PORT MAP(
            X => X(i),
            Y => Y(i),
            S => S,
            Z => Z(i)
        );
    END GENERATE;
END STRUCT;