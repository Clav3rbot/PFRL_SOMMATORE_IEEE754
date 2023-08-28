
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY IEEE754_ADDER IS
    PORT (

        X : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        Y : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        OP : IN STD_LOGIC;
        RESET : IN STD_LOGIC;
        CLK : IN STD_LOGIC;

        PreSum_GSIGN : OUT STD_LOGIC := '0';
        PreSum_SSIGN : OUT STD_LOGIC := '0';
        PreSum_EXP : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        PreSum_GMANT : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
        PreSum_SMANT : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
        PreSum_XCase : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        PreSum_YCase : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        PreSum_IsSpecial : OUT STD_LOGIC;

        Sum_XEXP_INCR : OUT STD_LOGIC;
        Sum_ZEXP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        Sum_ZMANT : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);

        PostSum_Result_Mant : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
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
            XMAN : IN STD_LOGIC_VECTOR (26 DOWNTO 0);
            YMAN : IN STD_LOGIC_VECTOR (26 DOWNTO 0);
            ZMANT : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
            XEXP_INCR : OUT STD_LOGIC
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
            XEXP_INCR : IN STD_LOGIC;
            MAN : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL PreSum_X : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_Y : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_OP : STD_LOGIC := '0';

    --PreSum
    SIGNAL PreSum_GSIGN_t : STD_LOGIC := '0';
    SIGNAL PreSum_SSIGN_t : STD_LOGIC := '0';
    SIGNAL PreSum_EXP_t : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_GMANT_t : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_SMANT_t : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_XCase_t : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_YCase_t : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_IsSpecial_t : STD_LOGIC := '0';
    SIGNAL PreSum_GSIGN_out : STD_LOGIC := '0';
    SIGNAL PreSum_SSIGN_out : STD_LOGIC := '0';
    SIGNAL PreSum_EXP_out : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_GMANT_out : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_SMANT_out : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_XCase_out : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_YCase_out : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL PreSum_IsSpecial_out : STD_LOGIC := '0';

    --Sum 
    SIGNAL Sum_ZEXP_t : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Sum_ZMANT_t : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Sum_XEXP_INCR_t : STD_LOGIC;

    SIGNAL Sum_ZEXP_out : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Sum_ZMANT_out : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Sum_XEXP_INCR_out : STD_LOGIC;
    --PostSum
    

BEGIN

    ----------------------------------------FRONTE DI CLOCK --------------------------------------

    --inizizio	
    R1 : PROCESS (CLK)
    BEGIN
        IF (CLK' event AND CLK = '1') THEN
            IF (RESET = '1') THEN
                PreSum_X <= (OTHERS => '0');
                PreSum_Y <= (OTHERS => '0');
                PreSum_OP <= '0';
                ELSE
                PreSum_X <= X;
                PreSum_Y <= Y;
                PreSum_OP <= OP;
            END IF;
        END IF;
    END PROCESS;

    -- Fase Pre-Sum

    U1 : Pre_Sum
    PORT MAP(
        X => PreSum_X,
        Y => PreSum_Y,
        OP => PreSum_OP,

        XSIGN => PreSum_GSIGN_t,
        YSIGN => PreSum_SSIGN_t,
        XEXP => PreSum_EXP_t,
        XMAN => PreSum_GMANT_t,
        YMAN => PreSum_SMANT_t,
        XCASE => PreSum_XCase_t,
        YCASE => PreSum_YCase_t,
        SPECIAL => PreSum_IsSpecial_t
    );

    PreSum_GSIGN <= PreSum_GSIGN_t;
    PreSum_SSIGN <= PreSum_SSIGN_t;
    PreSum_GMANT <= PreSum_GMANT_t;
    PreSum_XCase <= PreSum_XCase_t;
    PreSum_YCase <= PreSum_YCase_t;
    PreSum_IsSpecial <= PreSum_IsSpecial_t;

    -- tra pre-sum e sum
    R2 : PROCESS (CLK)
    BEGIN
        IF (CLK' event AND CLK = '1') THEN
            IF (RESET = '1') THEN
                PreSum_GSIGN_out <= '0';
                PreSum_SSIGN_out <= '0';
                PreSum_EXP_out <= (OTHERS => '0');
                PreSum_GMANT_out <= (OTHERS => '0');
                PreSum_SMANT_out <= (OTHERS => '0');
                PreSum_XCase_out <= (OTHERS => '0');
                PreSum_YCase_out <= (OTHERS => '0');
                PreSum_IsSpecial_out <= '0';
                ELSE
                PreSum_GSIGN_out <= PreSum_GSIGN_t;
                PreSum_SSIGN_out <= PreSum_SSIGN_t;
                PreSum_EXP_out <= PreSum_EXP_t;
                PreSum_GMANT_out <= PreSum_GMANT_t;
                PreSum_SMANT_out <= PreSum_SMANT_t;
                PreSum_XCase_out <= PreSum_XCase_t;
                PreSum_YCase_out <= PreSum_YCase_t;
                PreSum_IsSpecial_out <= PreSum_IsSpecial_t;
            END IF;
        END IF;
    END PROCESS;
    -- Sum
    U2 : Sum
    PORT MAP(
        XSIGN => PreSum_GSIGN_out,
        YSIGN => PreSum_SSIGN_out,
        XMAN => PreSum_GMANT_out,
        YMAN => PreSum_SMANT_out,
        ZMANT => Sum_ZMANT_out,
        XEXP_INCR => Sum_XEXP_INCR_out
    );

    Sum_ZMANT <= Sum_ZMANT_t;
    Sum_XEXP_INCR <= Sum_XEXP_INCR_t;
    ----------------------------------------FRONTE DI CLOCK --------------------------------------

    -- tra somma e post sum

    R3 : PROCESS (CLK)
    BEGIN
        IF (CLK' event AND CLK = '1') THEN
            IF (RESET = '1') THEN
                Sum_ZMANT_out <= (OTHERS => '0');
                Sum_XEXP_INCR_out <= '0';
                ELSE
                Sum_ZMANT_out <= Sum_ZMANT_t;
                Sum_XEXP_INCR_out <= Sum_XEXP_INCR_t;
            END IF;
        END IF;
    END PROCESS;
    -- Post Sum da sistemare 

    --U3 : POST_SUM
    --PORT MAP(
        --X <= ;
        --Y <= ;
        --XSIGN <= ;
        --XCASE <= ;
        --YCASE <= ;
        --SPECIAL <= ;
        --XEXP <= ;
        --XEXP_INCR <= ;
        --MAN <= ;
       -- Z <=
    --);
    --PostSum_Result_Mant <= PostSum_Result_Mant

    -- registro finale

    R4 : PROCESS (CLK)
    BEGIN
        IF (CLK' event AND CLK = '1') THEN
            IF (RESET = '1') THEN
                ZR <= (OTHERS => '0');
                ELSE
                ZR <= PostS_z_t;
            END IF;
        END IF;
    END PROCESS;
END pipelined;