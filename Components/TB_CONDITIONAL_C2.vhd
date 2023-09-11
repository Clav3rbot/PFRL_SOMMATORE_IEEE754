library ieee;
use ieee.std_logic_1164.ALL;
 
entity TB_CONDITIONAL_C2  is
end TB_CONDITIONAL_C2;
 
architecture behavior OF TB_CONDITIONAL_C2 IS 
 
 
   component CONDITIONAL_C2 
         port(
            X    : in  std_logic_vector(7 downto 0);
            S    : in  std_logic;
            Z    : out std_logic_vector(7 downto 0);
            COUT : out std_logic
         );
   end component;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0);
   signal S : std_logic;

 	--Outputs
   signal Z    : std_logic_vector(7 downto 0);
   signal COUT : std_logic;
  
begin
 
	-- Instantiate the Unit Under Test (UUT)
	UUT: CONDITIONAL_C2
   port map(
      X    => X,
      S    => S,
      Z    => Z,
      COUT => COUT 
   );

   process
   begin		
   
      X <= "00000000";
      S <= '0';

      wait for 100 ns;

      X <= "01010101"; -- should not change
      S <=  '0';

      wait for 100 ns;

      X <= "01010101"; -- should return 2's complement: 10101011
      S <=  '1';
		
      wait for 100 ns;

      X <= "00000000"; -- should return 0
      S <=  '1';
		
      wait for 100 ns;

      X <= "00000000"; -- should return 0
      S <=  '0';

      wait;
   end process;

end;