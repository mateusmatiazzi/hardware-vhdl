library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lampada is
generic(
	entradaEsperada : std_logic_vector(3 downto 0) := "1011";
	umSegundo : natural := 2
);
port(
	clk : in bit;
	reset : in bit;
	a : in std_logic_vector(3 downto 0);
	s : out bit;
	contador : out std_logic_vector(6 downto 0)
);
end entity;
architecture arch_lampada of lampada is
	signal count : natural;
	signal auxContador : natural;
	type ESTADOS is (W, O);
	signal estadoAtual, proximoEstado : ESTADOS;
begin
	process(clk) is 
	begin
		if reset = '1' then
			estadoAtual <= W;
		else
			if clk'event and clk = '1' then
				estadoAtual <= proximoEstado;
			end if;
		end if;
	end process;
	
	process(clk) is
	variable tmp: natural;
	begin
		tmp := 0;
		if reset = '1' then
			count <= 0;
		else
			if(estadoAtual = O and count = umSegundo) then
				count <= 0;
				tmp := 1;
			else
				count <= count + 1;
			end if;
		end if;
		auxContador <= auxContador + tmp;
	end process;
	
	process(estadoAtual, count) is
	variable tmp : natural;
	begin
		case estadoAtual is
			when W =>
				if a = entradaEsperada then
					proximoEstado <= O;
				else
					proximoEstado <= W;
				end if;
				s <= '0';
				contador <= std_logic_vector(to_unsigned(auxContador, contador'length));
			
			when O =>
				if count = umSegundo then
					proximoEstado <= W;
				else
					proximoEstado <= O;
				end if;
				s <= '1';
				contador <= std_logic_vector(to_unsigned(auxContador, contador'length));
		end case;
	end process;
end architecture;