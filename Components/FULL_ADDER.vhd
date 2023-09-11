
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Full adder entity
ENTITY FULL_ADDER IS
    PORT (
        X : IN STD_LOGIC;
        Y : IN STD_LOGIC;
        CIN : IN STD_LOGIC;
        S : OUT STD_LOGIC;
        COUT : OUT STD_LOGIC
    );
END FULL_ADDER;

-- Full adder architecture
ARCHITECTURE RTL OF FULL_ADDER IS
BEGIN
    S <= X XOR Y XOR CIN;
    COUT <= (X AND Y) OR (X AND CIN) OR (Y AND CIN);
END RTL;