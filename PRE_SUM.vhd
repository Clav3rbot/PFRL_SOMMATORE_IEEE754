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
	 
	 COMPONENT RIGHT_SHIFTER is
		port (
			X : in std_logic_vector(26 downto 0);
			S : in std_logic_vector(7 downto 0);
			Y : out std_logic_vector(26 downto 0)
		);
	 END COMPONENT;
	 
	 COMPONENT SWAPPER is
		port ( 
			A : in std_logic_vector(31 downto 0);
			B : in std_logic_vector(31 downto 0);
			DIFF : out std_logic_vector(7 downto 0);
			G : out std_logic_vector(31 downto 0);
			S : out std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	 
	 signal YTemp : STD_LOGIC_VECTOR(31 downto 0);
	 signal GNumber : std_logic_vector(31 downto 0);
	 signal SNumber : std_logic_vector(31 downto 0);
	 signal ExpDiff : std_logic_vector(7 downto 0);
	 signal MantShift : Std_logic_vector(26 downto 0);
	 signal SC_XCase : std_logic_vector(2 downto 0);
	 signal SC_YCase : std_logic_vector(2 downto 0);
	 
BEGIN
	YTemp <= (Y(31) xor OP) & Y(30 downto 0);
	
	U1: SWAPPER port map (
		A => X,
		B => YTemp,
		DIFF => ExpDiff,
		G => GNumber,
		S => SNumber
	);
	
	XSIGN <= GNumber(31);
	YSIGN <= SNumber(31);
	XEXP <= GNumber(30 downto 23);
	XMAN <= '1' & GNumber(22 downto 0) & "000";
	
	U2: RIGHT_SHIFTER port map (
		X => '1' & SNumber(22 downto 0) & "000",
		S => ExpDiff,
		Y => MantShift
	);
	
	YMAN <= MantShift;
	
	U3: SPECIAL_CASE_IDENTIFIER port map (
		X => X(31 downto 0),
		Y => Y(31 downto 0),
		XCASE => SC_XCase,
		YCASE => SC_YCase,
		SPECIAL => SPECIAL
	);
	
	XCASE <= SC_XCase;
	YCASE <= SC_YCase;
END RTL;