--Autor: Mateus Paiva Matiazzi
--Multiplexador de 4 entradas e 2 bits de controle
entity mux16 is
port
(
	d: in bit_vector(15 downto 0);
	c: in bit_vector(3 downto 0);
	r: out bit
);
end mux16;
architecture dataflow of mux16 is
	signal s0, s1, s2, s3: bit;
begin
	m0: entity work.mux4(structural)
		port map (d(0),d(1),d(2),d(3), c(0),c(1),s0);
	m1: entity work.mux4(structural)
		port map (d(4),d(5),d(6),d(7), c(0),c(1),s1);
	m2: entity work.mux4(structural)
		port map (d(8),d(9),d(10),d(11), c(0),c(1),s2);
	m3: entity work.mux4(structural)
		port map (d(12),d(13),d(14),d(15), c(0),c(1),s3);
	m4: entity work.mux4(structural)
		port map (s0,s1,s2,s3, c(2),c(3),r);
		
end dataflow;