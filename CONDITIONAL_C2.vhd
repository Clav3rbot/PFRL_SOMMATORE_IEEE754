
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CONDITIONAL_C2 IS
        GENERIC (N : NATURAL);
        PORT (
                X : IN STD_LOGIC_VECTOR(N - 1 downto 0);
                S : IN STD_LOGIC;
                Z : OUT STD_LOGIC_VECTOR(N - 1 downto 0);
                COUT : OUT STD_LOGIC
        );
END CONDITIONAL_C2;

ARCHITECTURE STRUCT OF CONDITIONAL_C2 IS

        COMPONENT CARRY_ADDER IS
                GENERIC (N : NATURAL := N);
                PORT (
                        X : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        CIN : IN STD_LOGIC;
                        S : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
                        COUT : OUT STD_LOGIC
                );
        END COMPONENT;
		  
		  signal XXorS : std_logic_vector(N - 1 downto 0);
		  signal SExpander : std_logic_vector(N - 1 downto 0);
BEGIN
		  SExpander <= (others => S);
		  XXorS <= X xor SExpander;
		  
        U1 : CARRY_ADDER PORT MAP(
                X => XXorS,
                CIN => S,
                S => Z,
                COUT => COUT
        );
END STRUCT;