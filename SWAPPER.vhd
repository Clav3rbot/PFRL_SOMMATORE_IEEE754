
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SWAPPER is

port(
		A       :    in   std_logic_vector(31  downto 0); -- Primo operando
		B       :    in   std_logic_vector(31  downto 0); -- Secondo operando								
		GNum    :    out  std_logic_vector(31  downto 0); -- Operando più grande
		SNum    :    out  std_logic_vector(31  downto 0); -- Operando più piccolo
		EDiff   :    out  std_logic_vector( 4  downto 0); -- Differenza di esponenti
		FM2Zero :    out  std_logic;							  -- Forza la mantissa a zero (Diff Exp >= 32)
		Swapped :    out  std_logic  							  -- Scambio di operandi
		
	);
end SWAPPER;


architecture RTL of SWAPPER is
	
	-- Comparatore generico
	component ComparatorGeneric is
	
	generic(
			L: integer := 8
		);
	
	port(
		X    : in  std_logic_vector(L-1 downto 0);
		Y    : in  std_logic_vector(L-1 downto 0);          
		diff : out std_logic_vector(L-1 downto 0);
		XLY  : out std_logic;
		XGY  : out std_logic
		);
	end component;
	
	component CARRYLOOKAHEAD
	
	generic(
			N: integer :=8
	);
	
	port(
		x 		: in  std_logic_vector(N-1 downto 0);
		y 		: in  std_logic_vector(N-1 downto 0);
		op 	: in  std_logic;          
		z 		: out std_logic_vector(N-1 downto 0);
		c_out : out std_logic
		);
	end component;
	
	signal    EAGEB     :  std_logic;							-- Esponente A > Esponente B
	signal    EALEB     :  std_logic; 							-- Esponente A < Esponente B
	signal    MAGMB     :  std_logic;							-- Mantissa  A > Mantissa  B
	signal    MALMB     :  std_logic;							-- Mantissa  A < Mantissa  B
	signal 	 EDiff_t   :  std_logic_vector(7 downto 0);	-- Differenza esponenti
	signal 	 EDiff_M1  :  std_logic_vector(7 downto 0);	-- Differenza esponenti -1 (Per gestione Subnormali)
	signal 	 MDiff_t   :  std_logic_vector(22 downto 0); -- Differenza mantisse (non utilizzata)
	signal    Swap_t    :  std_logic;
	signal	 GNum_t	  :  std_logic_vector(31  downto 0);
	signal	 SNum_t    :  std_logic_vector(31  downto 0);
	signal    isSSub    :  std_logic;
	signal    isGSub    :  std_logic;
	signal    cout	     :  std_logic;
	

begin
		
	 -- Comparatore esponenti
	 EComparator: COMPARATOR
	 
	 generic map(
			L => 8
	 )
		
	 port map(
			X => A(30 downto 23),
			Y => B(30 downto 23),
			diff => EDiff_t,
			XLY => EALEB, 			
			XGY => EAGEB
	);
	
	-- Comparatore mantisse
	MComparator: COMPARATOR
	
	 generic map(
			L => 23
	 )
		
	 port map(
			X => A(22 downto 0),
			Y => B(22 downto 0) ,
			diff => MDiff_t,			--Non utilizzato ma necessario dovuto all'uso dei moduli generic
			XLY => MALMB,
			XGY => MAGMB
	 );
	 
	-- Correzione Differenza in caso Subnormali E "0000 0000" Sub == E "0000 0001" Non Sub si veda sotto
	SubH_CLAGeneric: CARRYLOOKAHEAD 
	generic map (
			N => 8
	)
	
	port map(
		x => EDiff_t,
		y => "00000001",
		op => '1',
		z => EDiff_M1,
		c_out => cout					--Non utilizzato ma necessario dovuto all'uso dei moduli generic
	);
	
	-- Se Differenza di esponenti > 32, forzala a zero inutile fare lo shift...
	FM2Zero <= '0' when (EDiff_t(7 downto 5) = "000") else '1';
	
	-- Calcola il segnale di swap
	Swap_t  <= ( not(EAGEB) and MALMB ) or EALEB;
	
	-- Realizza lo swap se necessario
	GNum_t  <= B when Swap_t = '1' else A;
	SNum_t  <= A when Swap_t = '1' else B;
	
	GNum	  <= GNum_t;
	SNum	  <= SNum_t;
	
	-- Vedi se S � subnormale
	isSSub  <= '1' when SNum_t(30 downto 23) = "00000000" else '0';
	isGSub  <= '1' when GNum_t(30 downto 23) = "00000000" else '0';
	
	-- Per la prossima fase prendi solo i 5 bit meno significativi se non � subnormale
	-- Per i subnormali c'� un piccolo problema... E="0000 0000" � uguale a E="0000 0001" 
	-- quindi nel caso di numero subnormale la differenza � -1 di quello 
	
	EDiff   <= 	EDiff_M1(4 downto 0)	when (isSSub ='1'  and isGSub='0') else
					EDiff_t (4 downto 0) ; --  Funziona anche per isSSub ='1'and isGSub='1'
	
	-- Informa se si � realizzato uno swap per poter risalire all'identificazione dei casi
	Swapped <= Swap_t;
	
end RTL;


