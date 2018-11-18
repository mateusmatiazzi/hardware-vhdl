entity posmouse is 
port(
	clk, hA, hB, vA, vB, botaoE, botaoD: in bit;
	x, y : out integer;
	botoes : out bit_vector(3 downto 0)
);
end entity; 
architecture arch_posmouse of posmouse is
	signal auxX, auxY: integer := 0;
	type ESTADOS is (I, E1, E2, E3);
	signal estadoVAtual, estadoHAtual, proximoVEstado, proximoHEstado : ESTADOS;
	
	function botoes_std(x : bit; y : bit)
		  return bit_vector is
	begin
	  if x='1' and y='1' then
		 return "1010";
	  elsif x='1' and y='0' then
		 return "1001";
	  elsif x='0' and y='0' then
		 return "0101";
	  else
		 return "0110";
	  end if;
	end botoes_std;
	
begin
	process(clk) is 
	begin
		if clk'event and clk = '1' then
			estadoHAtual <= proximoHEstado;
			estadoVAtual <= proximoVEstado;
		end if;
	end process;
	
	process(estadoHAtual, estadoVAtual, hA, hB, vA, vB, botaoE, botaoD) is
	variable tmpX: integer := 0;
	variable sentidoX : bit;
	variable tmpY: integer := 0;
	variable sentidoY : bit;
	
	begin
		botoes <= botoes_std(botaoE, botaoD);
		case estadoHAtual is
			when I =>
				tmpX := 0;
				if hA = '1' then
					proximoHEstado <= E1;
					sentidoX := '0';
				elsif hB = '1' then
					sentidoX := '1';
					proximoHEstado <= E3;
				else
					proximoHEstado <= I;
				end if;
				
			when E1 =>
				tmpX := 0;
				if hA = '0' then
					proximoHEstado <= I;
				elsif hB = '1' then
					proximoHEstado <= E2;
				else
					if sentidoX = '1' then
						tmpX := -1;
					end if;
					proximoHEstado <= E1;
				end if;
				
			when E2 =>
				tmpX := 0;
				if hB = '0' then
					proximoHEstado <= E1;
				elsif hA = '0' then
					proximoHEstado <= E3;
				else
					proximoHEstado <= E2;
				end if;
					
			when E3 =>
				tmpX := 0;
				if hA = '1' then
					proximoHEstado <= E2;
				elsif hB = '0' then
					proximoHEstado <= I;
					if sentidoX = '0' then
						tmpX := 1;
					end if;
				else
					proximoHEstado <= E3;
				end if;
		end case;
		auxX <= auxX + tmpX;
		x <= auxX;
		---------------------Parte vertical-------------------------------
		
		case estadoVAtual is
			when I =>
				tmpY := 0;
				if vA = '1' then
					proximoVEstado <= E1;
					sentidoY := '0';
				elsif vB = '1' then
					sentidoY := '1';
					proximoVEstado <= E3;
				else
					proximoVEstado <= I;
				end if;
				
			when E1 =>
				tmpY := 0;
				if vA = '0' then
					proximoVEstado <= I;
				elsif vB = '1' then
					proximoVEstado <= E2;
				else
					if sentidoY = '1' then
						tmpY := -1;
					end if;
					proximoVEstado <= E1;
				end if;
				
			when E2 =>
				tmpY := 0;
				if vB = '0' then
					proximoVEstado <= E1;
				elsif vA = '0' then
					proximoVEstado <= E3;
				else
					proximoVEstado <= E2;
				end if;
					
			when E3 =>
				tmpY := 0;
				if vA = '1' then
					proximoVEstado <= E2;
				elsif vB = '0' then
					proximoVEstado <= I;
					if sentidoY = '0' then
						tmpY := 1;
					end if;
				else
					proximoVEstado <= E3;
				end if;
		end case;
		auxY <= auxY + tmpY;
		y <= auxY;
	end process;
end architecture;