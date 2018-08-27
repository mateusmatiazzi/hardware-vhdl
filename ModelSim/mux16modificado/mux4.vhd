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
--architecture dataflow of mux4 is
--begin
	--r <= d0 when c1 = '0' and c0 = '0' else
		--  d1 when c1 = '0' and c0 = '1' else
		  --d2 when c1 = '1' and c0 = '0' else
		  --d3; --when c1 = '1' and c0 = '1'
--end dataflow;

--Implementacao comportamental algoritmica
--architecture algorithm2 of mux4 is
--begin
--	--Processo com lista de sensibilidade
--	sel: process(d0, d1, d2, d3, c0, c1) is
--	begin
--		if c1 = '0' and c0 = '0' then
--			r<=d0;
--		elsif c1 = '0' and c0 = '1' then
--			r<=d1;
--		elsif c1 = '1' and c0 = '1' then
--			r<=d2;
--		else -- c1=1 and c0=1
--			r<=d3;
--		end if;
--	end process sel;
--end algorithm2;

--Usando port map
architecture structural of mux4 is
	signal s0, s1: bit;
begin
	m0: entity work.mux2(dataflow)
		port map (d0=>d0, d1=>d1, c=>c0, r=>s0);
	m1: entity work.mux2(dataflow)
		port map (d0=>d2, d1=>d3, c=>c0, r=>s1);
	m2: entity work.mux2(dataflow)
		port map (d0=>s0, d1=>s1, c=>c1, r=>r);
end structural;