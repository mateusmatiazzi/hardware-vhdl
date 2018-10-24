entity semaforo is
	generic (
	umEMeio: natural := 75000000;
	doisEMeio: natural := 125000000;
	tres: natural := 150000000);
port 
(
	SW, clk : in bit;
	LEDR : out bit_vector(1 downto 0);
	LEDG : out bit_vector(1 downto 0)
);
end entity;
architecture alg of semaforo is
	signal count: natural;
	type ESTADOS is (RG, RY, GR, YR, YY);
	signal e_atual, p_estado : ESTADOS;
begin
	process(SW, clk)
	begin
		if SW = '1' then
			e_atual <= YY;
		else
			if clk'event and clk = '1' then
				e_atual <= p_estado;
			end if;
		end if;
	end process;
	
	process(clk)
	-- Circuito sequencial para contar os segundos;
	begin
		if clk = '1' and clk'event then
			if (e_atual=RG and count >= doisEMeio) or (e_atual=RY and count >= umeMeio ) or (e_atual=GR and count >= tres) or (e_atual=YR and count >= umeMeio) then 
				count <= 0;
			else 
					count <= count + 1;
			end if;
		end if;
	end process;
	
	process(e_atual, count) is
	begin 
		case e_atual is
			when RG =>
				if count = doisEMeio then
					p_estado <= RY;
				else
					p_estado <= RG;
				end if;
				LEDR <= "10";
				LEDG <= "01";
			
			when RY =>
				if count = umeMeio then
					p_estado <= GR;
				else
					p_estado <= RY;
				end if;
				LEDR <= "11";
				LEDG <= "01";
				
			when GR =>
				if count = tres then
					p_estado <= YR;
				else
					p_estado <= GR;
				end if;
				LEDR <= "01";
				LEDG <= "10";
				
			when YR =>
				if count = umEMeio then
					p_estado <= RG;
				else
					p_estado <= YR;
				end if;
				LEDR <= "11";
				LEDG <= "10";
				
			when YY =>
				LEDR <= "11";
				LEDG <= "11";
				p_estado <= RG;
		end case;
	end process;
	
	
end architecture;