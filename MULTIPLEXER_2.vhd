
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Multiplexer 2 bit entity
ENTITY MULTIPLEXER_2 IS
    PORT (
        X : IN STD_LOGIC;
        Y : IN STD_LOGIC;
        S : IN STD_LOGIC;
        Z : OUT STD_LOGIC
    );
END MULTIPLEXER_2;

-- Multiplexer 2 bit architecture
ARCHITECTURE RTL OF MULTIPLEXER_2 IS
BEGIN
    Z <= (X AND (NOT S)) OR (B AND S);
END RTL;