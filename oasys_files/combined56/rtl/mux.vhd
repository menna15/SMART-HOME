library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    port (
        inputs     : in std_logic_vector (5 downto 0);   -- default order : STCooler(5),STHeater(4),SW(3),SFA(2),SRD (1),SFD (0)--
        next_state : out integer range 0 to 6 
    );
    end mux;
architecture Behavioral of mux is
begin
    next_state <= 1 when (inputs(0)='1') else
                 2 when (inputs(1)='1') else
                 3 when (inputs(2)='1') else
                 4 when (inputs(3)='1') else
                 5 when (inputs(4)='1') else
                 6 when (inputs(5)='1') else
                 0;

end architecture;
