library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR is

generic(
		L: integer := 8
	);

port(
		X     :  in   std_logic_vector(L-1 downto 0); -- primo operando
		Y     :  in   std_logic_vector(L-1 downto 0); -- secondo operando
		diff  :  out  std_logic_vector(L-1 downto 0); --  differenza
		XLY   :  out  std_logic; -- operando x piu piccolo di y
		XGY   :  out  std_logic -- operndo x piu grande di y 
	);
end COMPARATOR;

architecture structural of COMPARATOR is

	--Componente Complemento a 2
	component C2 is

		generic(
			M: integer := L
		);

		port(
				x       :  in   std_logic_vector(M-1 downto 0);
				x_c2    :  out  std_logic_vector(M-1 downto 0)
		);

	end component;

	--Componente Sommatore/Sottratore
	component CARRYLOOKAHEAD is

		generic(
			N: integer := L
		);

		port(
			x       :  in   std_logic_vector(N-1 downto 0);
         y       :  in   std_logic_vector(N-1 downto 0);
			op      :  in   std_logic;
         z       :  out  std_logic_vector(N-1 downto 0);
         c_out   :  out  std_logic
		);

	end component;

	--Segnali
	signal    temp_op    :	 std_logic;
	signal    diff_sign  :	 std_logic;
	signal    gtz        :	 std_logic;
	signal    diff_temp  :   std_logic_vector(L-1 downto 0);
	signal    diff_tc2   :   std_logic_vector(L-1 downto 0);

begin

	--Differenza!
	temp_op <= '1';

	--Comparatore
	CLA8: CARRYLOOKAHEAD

		generic map (
			N => L
		)

		port map (
			x     => X,
			y     => Y,
			op    => temp_op,
         z     => diff_temp,
         c_out => diff_sign
		);

	--Calcolo se >0
	gtz <= '0' when (diff_temp = (diff_temp'range => '0')) else '1';

	--Calcolo dei flag
	XLY<= diff_sign;
	XGY<= not(diff_sign) and gtz;


	--C2 Differenza
	C2Module: C2

		generic map (
			M => L
		)

		port map (
			x     => diff_temp,
         x_c2  => diff_tc2
		);


	--Mux risultato
	diff <= diff_temp when diff_sign = '0' else diff_tc2;

end structural;