
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_EXPONENT_SUBTRACTOR IS
END TB_EXPONENT_SUBTRACTOR;

ARCHITECTURE behavior OF TB_EXPONENT_SUBTRACTOR IS

        -- Component Declaration for the Unit Under Test (UUT)

        COMPONENT EXPONENT_SUBTRACTOR
                PORT (
                        X : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                        DIFF : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                        C : OUT STD_LOGIC
                );
        END COMPONENT;
        --Inputs
        SIGNAL X : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
        SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

        --Outputs
        SIGNAL DIFF : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL C : STD_LOGIC;

BEGIN

        -- Instantiate the Unit Under Test (UUT)
        uut : EXPONENT_SUBTRACTOR PORT MAP(
                X => X,
                Y => Y,
                DIFF => DIFF,
                C => C
        );
        -- Stimulus process
        stim_proc : PROCESS
        BEGIN
                X <= "00000000";
                Y <= "00000000";
                WAIT FOR 100 ns;

                X <= "00011110"; -- 30
                Y <= "10000010"; -- 130
                -- expected output: 100

                WAIT FOR 20 ns;

                X <= "00101101"; -- 45
                Y <= "00000011"; -- 3
                -- expected output: 42

                WAIT FOR 20 ns;

                X <= "01111111"; -- 127
                Y <= "00011001"; -- 25
                -- expected output: 102
					 
					 WAIT FOR 20 ns;
					 
					 X <= "00001111"; -- 15
                Y <= "00010010"; -- 18
                -- expected output: 3

                WAIT FOR 20 ns;

                X <= "10000000"; -- 128
                Y <= "10000000"; -- 128
                -- expected output: 0

                WAIT FOR 20 ns;

                X <= "01111111"; -- 127
                Y <= "00000000"; -- 0
                -- expected output: 127

                WAIT;
        END PROCESS;

END;