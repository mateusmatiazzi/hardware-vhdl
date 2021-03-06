--Autor: Mateus Paiva Matiazzi
entity ula1b is
port
(
	a, b: in bit;
	cin: in bit;
	sel: in bit_vector(2 downto 0);
	cout, i, s: out bit
);
end ula1b;
architecture comportamental of ula1b is
begin
	s <=   a xor b xor cin when sel="000" else
			 (a xor not(b)) xor '1' when sel="001" else
			 a and b when sel="010" else
			 a or b when sel="011" else
			 a xor b when sel="100";
	i <= '1' when a = b and sel="101" else '0';
			 
end comportamental;