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
	variable aux: std_logic_vector(8 downto 0);
	variable aux2: std_logic_vector(8 downto 0);
	variable count: natural;
	begin
		
		if clk'event and clk = '1' then
			if count = 0 then
				aux:= aux + s1;
			elsif count = 1 then
				aux:= aux +s2;
			elsif count = 2 then
				aux:= aux + s3;
			else
				aux := aux + s4;
				aux2:= std_logic_vector(shift_right(unsigned(aux), 2));
				saida <= aux2(4 downto 0);
				aux:="000000000";
				count := 0;
			end if;
		end if;
	end process;
end architecture;