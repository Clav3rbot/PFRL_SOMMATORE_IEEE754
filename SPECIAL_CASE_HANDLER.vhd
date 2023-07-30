
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SPECIAL_CASE_HANDLER IS
        PORT (
                CASEX  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                CASEY  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                X      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
                Y      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
                RESULT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
END SPECIAL_CASE_HANDLER;

ARCHITECTURE Behavioral OF SPECIAL_CASE_HANDLER IS

        SIGNAL XPInf : STD_LOGIC;
        SIGNAL XNInf : STD_LOGIC;
        SIGNAL XNaN  : STD_LOGIC;
        SIGNAL XZero : STD_LOGIC;
        SIGNAL XNorm : STD_LOGIC;

        SIGNAL YPInf : STD_LOGIC;
        SIGNAL YNInf : STD_LOGIC;
        SIGNAL YNaN  : STD_LOGIC;
        SIGNAL YZero : STD_LOGIC;
        SIGNAL YNorm : STD_LOGIC;

        SIGNAL NaN        : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL PInfinity  : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL NInfinity  : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL Zero       : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL NotSpecial : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

        -- temp
        XPInf <= '1' WHEN CASEX = "001" ELSE
                '0';
        XNInf <= '1' WHEN CASEX = "010" ELSE
                '0';
        XNaN <= '1' WHEN CASEX = "011" ELSE
                '0';
        XZero <= '1' WHEN CASEX = "000" ELSE
                '0';
        XNorm <= '1' WHEN CASEX = "100" ELSE
                '0';

        YPInf <= '1' WHEN CASEY = "001" ELSE
                '0';
        YNInf <= '1' WHEN CASEY = "010" ELSE
                '0';
        YNaN <= '1' WHEN CASEY = "011" ELSE
                '0';
        YZero <= '1' WHEN CASEY = "000" ELSE
                '0';
        YNorm <= '1' WHEN CASEY = "100" ELSE
                '0';

        NaN <= "01111111111111111111111111111111"; -- Not a number
        PInfinity <= "01111111100000000000000000000000"; -- + Infinity
        NInfinity <= "11111111100000000000000000000000"; -- - Infinity
        Zero <= "00000000000000000000000000000000"; -- Zero
        NotSpecial <= "01010101010101010101010101010101"; -- Not a special case number

        RESULT <= NaN WHEN ((XPInf AND YNInf) OR (XNInf AND YPInf) OR XNaN OR YNAN) = '1' ELSE
                PInfinity WHEN ((XPInf AND YPInf) OR (XNorm AND YPInf) OR (XPinf AND YNorm) OR (XPInf AND YZero) OR (XZero AND YPInf)) = '1' ELSE
                NInfinity WHEN ((XNInf AND YNInf) OR (XNorm AND YNInf) OR (XNInf AND YNorm) OR (XNInf AND YZero) OR (XZero AND YNInf)) = '1' ELSE
                X WHEN (XNorm AND YZero) = '1' ELSE
                Y WHEN (XZero AND YNorm) = '1' ELSE
					 Zero WHEN (XZero AND YZero) = '1' ELSE
                NotSpecial;

END Behavioral;