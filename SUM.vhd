
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SUM is
	port (
		XSIGN : IN STD_LOGIC;
		YSIGN : IN STD_LOGIC;
      XEXP : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      XMAN : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
      YMAN : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		ZSIGN : OUT STD_LOGIC;
		ZEXP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		ZMANT : OUT STD_LOGIC_VECTOR(23 downto 0)
	);
end SUM;

architecture RTL of SUM is

	component CONDITIONAL_C2 is
		generic(N : NATURAL);
		port(
			X : IN STD_LOGIC_VECTOR(N - 1 downto 0);
                S : IN STD_LOGIC;
                Z : OUT STD_LOGIC_VECTOR(N - 1 downto 0);
                COUT : OUT STD_LOGIC
		);
	end component;
	
	component RIPPLE_CARRY_ADDER is
		generic(N : NATURAL);
		port(
			X : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        Y : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        CIN : IN STD_LOGIC;
        S : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        COUT : OUT STD_LOGIC
		);
	end component;
	
	signal OperationLogic : std_logic;
	signal C2Mant : std_logic_vector(23 downto 0);

begin

	OperationLogic <= XSIGN xor YSIGN;
	
	U1: CONDITIONAL_C2
		generic map(N => 24)
		port map(
			X => YMAN,
			S => OperationLogic,
			Z => C2Mant,
			COUT => COUT
		);
		
	U2: RIPPLE_CARRY_ADDER
		generic map(N => 24)
		port map(
			X => XMAN,
			Y => C2Mant,
			CIN => '0',
			S => S,
			COUT => COUT
		);

end RTL;