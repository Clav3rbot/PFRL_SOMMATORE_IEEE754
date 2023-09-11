
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_RIPPLE_CARRY_ADDER IS
END TB_RIPPLE_CARRY_ADDER;

ARCHITECTURE behavior OF TB_RIPPLE_CARRY_ADDER IS
    CONSTANT N : NATURAL := 8;

    -- Component Declaration for the Unit Under test (UUT)
    COMPONENT RIPPLE_CARRY_ADDER
        PORT (
            X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            CIN : IN STD_LOGIC;
            S : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            COUT : OUT STD_LOGIC
        );
    END COMPONENT;
	 
    --Inputs
    SIGNAL X : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL Y : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL CIN : STD_LOGIC;

    --Outputs
    SIGNAL S : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL COUT : STD_LOGIC;

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    UUT : RIPPLE_CARRY_ADDER PORT MAP(
        X => X,
        Y => Y,
        CIN => CIN,
        S => S,
        COUT => COUT
    );

    PROCESS
    BEGIN
        X <= "00000000";
        Y <= "00000000";
        CIN <= '0';

        WAIT FOR 100 ns;

        X <= "00000001";
        Y <= "00000001";
        CIN <= '1';

        -- expected output: 00000011

        WAIT FOR 20 ns;

        X <= "01010101";
        Y <= "10101010";
        CIN <= '0';

        -- expected output: 11111111
        WAIT;
    END PROCESS;
END;