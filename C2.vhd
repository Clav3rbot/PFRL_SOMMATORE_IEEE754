library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity C2 is
	
	generic(
			M       : integer := 8
		);
	
	port   (
         x       :  in   std_logic_vector(M-1 downto 0);
         x_c2    :  out  std_logic_vector(M-1 downto 0)
      );
		
end C2;

architecture structural of C2 is
	
	component CARRYLOOKAHEAD is 
	
		generic( 
			N: integer := M
		);
		
		port(
			x       :  in   std_logic_vector(N-1 downto 0);
         y       :  in   std_logic_vector(N-1 downto 0);
			op      :  in   std_logic;    
         z       :  out  std_logic_vector(N-1 downto 0);
         c_out   :  out  std_logic
		);
	end component;
	
	signal temp   : std_logic_vector(M-1 downto 0);
	signal x_temp : std_logic_vector(M-1 downto 0);
	signal sign   : std_logic;
	signal intop  : std_logic;

begin

	CLA8: CARRYLOOKAHEAD
	
		generic map (
			N => M
		)
		
		port map (
			x     => temp,
			y     => x,
			op    => intop,
         z     => x_c2,
         c_out => sign
		);
	

	intop  <= '1';
	temp   <= (others => '0');
	
end structural;
