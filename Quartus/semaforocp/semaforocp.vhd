library ieee;
use ieee.std_logic_1164.all;

entity semaforocp is 
generic(
	umSegundo : natural := 1;
	tresSegundos : natural := 3
);
port(
	clk : in bit;
	sinais : out std_logic_vector(4 downto 0)
);
end entity;
architecture arch_semaforocp of semaforocp is
	signal count: natural;
	type ESTADOS is (R, Y, G);
	signal estadoAtual, proximoEstado: ESTADOS;
begin
	--Processo para mudar de estado
	process(clk) is
	begin
		if clk'event and clk = '1' then
			estadoAtual <= proximoEstado;
		end if;
	end process;
	
	--Processo para a contagem de ciclos
	process(clk) is 
	begin
		if clk'event and clk = '1' then
			if ((estadoAtual=R and count=tresSegundos)or(estadoAtual=Y and count=umSegundo) or (estadoAtual=G and count=tresSegundos)) then
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	--Processo com as transições
	process(estadoAtual, count) is
	begin
		case estadoAtual is
			when  R =>
					if count = tresSegundos then
						proximoEstado <= Y;
					else
						proximoEstado <= R;
					end if;
					sinais <= "10010";
			
			when Y =>
					if count = umSegundo then
						proximoEstado <= G;
					else
						proximoEstado <= Y;
					end if;
					sinais <= "01001";
					
			when G =>
					if count = tresSegundos then
						proximoEstado <= R;
					else
						proximoEstado <= G;
					end if;
					sinais <= "00101";
		end case;
	end process;
end architecture;