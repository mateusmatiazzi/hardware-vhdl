entity contadorMoeda is
port(
	clk : in bit;
	reset : in bit;
	sensor : in bit_vector(3 downto 0);
	total : out natural
);
end entity;
architecture arch_contadorMoeda of contadorMoeda is
	signal dinheiro : natural;
	type ESTADOS is (I, S1, S2, S3, S4);
	signal estadoAtual, proximoEstado : ESTADOS;
begin
	process(clk) is
	begin
		if clk'event and clk = '1' then
			estadoAtual <= proximoEstado;
		end if;
	end process;

	process(estadoAtual, sensor) is
	variable tmp : natural;
	variable sentido : bit;
	begin
		tmp := 0;
		case estadoAtual is
			when I =>
				dinheiro <= dinheiro + tmp;
				if sensor(0) = '1' then
					proximoEstado <= S1;
				else
					proximoEstado <= I;
				end if;
			
			when S1 =>
				if sentido = '1' then
					tmp := 0;
				else
					tmp := 5;
				end if;
				if sensor(1) = '1' then
					proximoEstado <= S2;
				elsif sensor(0) = '0' then
					proximoEstado <= I;
					sentido := '1';
				else
					proximoEstado <= S1;
				end if;
				dinheiro <= dinheiro + tmp;
					
				
			when S2 =>
				if sentido = '1' then
					tmp := 0;
				else
					tmp := 10;
				end if;
				if sensor(2) = '1' then
					proximoEstado <= S3;
				elsif sensor(1) = '0' then
					proximoEstado <= S1;
					sentido := '1';
				else
					proximoEstado <= S2;
				end if;
				dinheiro <= dinheiro + tmp;
					
				
			when S3 =>
				if sentido = '1' then
					tmp := 0;
				else
					tmp := 25;
				end if;
				if sensor(3) = '1' then
					proximoEstado <= S4;
				elsif sensor(2) = '0' then
					proximoEstado <= S2;
					sentido := '1';
				else
					proximoEstado <= S3;
				end if;
				dinheiro <= dinheiro + tmp;
					
			when S4 =>
				if sentido = '1' then
					tmp := 0;
				else
					tmp := 50;
				end if;
				if sensor(3) = '0' then
					proximoEstado <= S3;
					sentido := '1';
				else
					proximoEstado <= S4;
				end if;
				dinheiro <= dinheiro + tmp;
					
		end case;
		total <= dinheiro;
	end process;
	
end architecture;
