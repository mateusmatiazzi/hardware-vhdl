library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity forno is
port(
	clk : in std_logic;
	iniciar, parar, limpar : in std_logic;
	porta : in std_logic;
	tempo : in std_logic_vector(3 downto 0);
	funcionando : out std_logic
);
end entity;
architecture arch_forno of forno is
	signal count : natural;
	type ESTADOS is (S, R);
	signal estadoAtual, proximoEstado : ESTADOS;
begin
	process(clk) is
	begin
		if limpar = '1' then
			estadoAtual <= S;
		else
			if clk'event and clk = '1' then
				estadoAtual <= proximoEstado;
			end if;
		end if;
	end process;
	
	process(clk) is
	variable tmp : natural;
	begin
		if clk'event and clk = '1' then
			tmp := count;
			if count = 0  and estadoAtual = S then
				count <= to_integer(unsigned(tempo));
			elsif count > 0 and estadoAtual = R then
				count <= count - 1;
			elsif count > 0 then
				count <= tmp;
			elsif limpar = '1' then
				count <= 0;
			else
				count <= 0;
			end if;
		end if;
	end process;
	
	process(iniciar, parar, limpar, porta, tempo, count) is
	begin
		case estadoAtual is
			when S =>
				if parar = '1' or porta = '0' or count = 0 then
					proximoEstado <= S;
				elsif iniciar = '1' and porta = '1' then
					proximoEstado <= R;
				else
					proximoEstado <= S;
				end if;
				funcionando <= '0';
				
			when R =>
				if parar = '1' then
					proximoEstado <= S;
				elsif count = 0 then
					proximoEstado <= S;
				elsif porta = '0' then
					proximoEstado <= S;
				elsif iniciar = '1' then
					proximoEstado <= R;
				else
					proximoEstado <= R;
				end if;
				funcionando <= '1';
		end case;
	end process;
end architecture;