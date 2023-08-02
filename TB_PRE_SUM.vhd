
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TB_PRE_SUM IS
END TB_PRE_SUM;

ARCHITECTURE behavior OF TB_PRE_SUM IS

    -- Component Declaration
    COMPONENT PRE_SUM
        PORT (
            X : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            Y : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            OP : IN STD_LOGIC;
            XSIGN : OUT STD_LOGIC;
            YSIGN : OUT STD_LOGIC;
            XEXP : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            XMAN : OUT STD_LOGIC_VECTOR (23 DOWNTO 0);
            YMAN : OUT STD_LOGIC_VECTOR (23 DOWNTO 0);
            XCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            YCASE : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
        );
    END COMPONENT;

    --Inputs
    SIGNAL X : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL Y : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL op : STD_LOGIC;

    --Outputs
    SIGNAL XSIGN : STD_LOGIC;
    SIGNAL YSIGN : STD_LOGIC;
    SIGNAL XEXP : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL XMAN : STD_LOGIC_VECTOR(23 DOWNTO 0);
    SIGNAL YMAN : STD_LOGIC_VECTOR(23 DOWNTO 0);
    SIGNAL XCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL YCASE : STD_LOGIC_VECTOR(2 DOWNTO 0);
	 
BEGIN

    -- Component Instantiation
    uut : PRE_SUM PORT MAP(
        X => X,
        Y => Y,
        OP => OP,
        XSIGN => XSIGN,
        YSIGN => YSIGN,
        XEXP => XEXP,
        XMAN => XMAN,
        YMAN => YMAN,
        XCASE => XCASE,
        YCASE => YCASE
    );
	
      -- Stimulus process
   stim_proc: process
   begin	

      	X <= "00010000100000000000000000000000";
			Y <= "00010000100000000000000000000001";
			op	 <= '0';
      wait for 100 ns;
			X <= "00010000100000000000000110000000";
			Y <= "00010000100000000001100000000111";
			op	 <= '0';
      wait for 100 ns;
			X <= "00010000100000000001100000110000";
			Y <= "00010000100000000000000100000001";
			op	 <= '0';
      wait for 100 ns;
            X <= "00010000100000000001100011110000";
			Y <= "00010000100000000000101010111111";
			op	 <= '0';
      wait for 100 ns;
         X <= "00010000100000000001010101001010";
			Y <= "00010000100000000000000000000001";
			op	 <= '0';           
      wait for 100 ns;
      		Y <= "00010000100000000000000000000000";
			X <= "00010000100000000000000000000001";
			op	 <= '0';
      wait for 100 ns;
			Y <= "00010000100000000000000110000000";
			X <= "00010000100000000001100000000111";
			op	 <= '0';
      wait for 100 ns;
			Y <= "00010000100000000001100000110000";
			X <= "00010000100000000000000100000001";
			op	 <= '0';
      wait for 100 ns;
            Y <= "00010000100000000001100011110000";
			X <= "00010000100000000000101010111111";
			op	 <= '0';
      wait for 100 ns;
            Y <= "00010000100000000001010101001010";
			X <= "00010000100000000000000000000001";
			op	 <= '0';
      wait for 100 ns;
		wait;

    END process;

END;