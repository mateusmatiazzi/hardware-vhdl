--Autor: Mateus Paiva Matiazzi
--Multiplexador de 2 entradas e 1 bits de controle
entity mux2 is
port
(
	d0, d1, c: in bit;
	r: out bit
);
end mux2;
-- Comportamental dataflow
architecture dataflow of mux2 is
begin
	r <= d0 when c = '0' else d1;
end dataflow;

--Comportamental algoritmico
architecture algorithm of mux2 is
begin
	sel: process is
	begin
		if c = '0' then
			r <= d0;
		else
			r <= d1;
		end if;
		wait on d0, d1, c;
	end process sel;
end algorithm;
