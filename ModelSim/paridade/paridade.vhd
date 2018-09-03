--Autor: Mateus Paiva Matiazzi
entity paridade is
port
(
	entrada: in bit_vector(3 downto 0);
	saida: out bit_vector(4 downto 0)
);
end paridade;
architecture dataflow of paridade is
	signal s: bit;
begin
	s <= entrada(3) xor entrada(2) xor entrada(1) xor entrada(0);
	saida(4) <= entrada(3);
	saida(3) <= entrada(2);
	saida(2) <= entrada(1);
	saida(1) <= entrada(0);
	saida(0) <= '0' when s = '0' else '1';
end dataflow;