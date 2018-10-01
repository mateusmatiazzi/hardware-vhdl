entity lista1 is
end lista1;
architecture dataflow of lista1 is
begin
	p1:process
	variable z: bit;
	begin
		z<= transport '1' after 6ns;
		wait for 3ns;
		
		z<= transport '0' after 4ns;
		wait for 5ns;
		
		z<= transport '1' after 6ns;
		wait for 1ns;
		
		z<= transport '0' after 4ns;
	end process;
end dataflow;