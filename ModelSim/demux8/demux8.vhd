--Autor: Mateus Paiva Matiazzi
entity demux8 is
port
(
	e: in bit;
	se: in bit_vector(2 downto 0);
	saida: out bit_vector(7 downto 0)
);
end demux8;
architecture comportamental of demux8 is
	signal s: bit_vector(6 downto 0);
begin
	m0: entity work.demux2(dataflow)
		port map (e,se(2),s(6), s(5));
	m1: entity work.demux2(dataflow)
		port map (s(6),se(1),s(4), s(3));
	m2: entity work.demux2(dataflow)
		port map (s(5),se(1),s(2), s(1));
	m3: entity work.demux2(dataflow)
		port map (s(4),se(0),saida(7), saida(6));
	m4: entity work.demux2(dataflow)
		port map (s(3),se(0),saida(5), saida(4));
	m5: entity work.demux2(dataflow)
		port map (s(2),se(0),saida(3), saida(2));
	m6: entity work.demux2(dataflow)
		port map (s(1),se(0),saida(1), saida(0));
end comportamental;