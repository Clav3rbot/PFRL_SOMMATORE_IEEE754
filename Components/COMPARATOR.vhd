
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR is
	generic (N : NATURAL);
	port (
		X : in std_logic_vector(N - 1 downto 0);
		Y : in std_logic_vector(N - 1 downto 0);
		DIFF : out std_logic_vector(N - 1 downto 0);
		C : out std_logic
	);
end COMPARATOR;

architecture STRUCT of COMPARATOR is
	component RIPPLE_CARRY_ADDER is
		generic (N : NATURAL := N);
		port (
			X: in std_logic_vector(N - 1 downto 0);
			Y: in std_logic_vector(N - 1 downto 0);
			CIN: in std_logic;
			S: out std_logic_vector(N - 1 downto 0);
			COUT: out std_logic
		);
	end component;
	
	component CARRY_ADDER is
		generic (N : NATURAL := N);
		port (
			X : in std_logic_vector(N - 1 downto 0);
			CIN : in std_logic;
			S : out std_logic_vector(N - 1 downto 0);
			COUT : out std_logic
		);
	end component;
	
	component MULTIPLEXER_N is
        generic (N : NATURAL := N);
        port ( 
            X : in  std_logic_vector(N - 1 downto 0);
            Y : in  std_logic_vector(N - 1 downto 0);
            S : in  std_logic; 
            Z : out std_logic_vector(N - 1 downto 0)
        );
    end component;
    
	signal S    : std_logic_vector(N - 1 downto 0);
	signal S2 : std_logic_vector(N - 1 downto 0);
	signal NOTS : std_logic_vector(N - 1 downto 0);
	signal COUT : std_logic;
	signal NOTY : std_logic_vector(N - 1 downto 0);
	signal NotCout: std_logic;
	
begin

	NOTY <= not Y;
	
	U1 :  RIPPLE_CARRY_ADDER port map (
		X => X,
      Y => NOTY,
      CIN => '1',
      S => S,
      COUT => COUT
    );
	 
	C <= not COUT;
	NOTS <= not S;

	U2: CARRY_ADDER port map(
		X => NOTS,
		CIN => '1',
		S => S2
	);
	
	NotCout <= not COUT;
	 
	U3: MULTIPLEXER_N port map(	 
        X => S,
        Y => S2,
        S => NotCout,
        Z => DIFF
	);

end STRUCT;