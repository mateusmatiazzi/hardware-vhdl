library ieee;
use ieee.std_logic_1164.all;

entity debounceP2 is
generic(
	ncycles : natural := 3
);
port(
	input : in std_logic;
	output : out std_logic;
	reset : in bit;
	clk : in bit
);
end debounceP2;

architecture arch_debounceP2 of debounceP2 is
	signal new_input_signal : std_logic;
	signal output_signal : std_logic;
begin
	process(clk, new_input_signal)
		variable counter : natural;
		variable new_counter : natural;
		variable last_input_signal : std_logic;
		variable input_signal : std_logic;
	begin
		if reset = '1' then
			counter := 1;
		else
			if (clk'event and clk = '1') then
				counter := new_counter;
				last_input_signal := input_signal;
				input_signal := new_input_signal;
			end if;
		end if;
		new_counter := counter;
		if(input_signal = last_input_signal) then
			new_counter := new_counter + 1;
		else
			new_counter := 1;
		end if;
		
		if(new_counter = ncycles) then
			output_signal <= input_signal;
			new_counter := new_counter - 1;
		end if;
	end process;
	
	new_input_signal <= input;
	output <= output_signal;
	
end arch_debounceP2;