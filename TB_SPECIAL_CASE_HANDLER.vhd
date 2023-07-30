
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_SPECIAL_CASE_HANDLER IS
END TB_SPECIAL_CASE_HANDLER;

ARCHITECTURE behavior OF TB_SPECIAL_CASE_HANDLER IS

        -- Component Declaration for the Unit Under Test (UUT)

        COMPONENT SPECIAL_CASE_HANDLER
                PORT (
                        CASEX  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                        CASEY  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                        X      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
                        Y      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
                        RESULT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
                );
        END COMPONENT;
        --Inputs
        SIGNAL CASEX : STD_LOGIC_VECTOR(2 DOWNTO 0);
        SIGNAL CASEY : STD_LOGIC_VECTOR(2 DOWNTO 0);
        SIGNAL X     : STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL Y     : STD_LOGIC_VECTOR(31 DOWNTO 0);

        --Outputs
        SIGNAL RESULT : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

        -- Instantiate the Unit Under Test (UUT)
        uut : SPECIAL_CASE_HANDLER PORT MAP(
                CASEX  => CASEX,
                CASEY  => CASEY,
                X      => X,
                Y      => Y,
                RESULT => RESULT
        );

        -- Stimulus process
        stim_proc : PROCESS
        BEGIN
		          CaseX <= "000";
                CaseY <= "000";
                X <= "00000000000000000000000000000000";
                Y <= "00000000000000000000000000000000";

                WAIT FOR 100 ns;

                CaseX <= "001";
                CaseY <= "000";
                X <= "01111111100000000000000000000000";
                Y <= "00000000000000000000000000000000";
                -- expected result: "01111111100000000000000000000000"

                WAIT FOR 40 ns;

                CaseX <= "001";
                CaseY <= "010";
                X <= "01111111100000000000000000000000";
                Y <= "11111111100000000000000000000000";
                -- expected result: "01111111111111111111111111111111"

                WAIT FOR 40 ns;

					 CaseX <= "001";
                CaseY <= "001";
                X <= "01111111100000000000000000000000";
                Y <= "01111111100000000000000000000000";
                -- expected result: "01111111100000000000000000000000"

                WAIT FOR 40 ns;

					 CaseX <= "100";
                CaseY <= "010";
                X <= "00000000011111111100000000000000";
                Y <= "11111111100000000000000000000000";
                -- expected result: "11111111100000000000000000000000"

                WAIT FOR 40 ns;

					 CaseX <= "100";
                CaseY <= "011";
                X <= "01110111100000000000110000000000";
                Y <= "11111111110000000000000000000000";
                -- expected result: "01111111111111111111111111111111"

                WAIT FOR 40 ns;

					 CaseX <= "010";
                CaseY <= "100";
                X <= "11111111100000000000000000000000";
                Y <= "11001001100101101011010000111000";
                -- expected result: "11111111100000000000000000000000"

                WAIT FOR 40 ns;

                CaseX <= "100";
                CaseY <= "100";
                X <= "11000001101110000000000000000000";
                Y <= "11000010011001000000000000000000";
					 -- expected result: "01010101010101010101010101010101"
					 
                WAIT;
					 
        END PROCESS;

END;