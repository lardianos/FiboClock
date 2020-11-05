library IEEE;
use ieee.std_logic_1164.all;

entity clk_div is
	port(clk1	:	in		std_logic;
		  clk		: 	out	std_logic);
end entity clk_div;


architecture rtl of clk_div is	
	signal count 	: integer :=1;	
	signal clock	:	std_logic :='0';
begin
	process(clk1) 
	begin
		if(clk1'event and clk1='1') then
			count <=count+1;
		if(count = 25000000) then
			clock <= not clock;
			clk<=clock;
			count <=1;
			end if;
		end if;
	end process;
end architecture rtl;