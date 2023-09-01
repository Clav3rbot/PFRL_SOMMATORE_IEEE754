LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY IEEE754_ADDER IS
        PORT (
                X : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                Y : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                OP : IN STD_LOGIC;
                Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

                CLK : IN STD_LOGIC;
                RST : IN STD_LOGIC
        );
END IEEE754_ADDER;

ARCHITECTURE pipelined OF IEEE754_ADDER IS

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

        -- Input signals
        SIGNAL rIN_X : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rIN_Y : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rIN_OP : STD_LOGIC;

        -- Intermediate signals
        SIGNAL XSIGN, YSIGN, SPECIAL, r_XSIGN, r_YSIGN, r_SPECIAL, r2_XSIGN : STD_LOGIC;
        SIGNAL XEXP, XEXP_INCR, r_XEXP, r2_XEXP_INCR : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL XMAN, YMAN, ZMANT, r_XMAN, r_YMAN, r2_ZMANT : STD_LOGIC_VECTOR(26 DOWNTO 0);
        SIGNAL SPECIAL_RESULT, r_SPECIAL_RESULT : STD_LOGIC_VECTOR(31 DOWNTO 0);

        -- Output signals
        SIGNAL OUTPUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rOUT_Z : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

        U1 : PRE_SUM
        PORT MAP(
                X => rIN_X,
                Y => rIN_Y,
                OP => rIN_OP,
                XSIGN => XSIGN,
                YSIGN => YSIGN,
                XEXP => XEXP,
                XMAN => XMAN,
                YMAN => YMAN,
                SPECIAL => SPECIAL,
                SPECIAL_RESULT => SPECIAL_RESULT
        );

        U2 : SUM
        PORT MAP(
                XSIGN => r_XSIGN,
                YSIGN => r_YSIGN,
                XEXP => r_XEXP,
                XMAN => r_XMAN,
                YMAN => r_YMAN,
                ZMANT => ZMANT,
                XEXP_INCR => XEXP_INCR
        );

        U3 : POST_SUM
        PORT MAP(
                XSIGN => r2_XSIGN,
                SPECIAL => r_SPECIAL,
                SPECIAL_RESULT => r_SPECIAL_RESULT,
                XEXP => r2_XEXP_INCR,
                MAN => r2_ZMANT,
                Z => OUTPUT
        );
        Z <= rOUT_Z;

        CLOCK : PROCESS (CLK, RST)
        BEGIN
                IF (RST = '1') THEN
                        -- INPUT registers
                        rIN_X <= (OTHERS => '0');
                        rIN_Y <= (OTHERS => '0');
                        rIN_OP <= '0';
                        -- Reset all registers
                        r_XSIGN <= '0';
                        r_YSIGN <= '0';
                        r_SPECIAL <= '0';
                        r_SPECIAL_RESULT <= (OTHERS => '0');
                        r_XEXP <= (OTHERS => '0');
                        r_XMAN <= (OTHERS => '0');
                        r_YMAN <= (OTHERS => '0');

                        r2_XSIGN <= '0';
                        r2_XEXP_INCR <= (OTHERS => '0');
                        r2_ZMANT <= (OTHERS => '0');
                        --r2_XCASE <= (OTHERS => '0');
                        --r2_YCASE <= (OTHERS => '0');
                        rOUT_Z <= (OTHERS => '0');
                ELSE
                        IF (CLK'EVENT AND CLK = '1') THEN
                                -- INPUT registers
                                rIN_X <= X;
                                rIN_Y <= Y;
                                rIN_OP <= OP;
                                -- Register values after pre_sum
                                r_XSIGN <= XSIGN;
                                r_YSIGN <= YSIGN;
                                r_SPECIAL <= SPECIAL;
                                r_SPECIAL_RESULT <= SPECIAL_RESULT;
                                r_XEXP <= XEXP;
                                r_XMAN <= XMAN;
                                r_YMAN <= YMAN;

                                -- Register values after sum
                                r2_XSIGN <= r_XSIGN;
                                r2_XEXP_INCR <= XEXP_INCR;
                                r2_ZMANT <= ZMANT;

                                rOUT_Z <= OUTPUT;
                        END IF;
                END IF;
        END PROCESS;

END pipelined;