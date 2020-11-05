library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;


entity fibo is
	generic(width 	: integer := 5);
	port(	clk1			:	in		std_logic;			
			hbut1			:	in		std_logic;
			mbut2			:	in		std_logic;			
			hred	 		:  out 	std_logic_vector(width-1 downto 0);
			mgreen		:  out	std_logic_vector(width-1 downto 0);
			dblue	 		:  out	std_logic_vector(width-1 downto 0));
end fibo;

architecture rtl of fibo is
	signal clock		: std_logic;
	signal sec			: integer	:=0;
	signal min			: integer	:=0;
	signal hour			: integer	:=0;
	signal buffhred	: std_logic_vector(width-1 downto 0);
	signal buffmgreen	: std_logic_vector(width-1 downto 0);
	signal buffdblue	: std_logic_vector(width-1 downto 0);
begin
	clkdiv: entity work.clk_div(rtl)
							port map( clk1	=> clk1,
										 clk =>	clock);
	main: process(clock) is
		begin			
			if(clock'event and clock='1') then
				sec<=sec+1;
				if (hbut1='1') then
					hour <= hour+1;
				end if;
				if (mbut2='1') then
					min <= min+1;
				end if;	
				if (sec >= 300) then
					min<=min+1;
					sec<=0;
				end if;
				if (min > 12) then
					hour <= hour+1;
					min<=0;
				end if;
				if (hour > 12) then
					hour <=0;
				end if;
				case min is
				
					when 0=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[0,0,0,0,0]*/			
						buffmgreen(3) <= '0';-- 1 1 2 3 5 */
						buffmgreen(4) <= '0';
					when 1=>
						buffmgreen(0) <= '1';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[1,0,0,0,0]*/
						buffmgreen(3) <= '0';-- 1 1 2 3 5 */
						buffmgreen(4) <= '0';
					when 2=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '1';--[0,0,1,0,0]*/
						buffmgreen(3) <= '0';-- 1 1 2 3 5 */
						buffmgreen(4) <= '0';
					when 3=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[0,0,0,1,0]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '0';
					when 4=>
						buffmgreen(0) <= '1';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[1,0,0,1,0]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '0';
					when 5=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[0,0,0,0,1]*/
						buffmgreen(3) <= '0';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 6=>
						buffmgreen(0) <= '1';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[1,0,0,0,1]*/
						buffmgreen(3) <= '0';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 7=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '1';--[0,0,1,0,1]*/
						buffmgreen(3) <= '0';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 8=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[0,0,0,1,1]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 9=>
						buffmgreen(0) <= '1';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '0';--[1,0,0,1,1]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 10=>
						buffmgreen(0) <= '0';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '1';--[0,0,1,1,1]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 11=>
						buffmgreen(0) <= '1';
						buffmgreen(1) <= '0';
						buffmgreen(2) <= '1';--[1,0,1,1,1]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when 12=>
						buffmgreen(0) <= '1';
						buffmgreen(1) <= '1';
						buffmgreen(2) <= '1';--[1,1,1,1,1]*/
						buffmgreen(3) <= '1';-- 1 1 2 3 5 */
						buffmgreen(4) <= '1';
					when OTHERS =>
				end case;
				
				case hour is
					when 0=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[0,0,0,0,0]*/			
						buffhred(3) <= '0';-- 1 1 2 3 5 */
						buffhred(4) <= '0';
					when 1=>
						buffhred(0) <= '1';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[1,0,0,0,0]*/
						buffhred(3) <= '0';-- 1 1 2 3 5 */
						buffhred(4) <= '0';
					when 2=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '1';--[0,0,1,0,0]*/
						buffhred(3) <= '0';-- 1 1 2 3 5 */
						buffhred(4) <= '0';
					when 3=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[0,0,0,1,0]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '0';
					when 4=>
						buffhred(0) <= '1';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[1,0,0,1,0]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '0';
					when 5=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[0,0,0,0,1]*/
						buffhred(3) <= '0';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 6=>
						buffhred(0) <= '1';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[1,0,0,0,1]*/
						buffhred(3) <= '0';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 7=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '1';--[0,0,1,0,1]*/
						buffhred(3) <= '0';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 8=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[0,0,0,1,1]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 9=>
						buffhred(0) <= '1';
						buffhred(1) <= '0';
						buffhred(2) <= '0';--[1,0,0,1,1]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 10=>
						buffhred(0) <= '0';
						buffhred(1) <= '0';
						buffhred(2) <= '1';--[0,0,1,1,1]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 11=>
						buffhred(0) <= '1';
						buffhred(1) <= '0';
						buffhred(2) <= '1';--[1,0,1,1,1]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when 12=>
						buffhred(0) <= '1';
						buffhred(1) <= '1';
						buffhred(2) <= '1';--[1,1,1,1,1]*/
						buffhred(3) <= '1';-- 1 1 2 3 5 */
						buffhred(4) <= '1';
					when OTHERS =>
				end case;
				  
				if	((buffhred(0) = '1') and (buffmgreen(0)='1')) then
					buffhred(0)<='0';
					buffmgreen(0)<='0';
					buffdblue(0)<='1';
				end if;
				if	((buffhred(1)='1')and(buffmgreen(1)='1')) then
					buffhred(1)<='0';
					buffmgreen(1)<='0';
					buffdblue(1)<='1';
				end if;
				if	((buffhred(2)='1')and(buffmgreen(2)='1')) then
					buffhred(2)<='0';
					buffmgreen(2)<='0';
					buffdblue(2)<='1';
				end if;
				if	((buffhred(3)='1')and (buffmgreen(3)='1')) then
					hred(3)<='0';
					buffmgreen(3)<='0';
					buffdblue(3)<='1';
				end if;
				if	((buffhred(4)='1')and(buffmgreen(4)='1')) then
					hred(4)<='0';
					buffmgreen(4)<='0';
					buffdblue(4)<='1';
				end if;
				
				hred(0) <= not buffhred(0);
				hred(1) <= not buffhred(1);
				hred(2) <= not buffhred(2);
				hred(3) <= not buffhred(3);
				hred(4) <= not buffhred(4);
				
				mgreen(0) <= not buffmgreen(0);
				mgreen(1) <= not buffmgreen(1);
				mgreen(2) <= not buffmgreen(2);
				mgreen(3) <= not buffmgreen(3);
				mgreen(4) <= not buffmgreen(4);
				
				dblue(0)	<=	not buffdblue(0);
				dblue(1)	<=	not buffdblue(1);
				dblue(2)	<=	not buffdblue(2);
				dblue(3)	<=	not buffdblue(3);
				dblue(4)	<=	not buffdblue(4);				
			end if;	
	end process main;
end architecture rtl;