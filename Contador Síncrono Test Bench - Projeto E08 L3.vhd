LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY nome IS
END nome;
 
ARCHITECTURE behavior OF nome IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nome2
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         output : buffer integer range 0 to 7
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal output : integer range 0 to 7;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nome PORT MAP (
          clock => clock,
          reset => reset,
          output => output
        );
     
   -- Stimulus process
   stim_proc: process
   begin		
      
		reset <= '1';
      wait for 100 ns;
      reset <= '0';
      wait for 100 ns;	

		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
		clock <= '0'; 
      wait for 100 ns;	
		clock <= '1'; 
      wait for 100 ns;
		clock <= '0'; 
      wait for 100 ns;
		
      wait;
   end process;

END;
