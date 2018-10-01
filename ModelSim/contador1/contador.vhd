--Autor: Mateus Paiva Matiazzi
entity contador is
port
(
	clk: in bit;
	saida: out natural range 0 to 15
);
end contador;
architecture dataflow of contador is
begin
	sel: process(clk) is
	variable aux: natural range 0 to 16;
	variable auxSaida: natural range 0 to 16;
	begin
		saida<= auxSaida;
		if clk'event and clk = '1' then
			aux:= aux+1;
			if aux = 10 then
				aux:=0;
				auxSaida:=auxSaida+1;
				if auxSaida = 16 then
					auxSaida := 0;
				end if;
			end if;
		end if;
	end process sel;
end dataflow;