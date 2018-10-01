entity lista2 is
port(
	entrada: in bit_vector(0 to 7);
	saida: out bit_vector(2 downto 0);
	valido: out bit
);
end lista2;
architecture dataflow of lista2 is
begin
	saida <= "001" when entrada="10000000" else
				"010" when entrada="01000000" else
				"011" when entrada="00100000" else
				"100" when entrada="00010000" else
				"101" when entrada="00001000" else
				"110" when entrada="00000100" else
				"111" when entrada="00000010" else
				"000";
	valido <= '0' when entrada="00000000" else
				  '1';
end architecture;