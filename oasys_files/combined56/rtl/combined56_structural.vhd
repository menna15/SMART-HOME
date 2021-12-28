library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Design 2 idea : is to keep the output if heater or cooler = 1 untill the tempreture change to the normal range --
entity combined56_structural is  
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
end combined56_structural;

architecture Design_Architecture of combined56_structural is
    type MOORE_FSM is (Zero, One, Two, Three, Four, Five, six); --Five heater, Six cooler
    signal current_state, next_state: MOORE_FSM;
    signal outputs : std_logic_vector(5 downto 0);
    
    begin
    -- Sequential memory of the VHDL MOORE FSM Sequence Detector
    process(Clk,Rst)
    begin
     IF (rising_edge(Clk)) THEN
	IF (Rst = '1') THEN
      		current_state <= Zero;
	ELSE
      		current_state <= next_state;
	END IF;
    END IF;
    END PROCESS;
    -- Next state logic of the VHDL MOORE FSM Sequence Detector
    -- Combinational logic
    process(current_state,SFD,SRD,SFA,SW,ST)
    begin
     case(current_state) is
    
     when Zero =>
      if(SFD='1') then
       next_state <= One;
      elsif(SRD='1') then
       next_state <= Two;
      elsif(SFA='1') then
       next_state <= Three;
      elsif(SW='1') then
       next_state <= Four;
      elsif(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
      else
       next_state<=Zero;
      end if;
    
     when One =>
      if(SRD='1') then
       next_state <= Two;
      elsif(SFA='1') then
       next_state <= Three;
      elsif(SW='1') then
       next_state <= Four;
      elsif(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
      elsif(SFD='1') then
       next_state <= One;
      else
       next_state<=Zero;
      end if;
        
     when Two => 
      if(SFA='1') then
       next_state <= Three;
      elsif(SW='1') then
       next_state <= Four;
      elsif(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
      elsif(SFD='1') then
       next_state <= One;
      elsif(SRD='1') then
       next_state <= Two;
      else
       next_state<=Zero;
      end if;
     
     when Three =>
      if(SW='1') then
       next_state <= Four;
      elsif(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
      elsif(SFD='1') then
       next_state <= One;
      elsif(SRD='1') then
       next_state <= Two;
      elsif(SFA='1') then
       next_state <= Three;
      else
       next_state<=Zero;
      end if;
      
     when Four =>
      if(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
      elsif(SFD='1') then
       next_state <= One;
      elsif(SRD='1') then
       next_state <= Two;
      elsif(SFA='1') then
       next_state <= Three;
      elsif(SW='1') then
       next_state <= Four;
      else
       next_state<=Zero;
      end if;
    
    when Five =>
      if(SFD='1') then
       next_state <= One;
      elsif(SRD='1') then
       next_state <= Two;
      elsif(SFA='1') then
       next_state <= Three;
      elsif(SW='1') then
       next_state <= Four;
      elsif(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
     else
       next_state<=Zero;
      end if;
    
    when Six =>
      if(SFD='1') then
       next_state <= One;
      elsif(SRD='1') then
       next_state <= Two;
      elsif(SFA='1') then
       next_state <= Three;
      elsif(SW='1') then
       next_state <= Four;
      elsif(ST<"0110010") then
       next_state <= Five;
      elsif(ST>"1000110") then
       next_state <= Six;
     else
       next_state<=Zero;
      end if;
    
     end case;
    end process;
    -- Block3 of FSM for selecting the output depending on the current state --
    process(current_state)
    begin 
        case current_state is
            when Zero =>
                outputs <= (others => '0');
                display  <= "000";
            when One =>
                outputs <= (0 => '1',others => '0');
                display  <= "001";
            when Two => 
                outputs <= (1 => '1',others => '0');
                display  <= "010";
            when Three => 
                outputs <= (2 => '1',others => '0');
                display  <= "011";
            when Four => 
                outputs <= (3 => '1',others => '0');
                display  <= "100";
            when Five => 
                outputs <= (4 => '1',others => '0');
                display  <= "101";
            when Six => 
                outputs <= (5 => '1',others => '0');
                display  <= "110";
        end case;
        fdoor     <= outputs(0);
        rdoor     <= outputs(1);
        alarmbuzz <= outputs(2);
        winbuzz   <= outputs(3);
        heater    <= outputs(4);
        cooler    <= outputs(5);
    end process;
end architecture;
