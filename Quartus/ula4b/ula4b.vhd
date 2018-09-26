--Autor: Mateus Paiva Matiazzi
entity ula4b is
port
(
	a, b: in bit_vector(3 downto 0);
	cin: in bit;
	sel: in bit_vector(2 downto 0);
	cout, i: out bit;
	s: out bit_vector(3 downto 0)
);
end ula4b;
architecture estrutural of ula4b is
signal auxCout: bit_vector(0 to 3);
signal auxI: bit_vector(0 to 3);
signal aux: bit;
begin
	aux <= cin or '1' when sel="001" else cin;
	m0: entity work.ula1b(comportamental )
		port map (a(0), b(0), aux, sel, auxCout(0), auxI(0),  s(0));
	m1: entity work.ula1b(comportamental )
		port map (a(1), b(1), auxCout(0), sel, auxCout(1), auxI(1),  s(1));
	m2: entity work.ula1b(comportamental )
		port map (a(2), b(2), auxCout(1), sel, auxCout(2), auxI(2),  s(2));
	m3: entity work.ula1b(comportamental )
		port map (a(3), b(3), auxCout(2), sel, cout, auxI(3),  s(3));
		i <= auxI(0) and auxI(1) and auxI(2) and auxI(3);
			 
end estrutural;