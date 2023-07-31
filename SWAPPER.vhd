
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SWAPPER is
	port (
		X : in std_logic_vector(31 downto 0);
		Y : in std_logic_vector(31 downto 0);
		DIFF : out std_logic_vector(7 downto 0);
		G : out std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0)
	);
end SWAPPER;

architecture STRUCT of SWAPPER is
	component COMPARATOR is
		generic ( N : NATURAL := 8);
		port (
			X : in std_logic_vector(N - 1 downto 0);
			Y : in std_logic_vector(N - 1 downto 0);
			DIFF : out std_logic_vector(N - 1 downto 0);
			C : out std_logic
		);
	end component;
	
	signal ExpComp : std_logic;
	signal ManComp : std_logic;
	signal EDiff : std_logic_vector(7 downto 0);
	signal MDiff : std_logic_vector(22 downto 0);
	signal GNum : std_logic_vector(31 downto 0);
	signal SNum : std_logic_vector(31 downto 0);
	signal isExpDiff0 : std_logic;
	
begin
	EXP_COMP: COMPARATOR
	generic map (N => 8)
	port map (
		X => X(30 downto 23),
		Y => Y(30 downto 23),
		DIFF => EDiff,
		C => ExpComp
	);
	
	MAN_COMP: COMPARATOR
	generic map (N => 23)
	port map (
		X => X(22 downto 0),
		Y => Y(22 downto 0),
		DIFF => MDiff,
		C => ManComp
	);
	
	isExpDiff0 <= '1' when EDiff = "00000000" else '0';
	
	DIFF <= EDiff;
	G <= X when (ExpComp or (isExpDiff0 and ManComp)) = '0' else Y;
	S <= X when (ExpComp or (isExpDiff0 and ManComp)) = '1' else Y;

end STRUCT;