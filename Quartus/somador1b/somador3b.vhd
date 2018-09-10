--Autor: Mateus Paiva Matiazzi
entity somador3b is
port
(
	a, b: in bit_vector(2 downto 0);
	opA, opB: out bit_vector(0 to 7);
	cin: in bit;
	cout: out bit;
	sum: out bit_vector(0 to 7)
);
end somador3b;
architecture dataflow of somador3b is
signal s: bit_vector(3 downto 0);
signal aux: bit_vector(2 downto 0);
begin
	m0: entity work.somador1b(comportamental )
		port map (a(0), b(0), cin, aux(0), s(0));
	m1: entity work.somador1b(comportamental )
		port map (a(1), b(1), aux(0), aux(1), s(1));
	m2: entity work.somador1b(comportamental )
		port map (a(2), b(2), aux(1), aux(2), s(2));
	s(3) <= aux(2);
	sum <= "00000011" when s = "0000" else
			 "10011111" when s = "0001" else
			 "00100101" when s = "0010" else
			 "00001101" when s = "0011" else
			 "10011001" when s = "0100" else
			 "01001001" when s = "0101" else
			 "11000001" when s = "0110" else
			 "00011111" when s = "0111" else
			 "00000001" when s = "1000" else
			 "00011001" when s = "1001" else
			 "00010001" when s = "1010" else
			 "11000001" when s = "1011" else
			 "11100101" when s = "1100" else
			 "10000101" when s = "1101" else
			 "01100001" when s = "1110" else
			 "01110001";
			 
	opA <= "00000011" when a = "000" else
			 "10011111" when a = "001" else
			 "00100101" when a = "010" else
			 "00001101" when a = "011" else
			 "10011001" when a = "100" else
			 "01001001" when a = "101" else
			 "11000001" when a = "110" else
			 "00011111";
	
	opB <= "00000011" when b = "000" else
			 "10011111" when b = "001" else
			 "00100101" when b = "010" else
			 "00001101" when b = "011" else
			 "10011001" when b = "100" else
			 "01001001" when b = "101" else
			 "11000001" when b = "110" else
			 "00011111";
			 
end dataflow;