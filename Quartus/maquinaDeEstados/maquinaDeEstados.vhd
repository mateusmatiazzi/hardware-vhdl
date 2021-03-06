entity maquinaDeEstados is
port(
	a: in bit;
	clk: in bit;
	reset: in bit;
	s: out bit
);
end entity;
architecture mealy of maquinaDeEstados is
	type estados is (e0, e1, e2, e3);
	signal e_atual, p_estado: estados;
begin
	po: process(clk, reset) is
	begin
		if reset = '1' then 
		e_atual <= e0;
		else
			if clk'event and clk='1' then
				e_atual <= p_estado;
			end if;
		end if;
	end process;
	p1: process(e_atual, a) is
	begin
		case e_atual is
		when e0 =>
			if a = '0' then
				s <= '0';
				p_estado <= e0;
			else
				s <= '1';
				p_estado <= e2;
			end if;
		when e1 =>
			if a = '0' then
				s <= '0';
				p_estado <= e0;
			else
				s <= '0';
				p_estado <= e2;
			end if;
		when e2 =>
			if a = '0' then
				s <= '1';
				p_estado <= e2;
			else
				s <= '0';
				p_estado <= e3;
			end if;
		when e3 =>
			if a = '0' then
				s <= '0';
				p_estado <= e3;
			else
				s <= '1';
				p_estado <= e1;
			end if;
		end case;
	end process;
end architecture;