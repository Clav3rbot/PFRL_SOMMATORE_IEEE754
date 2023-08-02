
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SWAPPER IS
    PORT (
        A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        DIFF : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        G : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        S : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END SWAPPER;

ARCHITECTURE STRUCT OF SWAPPER IS
    COMPONENT COMPARATOR IS
        GENERIC (N : NATURAL);
        PORT (
            X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            DIFF : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            C : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL ExpComp : STD_LOGIC;
    SIGNAL MantComp : STD_LOGIC;
    SIGNAL EDiff : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL MDiff : STD_LOGIC_VECTOR(22 DOWNTO 0);
BEGIN
    EXP_COMP : COMPARATOR
    GENERIC MAP(N => 8)
    PORT MAP(
        X => A(30 DOWNTO 23),
        Y => B(30 DOWNTO 23),
        DIFF => EDiff,
        C => ExpComp
    );
    MAN_COMP : COMPARATOR
    GENERIC MAP(N => 23)
    PORT MAP(
        X => A(22 DOWNTO 0),
        Y => B(22 DOWNTO 0),
        DIFF => MDiff,
        C => MantComp
    );

    PROCESS (ExpComp, MantComp, A, B)
    BEGIN
        -- Se ExpComp è 1, si fa lo swap
        -- Se ExpComp è 0 e MantComp è 1, swap basato sul confronto delle mantisse
        -- Se ExpComp è 0 e MantComp è 0, nessuno swap
        IF (ExpComp = '1') OR (ExpComp = '0' AND (EDiff = "00000000") AND MantComp = '1') THEN

            G <= B;
            S <= A;

        ELSE
            G <= A;
            S <= B;
        END IF;

    END PROCESS;

    DIFF <= EDiff;

    -- propago il segno del piu grande e genero un segnale che dice se devo fare addizzione e sottrazione, se sottrazione faccio c2 del numero minore
END STRUCT;