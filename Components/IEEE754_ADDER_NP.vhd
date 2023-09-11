library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IEEE754_ADDER_NP is
    port(
        X : in std_logic_vector(31 downto 0);
        Y : in std_logic_vector(31 downto 0);
        OP : in std_logic;
        Z : out std_logic_vector(31 downto 0)
    );
end IEEE754_ADDER_NP;

architecture Behavioral of IEEE754_ADDER_NP is

    COMPONENT PRE_SUM
        PORT (
            X : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            OP : IN STD_LOGIC;
            XSIGN : OUT STD_LOGIC;
            YSIGN : OUT STD_LOGIC;
            XEXP : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            XMAN : OUT STD_LOGIC_VECTOR (26 DOWNTO 0);
            YMAN : OUT STD_LOGIC_VECTOR (26 DOWNTO 0);
            SPECIAL : OUT STD_LOGIC;
				SPECIAL_RESULT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT SUM
        PORT (
                XSIGN : IN STD_LOGIC;
                YSIGN : IN STD_LOGIC;
                XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                XMAN : IN STD_LOGIC_VECTOR (26 DOWNTO 0);
                YMAN : IN STD_LOGIC_VECTOR (26 DOWNTO 0);
                ZMANT : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
                XEXP_INCR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT POST_SUM
        PORT (
            XSIGN : IN STD_LOGIC;
            SPECIAL : IN STD_LOGIC;
				SPECIAL_RESULT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            MAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
            Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    -- Intermediate signals for PRE_SUM
    SIGNAL pre_XSIGN, pre_YSIGN, pre_SPECIAL : STD_LOGIC;
    SIGNAL pre_XEXP : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL pre_XMAN, pre_YMAN : STD_LOGIC_VECTOR(26 DOWNTO 0);
    SIGNAL pre_SPECIAL_RESULT : STD_LOGIC_VECTOR(31 DOWNTO 0);

    -- Intermediate signals for SUM
    SIGNAL sum_ZMANT : STD_LOGIC_VECTOR(26 DOWNTO 0);
    SIGNAL sum_XEXP_INCR : STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

    U1: PRE_SUM
    PORT MAP(
        X => X,
        Y => Y,
        OP => OP,
        XSIGN => pre_XSIGN,
        YSIGN => pre_YSIGN,
        XEXP => pre_XEXP,
        XMAN => pre_XMAN,
        YMAN => pre_YMAN,
        SPECIAL => pre_SPECIAL,
        SPECIAL_RESULT => pre_SPECIAL_RESULT
    );

    U2: SUM
    PORT MAP(
        XSIGN => pre_XSIGN,
        YSIGN => pre_YSIGN,
        XEXP => pre_XEXP,
        XMAN => pre_XMAN,
        YMAN => pre_YMAN,
        ZMANT => sum_ZMANT,
        XEXP_INCR => sum_XEXP_INCR
    );

    U3: POST_SUM
    PORT MAP(
        XSIGN => pre_XSIGN,
        SPECIAL => pre_SPECIAL,
        SPECIAL_RESULT => pre_SPECIAL_RESULT,
        XEXP => sum_XEXP_INCR,
        MAN => sum_ZMANT,
        Z => Z
    );

end Behavioral;