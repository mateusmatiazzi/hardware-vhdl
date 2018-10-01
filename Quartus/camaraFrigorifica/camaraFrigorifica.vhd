library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity camaraFrigorifica is
port(
	clk: in bit;
	s1: in std_logic_vector(4 downto 0);
	s2: in std_logic_vector(4 downto 0);
	s3: in std_logic_vector(4 downto 0);
	s4: in std_logic_vector(4 downto 0);
	saida: out std_logic_vector(4 downto 0)
);
end entity;
architecture alg of camaraFrigorifica is
begin
	process(clk) is
	variable aux: natural;
	variable aux2:natural;
	variable count: natural;
	begin
		
		if clk'event and clk = '1' then
			if count = 0 then
				aux:= aux + to_integer(unsigned(s1));
				count:=count + 1;
			elsif count = 1 then
				aux:= aux +to_integer(unsigned(s2));
				count:=count + 1;
			elsif count = 2 then
				aux:= aux + to_integer(unsigned(s3));
				count:=count + 1;
			else
				aux := aux + to_integer(unsigned(s4));
				if aux mod 2 = 1 then
					aux := aux + 1;
				end if;
				aux2:= aux/4;
				saida <=  std_logic_vector(to_unsigned(aux2, s1'length));
				aux:=0;
				count := 0;
			end if;
		end if;
	end process;
end architecture;