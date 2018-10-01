entity codificador is
port(
	entrada: in bit_vector(6 downto 0);
	saida: out bit_vector(2 downto 0)
);
end entity;
architecture dataflow of codificador is
begin
	saida <= "111" when entrada(6) = '1' else
				"110" when entrada(5) = '1' else
				"101" when entrada(4) = '1' else
				"100" when entrada(3) = '1' else
				"011" when entrada(2) = '1' else
				"010" when entrada(1) = '1' else
				"001" when entrada(0) = '1' else
				"000";
end architecture;