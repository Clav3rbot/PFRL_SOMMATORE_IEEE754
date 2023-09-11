
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Half adder entity
ENTITY HALF_ADDER IS
    PORT (
        X : IN STD_LOGIC;
        CIN : IN STD_LOGIC;
        S : OUT STD_LOGIC;
        COUT : OUT STD_LOGIC
    );
END HALF_ADDER;

-- Half adder architecture
ARCHITECTURE RTL OF HALF_ADDER IS
BEGIN
    S <= X XOR CIN;
    COUT <= X AND CIN;
END RTL;