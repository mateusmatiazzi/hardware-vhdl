entity estacionamento is
	generic (n: natural := 1);
port 
(
	a, b, clk, reset: in bit;
	lotado: out bit;
	ncarros : out natural
);
end entity;
architecture alg of estacionamento is
	signal ncarros_aux: natural;
	signal lotado_aux: bit;
	type ESTADOS is (I, E1, E2, E3, S1, S2, S3);
	signal e_atual, p_estado : ESTADOS;
begin
	process(clk, reset)
	begin
		if reset = '1' then
			e_atual <= I;
		elsif clk'event and clk = '1' then
			e_atual <= p_estado;
			ncarros <= ncarros_aux;
			lotado <=  lotado_aux;
		end if;
	end process;
	
	process(a, b, e_atual)
	variable vcarros: integer;
	variable vlotado: bit;
	begin
		case e_atual is
		-- COLOCAR IFS INDIVIDUAIS
			when I => 
				if a = '1' and b = '0' then
					p_estado <= E1;
					vcarros := 0;
				elsif a = '0' and b = '1' then
					p_estado <= S1;
					vcarros := 0;
				else
					p_estado <= I;
					vcarros := 0;
				end if;
				

			when E1 => 
				if a = '1' and b = '1' then
					p_estado <= E2;
					vcarros := 0;
				elsif a = '0' and b = '0' then
					p_estado <= I;
					vcarros := 0;
				else
					p_estado <= E1;
					vcarros := 0;
				end if;
				
			when E2 => 
				if a = '0' and b = '1' then
					p_estado <= E3;
					vcarros := 0;
				elsif a = '1' and b = '0' then
					p_estado <= E1;
					vcarros := 0;
				else
					p_estado <= E2;
					vcarros := 0;
				end if;
				
			when E3 => 
				if a = '0' and b = '0' then
					p_estado <= I;
					vcarros := 1;
				elsif a = '1' and b = '1' then
					p_estado <= E2;
					vcarros := 0;
				else
					p_estado <= E3;
					vcarros := 0;
				end if;
				
			when S1 => 
				if b = '1' and a = '1' then
					p_estado <= S2;
					vcarros := 0;
				elsif b = '0' and a = '0' then
					p_estado <= I;
					vcarros := 0;
				else
					p_estado <= S1;
					vcarros := 0;
				end if;
			
			when S2 => 
				if b = '0' and a = '1' then
					p_estado <= S3;
					vcarros := 0;
				elsif b = '1' and a = '0' then
					p_estado <= S1;
					vcarros := 0;
				else
					p_estado <= S2;
					vcarros := 0;
				end if;
				
			when S3 =>
				if a = '0' and b = '0' then
					p_estado <= I;
					vcarros := -1;
				elsif a = '1' and b = '1' then
					p_estado <= S2;
					vcarros := 0;
				else
					p_estado <= S3;
					vcarros := 0;
				end if;
			end case;
			ncarros_aux <= ncarros_aux + vcarros;
			if ncarros_aux >= n then
				vlotado := '1';
			else
				vlotado := '0';
			end if;
			lotado_aux <= vlotado;
	end process;
	
end architecture;