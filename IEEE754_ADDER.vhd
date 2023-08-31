
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

        -- Input PreSum
        SIGNAL Pre_X_In : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
        SIGNAL Pre_Y_In : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
        SIGNAL Pre_Op_In : STD_LOGIC := '0';

        -- Input PreSum-Sum
        SIGNAL PreSum_XSign_In : STD_LOGIC := '0';
        SIGNAL PreSum_YSign_In : STD_LOGIC := '0';
        SIGNAL PreSum_XExp_In : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PreSum_XMan_In : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PreSum_YMan_In : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PreSum_Special_In : STD_LOGIC := '0';
        SIGNAL PreSum_SpecialResult_In : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

        -- Output PreSum-Sum
        SIGNAL PreSum_XSign_Out : STD_LOGIC := '0';
        SIGNAL PreSum_YSign_Out : STD_LOGIC := '0';
        SIGNAL PreSum_XExp_Out : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PreSum_XMan_Out : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PreSum_YMan_Out : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PreSum_Special_Out : STD_LOGIC := '0';
        SIGNAL PreSum_SpecialResult_Out : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

        -- Input Sum-PostSum
        SIGNAL PostSum_XSign_In : STD_LOGIC := '0';
        --SIGNAL PostSum_SpecialResult_In : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
        --SIGNAL PostSum_Special_In : STD_LOGIC := '0';
        SIGNAL PostSum_XExp_In : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PostSum_XMan_In : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');

        -- Output Sum-PostSum
        SIGNAL PostSum_XSign_Out : STD_LOGIC := '0';
        SIGNAL PostSum_SpecialResult_Out : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PostSum_Special_Out : STD_LOGIC := '0';
        SIGNAL PostSum_XExp_Out : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
        SIGNAL PostSum_XMan_Out : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');

        --Output PostSum
        SIGNAL Post_Z_Out : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

BEGIN

        ----------------------------------------FRONTE DI CLOCK --------------------------------------

        --registro iniziale	
        PreSum : PROCESS (CLK)
        BEGIN
                IF (CLK' event AND CLK = '1') THEN
                        IF (RST = '1') THEN
                                Pre_X_In <= (OTHERS => '0');
                                Pre_Y_In <= (OTHERS => '0');
                                Pre_Op_In <= '0';
                        ELSE
                                Pre_X_In <= X;
                                Pre_Y_In <= Y;
                                Pre_Op_In <= OP;
                        END IF;
                END IF;
        END PROCESS;

        -- Fase Pre Somma

        A_PreSum : PRE_SUM
        PORT MAP(
                X => Pre_X_In,
                Y => Pre_Y_In,
                OP => Pre_Op_In,
                XSIGN => PreSum_XSign_In,
                YSIGN => PreSum_YSign_In,
                XEXP => PreSum_XExp_In,
                XMAN => PreSum_XMan_In,
                YMAN => PreSum_YMan_In,
                SPECIAL => PreSum_Special_In,
                SPECIAL_RESULT => PreSum_SpecialResult_In
        );

        ----------------------------------------FRONTE DI CLOCK --------------------------------------

        -- registro tra pre-somma e somma

        PreSum_Sum : PROCESS (CLK)
        BEGIN
                IF (CLK' event AND CLK = '1') THEN
                        IF (RST = '1') THEN
                                PreSum_XSign_Out <= '0';
                                PreSum_YSign_Out <= '0';
                                PreSum_XExp_Out <= (OTHERS => '0');
                                PreSum_XMan_Out <= (OTHERS => '0');
                                PreSum_YMan_Out <= (OTHERS => '0');
                                PreSum_Special_Out <= '0';
                                PreSum_SpecialResult_Out <= (OTHERS => '0');
                        ELSE
                                PreSum_XSign_Out <= PreSum_XSign_In;
                                PreSum_YSign_Out <= PreSum_YSign_In;
                                PreSum_XExp_Out <= PreSum_XExp_In;
                                PreSum_XMan_Out <= PreSum_XMan_In;
                                PreSum_YMan_Out <= PreSum_YMan_In;
                                PreSum_Special_Out <= PreSum_Special_In;
                                PreSum_SpecialResult_Out <= PreSum_SpecialResult_In;
                        END IF;
                END IF;
        END PROCESS;

        -- Fase Somma

        B_Sum : SUM
        PORT MAP(
                XSIGN => PreSum_XSign_Out,
                YSIGN => PreSum_YSign_out,
                XEXP => PreSum_XExp_Out,
                XMAN => PreSum_XMan_Out,
                YMAN => PreSum_YMan_Out,
                XEXP_INCR => PostSum_XExp_In,
                ZMANT => PostSum_XMan_In
        );

        ----------------------------------------FRONTE DI CLOCK --------------------------------------

        -- registro tra somma e fase correttiva

        S_PostS : PROCESS (CLK)
        BEGIN
                IF (CLK' event AND CLK = '1') THEN
                        IF (RST = '1') THEN
                                PostSum_XSign_Out <= '0';
                                PostSum_XExp_Out <= (OTHERS => '0');
                                PostSum_XMan_Out <= (OTHERS => '0');
                                PostSum_SpecialResult_Out <= (OTHERS => '0');
                                PostSum_Special_Out <= '0';
                        ELSE
                                PostSum_XSign_Out <= PostSum_XSign_In;
                                PostSum_XExp_Out <= PostSum_XExp_In;
                                PostSum_XMan_Out <= PostSum_XMan_In;
                                PostSum_SpecialResult_Out <= PreSum_SpecialResult_In;
                                PostSum_Special_Out <= PreSum_Special_In;

                        END IF;
                END IF;
        END PROCESS;

        -- Fase Correttiva/Normalizzazione

        C_PostSum : POST_SUM
        PORT MAP(
                XSIGN => PostSum_XSign_Out,
                XEXP => PostSum_XExp_Out,
                MAN => PostSum_XMan_Out,
                SPECIAL => PostSum_Special_Out,
                SPECIAL_RESULT => PostSum_SpecialResult_Out,
                Z => Post_Z_Out
        );


        ----------------------------------------FRONTE DI CLOCK --------------------------------------
        -- registro finale

        PostS : PROCESS (CLK)
        BEGIN
                IF (CLK' event AND CLK = '1') THEN
                        IF (RST = '1') THEN
                                Z <= (OTHERS => '0');
                        ELSE
                                Z <= Post_Z_Out;
                        END IF;
                END IF;
        END PROCESS;
END pipelined;