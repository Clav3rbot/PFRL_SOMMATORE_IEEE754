
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
		  
		  -- Input signals
		  SIGNAL rIN_X : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rIN_Y : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rIN_OP : STD_LOGIC;
		  
        -- Intermediate signals
        SIGNAL XSIGN, YSIGN, SPECIAL, r_XSIGN, r_YSIGN, r_SPECIAL, r2_XSIGN : STD_LOGIC;
        SIGNAL XEXP, XEXP_INCR, r_XEXP, r2_XEXP_INCR : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL XMAN, YMAN, ZMANT, r_XMAN, r_YMAN, r2_ZMANT : STD_LOGIC_VECTOR(26 DOWNTO 0);
        SIGNAL XCASE, YCASE, r_XCASE, r_YCASE, r2_XCASE, r2_YCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);
		  
		  -- Output signals
		  signal OUTPUT : std_logic_vector(31 downto 0);
		  signal rOUT_Z : std_logic_vector(31 downto 0);

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
                XCASE => XCASE,
                YCASE => YCASE,
                SPECIAL => SPECIAL
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
                X => rIN_X,
                Y => rIN_Y,
                XSIGN => r2_XSIGN,
                XCASE => r2_XCASE,
                YCASE => r2_YCASE,
                SPECIAL => r_SPECIAL,
                XEXP => r2_XEXP_INCR,
                MAN => r2_ZMANT,
                Z => OUTPUT
        );
		  Z <= rOUT_Z;

        CLOCK : PROCESS (CLK, RST)
        BEGIN
                IF (RST = '1') THEN
								-- INPUT registers
								rIN_X   <= (others => '0');
								rIN_Y   <= (others => '0');
								rIN_OP <= '0';
                        -- Reset all registers
                        r_XSIGN <= '0';
                        r_YSIGN <= '0';
                        r_SPECIAL <= '0';
                        r_XEXP <= (OTHERS => '0');
                        r_XMAN <= (OTHERS => '0');
                        r_YMAN <= (OTHERS => '0');
                        r_XCASE <= (OTHERS => '0');
                        r_YCASE <= (OTHERS => '0');

                        r2_XSIGN <= '0';
                        r2_XEXP_INCR <= (OTHERS => '0');
                        r2_ZMANT <= (OTHERS => '0');
                        r2_XCASE <= (OTHERS => '0');
                        r2_YCASE <= (OTHERS => '0');
								
								rOUT_Z <= (others => '0');
                ELSE
                        IF (CLK'EVENT AND CLK = '1') THEN
										  -- INPUT registers
										  rIN_X   <= X;
										  rIN_Y   <= Y;
										  rIN_OP <= OP;
                                -- Register values after pre_sum
                                r_XSIGN <= XSIGN;
                                r_YSIGN <= YSIGN;
                                r_SPECIAL <= SPECIAL;
                                r_XEXP <= XEXP;
                                r_XMAN <= XMAN;
                                r_YMAN <= YMAN;
                                r_XCASE <= XCASE;
                                r_YCASE <= YCASE;

                                -- Register values after sum
                                r2_XSIGN <= r_XSIGN;
                                r2_XEXP_INCR <= XEXP_INCR;
                                r2_ZMANT <= ZMANT;
                                r2_XCASE <= r_XCASE;
                                r2_YCASE <= r_YCASE;
										  
										  rOUT_Z <= OUTPUT;
                        END IF;
                END IF;
        END PROCESS;

END pipelined;