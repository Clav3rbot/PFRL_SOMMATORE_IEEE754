
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Right shifter entity
ENTITY LEFT_SHIFTER IS
    PORT (
        X : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        Y : OUT STD_LOGIC_VECTOR(26 DOWNTO 0)
    );
END LEFT_SHIFTER;

-- Left shifter architecture
ARCHITECTURE Behavioral OF LEFT_SHIFTER IS

    SIGNAL firstLevel : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL secondLevel : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL thirdLevel : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL fourthLevel : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL fifthLevel : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');

BEGIN
    firstLevel <= X(25 DOWNTO 0) & '0' WHEN S(0) = '1' ELSE
        X(26 downto 0);
    secondLevel <= firstLevel(24 DOWNTO 0) & "00" WHEN S(1) = '1' ELSE
        firstLevel;
    thirdLevel <= secondLevel(22 DOWNTO 0) & "0000" WHEN S(2) = '1' ELSE
        secondLevel;
    fourthLevel <= thirdLevel(18 DOWNTO 0) & "00000000" WHEN S(3) = '1' ELSE
        thirdLevel;
    fifthLevel <= fourthLevel(10 DOWNTO 0) & "0000000000000000" WHEN S(4) = '1' ELSE
        fourthLevel;
    Y <= (OTHERS => '0') WHEN S(5) = '1' OR S(6) = '1' OR S(7) = '1' ELSE
        fifthLevel;
END Behavioral;