entity debounce is
port(
	input: in bit;
	output: out bit;
	clock: in bit;
	resetn: in bit 
);
end entity;
architecture algoritmico of debounce is
begin
	p0: process(clock, resetn) is
	variable count: natural;
	variable aux: bit;
	variable saidaAux: bit;
	begin
		output <= saidaAux;
		if clock'event and clock = '1' then
			if aux = input then
				count := count + 1;
				if count = 3 then 
					saidaAux := input;
					count := 0;
				end if;
			else
				aux := input;
			end if;
		end if;
	end process;
end architecture;