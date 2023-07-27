LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Special case identifier entity
ENTITY SPECIAL_CASE_IDENTIFIER IS
    PORT (
        X     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
        Y     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
        XCASE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        YCASE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END SPECIAL_CASE_IDENTIFIER;

-- '000' zero
-- '001' + infinity
-- '010' - infinity
-- '011' not a number (NaN)
-- '100' normal number

-- Special case identifier architecture
ARCHITECTURE Behavioral OF SPECIAL_CASE_IDENTIFIER IS

    SIGNAL XExponent255 : STD_LOGIC;
    SIGNAL XExponent0   : STD_LOGIC;
    SIGNAL XMantissa0   : STD_LOGIC;

    SIGNAL YExponent255 : STD_LOGIC;
    SIGNAL YExponent0   : STD_LOGIC;
    SIGNAL YMantissa0   : STD_LOGIC;

BEGIN
    XExponent255 <= '1' WHEN X(30 DOWNTO 23) = "11111111" ELSE
        '0';
    XExponent0   <= '1' WHEN X(30 DOWNTO 23) = "00000000" ELSE
        '0';
    XMantissa0   <= '1' WHEN X(22 DOWNTO 0) = "00000000000000000000000" ELSE
        '0';

    YExponent255 <= '1' WHEN Y(30 DOWNTO 23) = "11111111" ELSE
        '0';
    YExponent0   <= '1' WHEN Y(30 DOWNTO 23) = "00000000" ELSE
        '0';
    YMantissa0   <= '1' WHEN Y(22 DOWNTO 0) = "00000000000000000000000" ELSE
        '0';

    XCase <= "000" WHEN XExponent0 = '1' AND XMantissa0 = '1' ELSE -- Zero
				 "001" WHEN X(31) = '0' AND XExponent255 = '1' AND XMantissa0 = '1' ELSE -- + Infinity
             "010" WHEN X(31) = '1' AND XExponent255 = '1' AND XMantissa0 = '1' ELSE -- - Infinity
             "011" WHEN XExponent255 = '1' AND NOT XMantissa0 = '1' ELSE -- NaN
		       "100";

    YCase <= "000" WHEN YExponent0 = '1' AND YMantissa0 = '1' ELSE -- Zero
             "001" WHEN Y(31) = '0' AND YExponent255 = '1' AND YMantissa0 = '1' ELSE -- + Infinity
             "010" WHEN Y(31) = '1' AND YExponent255 = '1' AND YMantissa0 = '1' ELSE -- - Infinity
             "011" WHEN YExponent255 = '1' AND NOT YMantissa0 = '1' ELSE -- NaN
		       "100";
END Behavioral;