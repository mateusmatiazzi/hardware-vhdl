--Autor: Mateus Paiva Matiazzi
entity contadorHexa is
port
(
	clk: in bit;
	reset: in bit;
	contador: out bit_vector(7 downto 0)
);
end contadorHexa;
architecture dataflow of contadorHexa is
signal output: natural;
begin
	sel: process(clk) is
	variable aux: natural;
	variable auxSaida: natural;
	begin
		if reset='0' then
			aux:=0;
			auxSaida:=0;
		elsif clk'event and clk = '1' then
			aux:= aux+1;
			if aux = 50000000 then
				aux:=0;
				auxSaida:=auxSaida+1;
				if auxSaida = 16 then
					auxSaida := 0;
				end if;
			end if;
		end if;
		output<=auxSaida;
	end process sel;
	contador <= "00000011" when output = 0 else
				"10011111" when output = 1 else
				"00100101" when output = 2 else
				"00001101" when output = 3 else
				"10011001" when output = 4 else
				"01001001" when output = 5 else
				"11000001" when output = 6 else
				"00011111" when output = 7 else
				"00000001" when output = 8 else
				"00011001" when output = 9 else
				"00010001" when output = 10 else
				"11000001" when output = 11 else
				"11100101" when output = 12 else
				"10000101" when output = 13 else
				"01100001" when output = 14 else
				"01110001";	
	
end dataflow;