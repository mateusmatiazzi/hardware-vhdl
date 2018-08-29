--Autor: Mateus Paiva Matiazzi
--Multiplexador de 4 entradas e 2 bits de controle
entity somador4b is
port
(
	a, b: in bit_vector(3 downto 0);
	cin: in bit;
	cout: out bit;
	saida: out bit_vector(3 downto 0)
);
end somador4b;
architecture dataflow of somador4b is
signal s: bit_vector(3 downto 0);
begin
	m0: entity work.somador1b(comportamental )
		port map (a(0), b(0), cin, s(0), saida(0));
	m1: entity work.somador1b(comportamental )
		port map (a(1), b(1), s(0), s(1), saida(1));
	m2: entity work.somador1b(comportamental )
		port map (a(2), b(2), s(1), s(2), saida(2));
	m3: entity work.somador1b(comportamental )
		port map (a(3), b(3), s(2), s(3), saida(3));
		cout <= s(3);
end dataflow;