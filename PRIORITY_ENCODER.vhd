LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PRIORITY_ENCODER IS
        PORT (
                X : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                SHIFT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
END PRIORITY_ENCODER;

ARCHITECTURE RTL OF PRIORITY_ENCODER IS

BEGIN
        SHIFT <= "00000000" WHEN X(26) = '1'
                ELSE
                "00000001" WHEN X(26 DOWNTO 25) = "01"
                ELSE
                "00000010" WHEN X(26 DOWNTO 24) = "001"
                ELSE
                "00000011" WHEN X(26 DOWNTO 23) = "0001"
                ELSE
                "00000100" WHEN X(26 DOWNTO 22) = "00001"
                ELSE
                "00000101" WHEN X(26 DOWNTO 21) = "000001"
                ELSE
                "00000110" WHEN X(26 DOWNTO 20) = "0000001"
                ELSE
                "00000111" WHEN X(26 DOWNTO 19) = "00000001"
                ELSE
                "00001000" WHEN X(26 DOWNTO 18) = "000000001"
                ELSE
                "00001001" WHEN X(26 DOWNTO 17) = "0000000001"
                ELSE
                "00001010" WHEN X(26 DOWNTO 16) = "00000000001"
                ELSE
                "00001011" WHEN X(26 DOWNTO 15) = "000000000001"
                ELSE
                "00001100" WHEN X(26 DOWNTO 14) = "0000000000001"
                ELSE
                "00001101" WHEN X(26 DOWNTO 13) = "00000000000001"
                ELSE
                "00001110" WHEN X(26 DOWNTO 12) = "000000000000001"
                ELSE
                "00001111" WHEN X(26 DOWNTO 11) = "0000000000000001"
                ELSE
                "00010000" WHEN X(26 DOWNTO 10) = "00000000000000001"
                ELSE
                "00010001" WHEN X(26 DOWNTO 9) = "000000000000000001"
                ELSE
                "00010010" WHEN X(26 DOWNTO 8) = "0000000000000000001"
                ELSE
                "00010011" WHEN X(26 DOWNTO 7) = "00000000000000000001"
                ELSE
                "00010100" WHEN X(26 DOWNTO 6) = "000000000000000000001"
                ELSE
                "00010101" WHEN X(26 DOWNTO 5) = "0000000000000000000001"
                ELSE
                "00010110" WHEN X(26 DOWNTO 4) = "00000000000000000000001"
                ELSE
                "00010111" WHEN X(26 DOWNTO 3) = "000000000000000000000001"
                ELSE
                "00011000" WHEN X(26 DOWNTO 2) = "0000000000000000000000001"
                ELSE
                "00011001" WHEN X(26 DOWNTO 1) = "00000000000000000000000001"
                ELSE
                "00011010" WHEN X(26 DOWNTO 0) = "000000000000000000000000001"
                ELSE
                "11111111";
        END RTL;