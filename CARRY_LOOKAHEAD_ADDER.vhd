
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CARRY_LOOKAHEAD_ADDER is
	generic (N : NATURAL);
	port (
		X : in std_logic_vector(N - 1);
		Y : in std_logic_vector(N - 1);
end CARRY_LOOKAHEAD_ADDER;

architecture RTL of CARRY_LOOKAHEAD_ADDER is

begin


end RTL;

