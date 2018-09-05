--Autor: Mateus Paiva Matiazzi
entity xorPin is
port
(
	a, b: in bit;
	r: out bit
);
end xorPin;
architecture comportamental of xorPin is
begin
	r <= a xor b;
end comportamental;