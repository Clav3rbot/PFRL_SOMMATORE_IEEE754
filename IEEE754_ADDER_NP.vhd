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
            XCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            YCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            SPECIAL : OUT STD_LOGIC
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
            X : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            XSIGN : IN STD_LOGIC;
            XCASE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            YCASE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            SPECIAL : IN STD_LOGIC;
            XEXP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            MAN : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
            Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    -- Intermediate signals
    SIGNAL XSIGN, YSIGN, SPECIAL : STD_LOGIC;
    SIGNAL XEXP, XEXP_INCR : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL XMAN, YMAN, ZMANT : STD_LOGIC_VECTOR(26 DOWNTO 0);
    SIGNAL XCASE, YCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);

begin

    U1: PRE_SUM
    PORT MAP(
        X => X,
        Y => Y,
        OP => OP,
        XSIGN => XSIGN,
        YSIGN => YSIGN,
        XEXP => XEXP,
        XMAN => XMAN,
        YMAN => YMAN,
        XCASE => XCASE,
        YCASE => YCASE,
        SPECIAL => SPECIAL
    );

    U2: SUM
    PORT MAP(
        XSIGN => XSIGN,
        YSIGN => YSIGN,
		  XEXP => XEXP,
        XMAN => XMAN,
        YMAN => YMAN,
        ZMANT => ZMANT,
        XEXP_INCR => XEXP_INCR
    );

    U3: POST_SUM
    PORT MAP(
        X => X,
        Y => Y,
        XSIGN => XSIGN,
        XCASE => XCASE,
        YCASE => YCASE,
        SPECIAL => SPECIAL,
        XEXP => XEXP_INCR,
        MAN => ZMANT,
        Z => Z
    );

end Behavioral;
