--Autor: Mateus Paiva Matiazzi
entity somador3b is
port
(
	a, b: in bit_vector(2 downto 0);
	cin: in bit;
	cout: out bit;
	sum: out bit_vector(0 to 6)
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
	cout <= not aux(2);
	sum <= "0000001" when s = "0000" else
			 "1001111" when s = "0001" else
			 "0010010" when s = "0010" else
			 "0000110" when s = "0011" else
			 "1001100" when s = "0100" else
			 "0100100" when s = "0101" else
			 "1100000" when s = "0110" else
			 "0001111" when s = "0111" else
			 "0000000" when s = "1000" else
			 "0001100" when s = "1001" else
			 "0001000" when s = "1010" else
			 "1100000" when s = "1011" else
			 "1110010" when s = "1100" else
			 "1000010" when s = "1101" else
			 "0110000" when s = "1110" else
			 "0111000";
			 
end dataflow;