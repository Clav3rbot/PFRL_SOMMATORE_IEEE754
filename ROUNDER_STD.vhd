
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ROUNDER_STD IS
        PORT (
                LAST4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
                INCR : OUT STD_LOGIC
        );

END ROUNDER_STD;

ARCHITECTURE Behavioral OF ROUNDER_STD IS

BEGIN

        INCR <= '0' WHEN LAST4 = "0000" ELSE
                '0' WHEN LAST4 = "0001" ELSE
                '0' WHEN LAST4 = "0010" ELSE
                '0' WHEN LAST4 = "0011" ELSE
                '0' WHEN LAST4 = "0100" ELSE
                '1' WHEN LAST4 = "0101" ELSE
                '1' WHEN LAST4 = "0110" ELSE
                '1' WHEN LAST4 = "0111" ELSE
                '0' WHEN LAST4 = "1000" ELSE
                '0' WHEN LAST4 = "1001" ELSE
                '0' WHEN LAST4 = "1010" ELSE
                '0' WHEN LAST4 = "1011" ELSE
                '1' WHEN LAST4 = "1100" ELSE
                '1' WHEN LAST4 = "1101" ELSE
                '1' WHEN LAST4 = "1110" ELSE
                '1' WHEN LAST4 = "1111" ELSE
                '-';

END Behavioral;