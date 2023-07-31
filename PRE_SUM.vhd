LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Pre sum entity
ENTITY PRE_SUM IS
    PORT (
        X : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        Y : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        OP : IN STD_LOGIC;
        XSIGN : OUT STD_LOGIC;
        XEXP : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        XMAN : OUT STD_LOGIC_VECTOR (22 DOWNTO 0);
        YMAN : OUT STD_LOGIC_VECTOR (22 DOWNTO 0);
        XCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        YCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
    );
END PRE_SUM;

-- Pre sum architecture
ARCHITECTURE RTL OF PRE_SUM IS
    COMPONENT SPECIAL_CASE_IDENTIFIER IS
        PORT (
            X : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            OP : IN STD_LOGIC;
            XCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            YCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
        );
    END COMPONENT;
	 
	 COMPONENT RIGHT_SHIFTER is
		port (
			X : in std_logic_vector(23 downto 0);
			S : in std_logic_vector(7 downto 0);
			Y : out std_logic_vector(23 downto 0)
		);
	 END COMPONENT;
	 
	 COMPONENT EXPONENT_SUBTRACTOR is
		port (
			X : in std_logic_vector(7 downto 0);
			Y : in std_logic_vector(7 downto 0);
			DIFF : out std_logic_vector(7 downto 0);
			C : out std_logic
		);
	END COMPONENT;
	 
	 signal TEMPY : STD_LOGIC_VECTOR (31 downto 0);
BEGIN
	TEMPY <= (Y(31) xor OP) & Y(30 downto 0);
END RTL;