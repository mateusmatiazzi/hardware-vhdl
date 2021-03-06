--Autor: Mateus Paiva Matiazzi
--Demultiplexador de 1 entradas, 1 bits de controle e duas saidas
entity demux2 is
port
(
	e, se: in bit;
	s1, s0: out bit
);
end demux2;
-- Comportamental dataflow
architecture dataflow of demux2 is
begin
	s0 <= e and not se;
	s1 <= e and se;
end dataflow;