entity shifter4b is
port(
	entrada: in bit_vector(3 downto 0);
	sel: in natural range 0 to 4;
	saida:out bit_vector(7 downto 0)
);
end entity;
architecture dataflow of shifter4b is
begin
	saida <= (0 => entrada(0), 1 => entrada(1), 2 => entrada(2), 3 => entrada(3), others => '0') when sel=0 else
				(1 => entrada(0), 2 => entrada(1), 3 => entrada(2), 4 => entrada(3), others => '0') when sel=1 else
				(2 => entrada(0), 3 => entrada(1), 4 => entrada(2), 5 => entrada(3), others => '0') when sel=2 else
				(3 => entrada(0), 4 => entrada(1), 5 => entrada(2), 6 => entrada(3), others => '0') when sel=3 else
				(4 => entrada(0), 5 => entrada(1), 6 => entrada(2), 7 => entrada(3), others => '0');
end dataflow;