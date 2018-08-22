--Autor: Mateus Paiva Matiazzi
--Somador de 1 bit com carry out
entity somador1b is
port
(
	a, b: in bit;
	cin: in bit;
	cout, sum: out bit
);
end somador1b;
architecture comportamental of somador1b is
begin
	sum <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
end comportamental;