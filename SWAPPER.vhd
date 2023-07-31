
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
	signal MantComp : std_logic;
	signal XEGYE : std_logic;
	signal XESYE : std_logic;
	signal XMGYM : std_logic;
	signal XMSYM : std_logic;
	signal EDiff : std_logic_vector(7 downto 0);
	signal MDiff : std_logic_vector(22 downto 0);
	signal GNum : std_logic_vector(31 downto 0);
	signal SNum : std_logic_vector(31 downto 0);
	signal isExpDiff0 : std_logic;
	signal notExpDiff0 : std_logic;
	
begin
	EXP_COMP: COMPARATOR
	generic map (N => 8)
	port map (
		X => X(30 downto 23),
		Y => Y(30 downto 23),
		DIFF => EDiff,
		C => ExpComp
	);
	
	XEGYE <= '1' when ExpComp = '0' else '0';
	XESYE <= '1' when ExpComp = '1' else '0';
	
	MAN_COMP: COMPARATOR
	generic map (N => 23)
	port map (
		X => X(22 downto 0),
		Y => Y(22 downto 0),
		DIFF => MDiff,
		C => MantComp
	);
	
	XMGYM <= '1' when MantComp = '0' else '0';
	XMSYM <= '1' when MantComp = '1' else '0';
	
	isExpDiff0 <= '1' when EDiff = "00000000" else '0';
	notExpDiff0 <= '1' when not EDiff = "00000000" else '0';
	
	DIFF <= EDiff;
	G <= X when ((XEGYE and notExpDiff0) or (isExpDiff0 and XMGYM)) = '1' else Y;
	S <= X when ((XESYE and notEXpDiff0) or (isExpDiff0 and XMSYM)) = '1' else Y;
-- propago il segno del piu grande e genero un segnale che dice se devo fare addizzione e sottrazione, se sottrazione faccio c2 del numero minore
end STRUCT;