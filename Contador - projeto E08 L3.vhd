library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601 is
    Port( clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           output : buffer integer range 0 to 15);
end PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601;

architecture Behavioral of PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601 is

begin
process(Clock, Reset) 
begin
   if(Reset = '1') then 
	    output <= 0;
		
	elsif rising_edge(clock) then
	   if output = 15 then
		   output <= 0; 
		else
		   output <= output + 1;
		end if; 
		
	elsif falling_edge(clock) then
	    output <= output;
		
	end if;
end process; 
end Behavioral;
