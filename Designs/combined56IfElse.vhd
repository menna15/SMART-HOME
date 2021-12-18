library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Design 2 idea : is to keep the output if heater or cooler = 1 untill the tempreture change to the normal range --
entity combined56_ifelse is  
    port (
    Clk : in std_logic; 
    Rst : in std_logic; -- reset input
    SFD : in std_logic;
    SRD : in std_logic; 
    SW  : in std_logic; 
    SFA : in std_logic; 
    ST  : in std_logic_vector (6 Downto 0); 

    fdoor     : out std_logic;
    rdoor     : out std_logic;
    winbuzz   : out std_logic;
    alarmbuzz : out std_logic;
    heater    : out std_logic;
    cooler    : out std_logic;
    display   : out std_logic_vector (2 Downto 0) -- 
);
end combined56_ifelse;

architecture Design_Architecture of combined56_ifelse is
type state_type is (s0, s1, s2, s3, s4, s5, s6); 
signal state, next_state: state_type;

begin
    -- Block1 unsynchronous reset--
    process(Clk,Rst)
    begin
        if( Rst='1') then
            state <= s0;
        elsif( rising_edge(Clk) ) then
            state <= next_state;
        end if;
    end process;
    
    -- Block2 of FSM for selecting the next state depending on current state & input --
    process(state,SFD,SRD,SFA,SW,ST)
    begin
        
        if (state = s0) then
            if(SFD='1') then
            next_state <= s1;
            elsif(SRD='1') then
            next_state <= s2;
            elsif(SFA='1') then
            next_state <= s3;
            elsif(SW='1') then
            next_state <= s4;
            elsif(ST<"0110010") then
            next_state <= s5;
            elsif(ST>"1000110") then
            next_state <= s6;
            else
            next_state <= s0;
            end if;

        elsif (state = s1) then
            if(SRD='1') then
            next_state <= s2;
            elsif(SFA='1') then
            next_state <= s3;
            elsif(SW='1') then
            next_state <= s4;
            elsif(ST<"0110010") then
            next_state <= s5;
            elsif(ST>"1000110") then
            next_state <= s5;
            elsif(SFD='1') then
            next_state <= s1;
            else
            next_state <= s0;
            end if;

        elsif (state = s2) then
            if(SFA='1') then
                next_state <= s3;
            elsif(SW='1') then
                next_state <= s4;
            elsif(ST<"0110010") then
                next_state <= s5;
            elsif(ST>"1000110") then
                next_state <= s6;
            elsif(SFD='1') then
                next_state <= s1;
            elsif(SRD='1') then
                next_state <= s2;
            else
                next_state<=s0;
            end if;
              
        elsif (state = s3) then
            if(SW='1') then
            next_state <= s4;
            elsif(ST<"0110010") then
            next_state <= s5;
            elsif(ST>"1000110") then
            next_state <= s6;
            elsif(SFD='1') then
            next_state <= s1;
            elsif(SRD='1') then
            next_state <= s2;
            elsif(SFA='1') then
            next_state <= s3;
            else
            next_state <= s0;
            end if;
               
        elsif (state = s4) then
            if(ST<"0110010") then
            next_state <= s5;
            elsif(ST>"1000110") then
            next_state <= s6;
            elsif(SFD='1') then
            next_state <= s1;
            elsif(SRD='1') then
            next_state <= s2;
            elsif(SFA='1') then
            next_state <= s3;
            elsif(SW='1') then
            next_state <= s1;
            else
            next_state <= s0;
            end if;
             
        elsif (state = s5) then
            if(SFD='1') then
            next_state <= s1;
            elsif(SRD='1') then
            next_state <= s2;
            elsif(SFA='1') then
            next_state <= s3;
            elsif(SW='1') then
            next_state <= s4;
            elsif(ST<"0110010") then
            next_state <= s5;
            elsif(ST>"1000110") then
            next_state <= s6;
            else
            next_state<=s0;
            end if;
             
        else 
            if(SFD='1') then
            next_state <= s1;
            elsif(SRD='1') then
            next_state <= s2;
            elsif(SFA='1') then
            next_state <= s3;
            elsif(SW='1') then
            next_state <= s4;
            elsif(ST<"0110010") then
            next_state <= s5;
            elsif(ST>"1000110") then
            next_state <= s6;
            else
            next_state<=s0;
            end if;

        end if;    
    end process;
    
    -- Block3 of FSM for selecting the output depending on the current state --
    process(state)
    begin
        if (state = s0) then
            fdoor    <= '0';
            rdoor    <= '0';
            winbuzz  <= '0';
            alarmbuzz<= '0';
            heater   <= '0';
            cooler   <= '0';
            display  <= "000";

        elsif (state = s1) then
            fdoor    <= '1';
            rdoor    <= '0';
            winbuzz  <= '0';
            alarmbuzz<= '0';
            heater   <= '0';
            cooler   <= '0';
            display  <= "001";

        elsif (state = s2) then
            fdoor    <= '0';
            rdoor    <= '1';
            winbuzz  <= '0';
            alarmbuzz<= '0';
            heater   <= '0';
            cooler   <= '0';
            display  <= "010";

        elsif (state = s3) then
            fdoor    <= '0';
            rdoor    <= '0';
            winbuzz  <= '1';
            alarmbuzz<= '0';
            heater   <= '0';
            cooler   <= '0';
            display  <= "011";

        elsif (state = s4) then
            fdoor    <= '0';
            rdoor    <= '0';
            winbuzz  <= '0';
            alarmbuzz<= '1';
            heater   <= '0';
            cooler   <= '0';
            display  <= "100";

        elsif (state = s5) then
            fdoor    <= '0';
            rdoor    <= '0';
            winbuzz  <= '0';
            alarmbuzz<= '0';
            heater   <= '1';
            cooler   <= '0';
            display  <= "101";

        else
            fdoor    <= '0';
            rdoor    <= '0';
            winbuzz  <= '0';
            alarmbuzz<= '0';
            heater   <= '0';
            cooler   <= '1';
            display  <= "110";
        end if;    
    end process;

end architecture;