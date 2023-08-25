LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Pre sum entity
ENTITY PRE_SUM IS
        PORT (
                X : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
                Y : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
                OP : IN STD_LOGIC;
                XSIGN : OUT STD_LOGIC;
                YSIGN : OUT STD_LOGIC;
                XEXP : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                XMAN : OUT STD_LOGIC_VECTOR (26 DOWNTO 0);
                YMAN : OUT STD_LOGIC_VECTOR (26 DOWNTO 0);
                XCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                YCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                SPECIAL : OUT STD_LOGIC
        );
END PRE_SUM;

-- Pre sum architecture
ARCHITECTURE RTL OF PRE_SUM IS
        COMPONENT SPECIAL_CASE_IDENTIFIER IS
                PORT (
                        X : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
                        Y : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
                        XCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                        YCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                        SPECIAL : OUT STD_LOGIC
                );
        END COMPONENT;

        COMPONENT RIGHT_SHIFTER IS
                PORT (
                        X : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
                        S : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        Y : OUT STD_LOGIC_VECTOR(26 DOWNTO 0)
                );
        END COMPONENT;

        COMPONENT SWAPPER IS
                PORT (
                        A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                        DIFF : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                        G : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
                        S : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
                );
        END COMPONENT;

        SIGNAL YTemp : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL GNumber : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL SNumber : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL ExpDiff : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL MantShift : STD_LOGIC_VECTOR(26 DOWNTO 0);
        SIGNAL SC_XCase : STD_LOGIC_VECTOR(2 DOWNTO 0);
        SIGNAL SC_YCase : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
        YTemp <= (Y(31) XOR OP) & Y(30 DOWNTO 0);

        U1 : SWAPPER PORT MAP(
                A => X,
                B => YTemp,
                DIFF => ExpDiff,
                G => GNumber,
                S => SNumber
        );

        XSIGN <= GNumber(31);
        YSIGN <= SNumber(31);
        XEXP <= GNumber(30 DOWNTO 23);
        XMAN <= '1' & GNumber(22 DOWNTO 0) & "000";

        U2 : RIGHT_SHIFTER PORT MAP(
                X => '1' & SNumber(22 DOWNTO 0) & "000",
                S => ExpDiff,
                Y => MantShift
        );

        YMAN <= MantShift;

        U3 : SPECIAL_CASE_IDENTIFIER PORT MAP(
                X => X(31 DOWNTO 0),
                Y => Y(31 DOWNTO 0),
                XCASE => SC_XCase,
                YCASE => SC_YCase,
                SPECIAL => SPECIAL
        );

        XCASE <= SC_XCase;
        YCASE <= SC_YCase;
END RTL;