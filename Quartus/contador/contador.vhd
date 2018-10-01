entity contador is 
port(
	clk : in bit;
	ctrl : out bit
);
end contador;

architecture alg of contador is
begin
	counter : process(clk) is
		variable aux : natural range 0 to 16;
	begin
	-- posso somar com bit pq sim std logic
		if clk'event and clk = '1' then
			if aux = 7 or aux = 11 then
				ctrl <= '1';
			else 
				ctrl <= '0';
			end if;
		end if;
		aux :=  aux + 1;
		if aux > 15 then
			aux := 0;
		end if;
	end process;
end architecture;