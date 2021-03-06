entity alarme is
	generic (n: natural := 4);
port 
(
	chave, clk : in bit;
	sensores : in bit_vector(0 to n-1);
	sirene : out bit
);
end entity;

architecture alg of alarme is
	signal count: natural;
	type ESTADOS is (I, A1, A2, A3, A, T1, T2, T3, T);
	signal e_atual, p_estado : ESTADOS;
begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			e_atual <= p_estado;
		end if;
	end process;
	
	process(clk, e_atual)
	-- Circuito sequencial para contar os segundos;
	begin
		if clk = '1' and clk'event then
			if count >= 50000000 then 
				count <= 0;
			else 
				if e_atual = A1 or e_atual = A2 or e_atual = A3 or e_atual = T1 or e_atual = T2 or e_atual = T3 then
					count <= count + 1;
				else
					count <= 0;
				end if;
			end if;
		end if;
	end process;

	process(chave, sensores, e_atual, count)
	begin
		case e_atual is
		-- COLOCAR IFS INDIVIDUAIS
			when I => 
				if chave = '1' then
					p_estado <= A1;
				else
					p_estado <= I;
				end if;
				sirene <= '0';

			when A1 => 
				if chave = '0' then
					p_estado <= I;
				else
					if count = 50000000 then
						p_estado <= A2;
					else
						p_estado <= A1;
					
					end if;
				end if;
				sirene <= '0';
				
			when A2 => 
				if chave = '0' then
					p_estado <= I;
				else
					if count = 50000000 then
						p_estado <= A3;
					else
						p_estado <= A2;	
					end if;
				end if;
				sirene <= '0';
				
			when A3 => 
				if chave = '0' then
					p_estado <= I;
				else	
					if count = 50000000 then
						p_estado <= A;
					else
						p_estado <= A3;	
					end if;
				end if;
				sirene <= '0';
				
			when A => 
				if chave = '0' then
					p_estado <= I;
				else 
					p_estado <= A;
						
					for i in 0 to n-1 loop
						if sensores(i) = '1' then
							p_estado <= T1;
						end if;
					end loop;

				end if;
				sirene <= '0';
			
			when T1 => 
				if chave = '0' then
					p_estado <= I;
				else
					if count = 50000000 then
						p_estado <= T2;
					else
						p_estado <= T1;
					end if;
				end if;
				sirene <= '0';
				
			when T2 =>
				if chave = '0' then
					p_estado <= I;
				else 
					if count = 50000000 then
						p_estado <= T3;
					else
						p_estado <= T2;
					end if;
				end if;
				sirene <= '0';
				
			when T3 => 
				if chave = '0' then
					p_estado <= I;
				else
					if count = 50000000 then
						p_estado <= T;
					else
						p_estado <= T3;

					end if;
				end if;
				sirene <= '0';
				
			when T => 
				if chave = '1' then
					p_estado <= T;
				else
					p_estado <= I;
				end if;
				sirene <= '1';		
			end case;
	end process;
end alg;


