library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_bit.all;
entity felipeflop is 
port(
	clk: in bit;
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	reset: in bit;
	data: out std_logic_vector(3 downto 0)
);
end entity;
architecture algoritmico of felipeflop is
begin
	process(clk, a, b) is
	begin
		if clk'event and clk='1' then
			data <= a+b;
		end if;
	end process;
end architecture;