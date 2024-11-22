library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601 is
    Port( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : buffer integer range 0 to 7);
end PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601;

architecture Behavioral of PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601 is

begin
process(clock, reset) 
begin
   if(Reset = '1') then 
	output <= 0;

elsif rising edge (clock) then
	if output = 0 then
		output <= 5;
	elsif output = 5 then
		output <= 4;
	elsif output = 4 then
		output <= 6;
	elsif output = 6 then
		output <= 1;
	elsif output = 1 then
		output <= 3;
	elsif output = 3 then
		output <= 2;
	elsif output = 2 then
		output <= 0;
	elsif output = 7 then
		output <= 0;

	elsif falling_edge(clock) then
	    output <= output;
	end if;
end if;
end process; 
end Behavioral;
