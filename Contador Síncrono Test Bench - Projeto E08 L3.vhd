LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY nome IS
END nome;
 
ARCHITECTURE behavior OF nome IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         output : buffer integer range 0 to 7
        );
    END COMPONENT;

    --Inputs
    signal clock : std_logic := '0';
    signal reset : std_logic := '0';
    signal output : integer range 0 to 7;
 
BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: PJ_E08_L3_PEDRO_DIAS_529_FELIPE_TAGAWA_2037_FELIPE_LOSCHI_601
    PORT MAP (
        clock => clock,
        reset => reset,
        output => output
    );

    -- Clock process
    clock_process : process
    begin
        while true loop
            clock <= not clock;
            wait for 10 ns;
        end loop;
    end process;

    -- Reset process
    stim_proc: process
    begin       
        -- Apply reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait;
    end process;

END;
