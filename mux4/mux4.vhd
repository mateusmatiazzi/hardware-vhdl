--Autor: Mateus Paiva Matiazzi
--Multiplexador de 4 entradas e 2 bits de controle
entity mux4 is
port
(
	d0, d1, d2, d3: in bit;
	c0, c1: in bit;
	r: out bit
);
end mux4;
architecture dataflow of mux4 is
begin
	r <= d0 when c1 = '0' and c0 = '0' else
		  d1 when c1 = '0' and c0 = '1' else
		  d2 when c1 = '1' and c0 = '0' else
		  d3; --when c1 = '1' and c0 = '1'
end dataflow;