LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_SPECIAL_CASE_IDENTIFIER IS
END TB_SPECIAL_CASE_IDENTIFIER;

ARCHITECTURE behavior OF TB_SPECIAL_CASE_IDENTIFIER IS

    COMPONENT SPECIAL_CASE_IDENTIFIER
        PORT (
            X : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            XCASE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            YCASE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT;
	 
    --Inputs
    SIGNAL X : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL Y : STD_LOGIC_VECTOR(31 DOWNTO 0);

    --Outputs
    SIGNAL XCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL YCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    UUT : SPECIAL_CASE_IDENTIFIER PORT MAP(
        X => X,
        Y => Y,
        XCASE => XCASE,
        YCASE => YCASE
    );

    -- Stimulus process
    stim_proc : PROCESS
    BEGIN

        X <= "00000000000000000000000000000000";
        Y <= "00000000000000000000000000000000";

        WAIT FOR 100 ns;

        X <= "01111111100000000000000000000000";
        Y <= "00000000000000000000000000000000";
        -- XCase = 001 YCase = 000

        WAIT FOR 40 ns;

        X <= "01111111100000000000000000000000";
        Y <= "11111111100000000000000000000000";
        -- XCase = 001 YCase = 010

        WAIT FOR 40 ns;

        X <= "01111111100000000000000000000000";
        Y <= "01111111100000000000000000000000";
        -- XCase = 001 YCase = 001

        WAIT FOR 40 ns;

        X <= "00000000011111111100000000000000";
        Y <= "11111111100000000000000000000000";
        -- XCase = 100 YCase = 010

        WAIT FOR 40 ns;

        X <= "01110111100000000000110000000000";
        Y <= "11111111110000000000000000000000";
        -- XCase = 100 YCase = 011

        WAIT FOR 40 ns;

        X <= "11111111100000000000000000000000";
        Y <= "11001001100101101011010000111000";
        -- XCase = 010 YCase = 100

        WAIT;
    END PROCESS;

END;