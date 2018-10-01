entity pwm is
port(
	clk: in bit;
	controle: in bit_vector(2 downto 0);
	y: out bit
);
end entity;
architecture algoritmico of pwm is
begin
	p0: process(clk, controle) is
	variable count: natural;
	variable aux: bit_vector(0 to 6);
	begin
		if controle = "000" then
			aux := "0000000";
		elsif controle = "001" then
			aux := "0000001";
		elsif controle = "010" then
			aux := "0000011";
		elsif controle = "011" then
			aux := "0000111";
		elsif controle = "100" then
			aux := "0001111";
		elsif controle = "101" then
			aux := "0011111";
		elsif controle = "110" then
			aux := "0111111";
		else
			aux := "1111111";
		end if;
		y <= aux(count);
		if clk'event and clk ='1' then
			count := count + 1;
			if count = 7 then
				count := 0;
			end if;
		end if;
	end process;
end architecture;