entity ordenador is
port(
	entrada: in bit_vector(7 downto 0);
	saida: out bit_vector(7 downto 0)
	);
end ordenador;

architecture mixed of ordenador is
begin
	
	p0: process(entrada)
	variable conta_um: natural range 0 to 8;
	begin
		conta_um := 0;
		for i in 0 to 7 loop
			if entrada(i) = '1' then
				conta_um := conta_um + 1;
			end if;
		end loop;
		
		if conta_um = 0 then 
			saida <= "00000000";
		elsif conta_um = 1 then
			saida <= "10000000";
		elsif conta_um = 2 then
			saida <= "11000000";
		elsif conta_um = 3 then
			saida <= "11100000";
		elsif conta_um = 4 then
			saida <= "11110000";
		elsif conta_um = 5 then
			saida <= "11111000";
		elsif conta_um = 6 then
			saida <= "11111100";
		elsif conta_um = 7 then
			saida <= "11111110";
		else
			saida <= "11111111";
		end if;
	end process;
end;