
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROUNDER is
	port (
		ZEXP : in std_logic_vector(7 downto 0);
		ZMAN : in std_logic_vector(26 downto 0);
		ZROUNDED : out std_logic_vector(30 downto 0)
	);
end ROUNDER;

architecture Behavioral of ROUNDER is

begin


end Behavioral;

