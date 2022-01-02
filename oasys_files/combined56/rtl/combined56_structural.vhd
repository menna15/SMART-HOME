
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Design 2 idea : is to keep the output if heater or cooler = 1 untill the tempreture change to the normal range --
entity combined56_finalVersion is  
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
end combined56_finalVersion;

architecture Behavioral of combined56_finalVersion is
signal state, next_state : integer range 0 to 6 := 0;
signal temp : integer range 0 to 16 := 0;
signal inputs : std_logic_vector(5 downto 0);
signal TH ,TC    : std_logic;

begin
    TH     <= '1' when (ST<"0110010") else '0';
    TC     <= '1' when (ST>"1000110") else '0';
    inputs <=TC&TH&SW&SFA&SRD&SFD when state = 0 or state=6 else
        SFD&TC&TH&SW&SFA&SRD  when state = 1 else
        SRD& SFD&TH&TH&SW&SFA when state = 2 else
        SFA&SRD& SFD&TC&TH&SW when state = 3 else
        SW&SFA&SRD& SFD&TC&TH when state = 4 else
        TH&SW&SFA&SRD& SFD&TC;

    -- Block1 unsynchronous reset--
    process(Clk)
    begin
        IF (rising_edge(Clk)) THEN
        IF (Rst = '1') THEN
                  state <= 0;
        ELSE
                  state <= next_state;
        END IF;
        END IF;
      END PROCESS;
    
    -- Block2 of FSM for selecting the next state depending on current state & input --

        temp <= state + 1 when (inputs(0)='1') else
            state + 2 when (inputs(1)='1') else
            state + 3 when (inputs(2)='1') else
            state + 4 when (inputs(3)='1') else
            state + 5 when (inputs(4)='1') else
            state + 6 when (inputs(5)='1') else
            state ;
        next_state <= temp when( temp <= 6) else
            temp + 1 - 6 ;

    -----------------------------------------
    PROCESS (state)
    VARIABLE fdoor_gnd : STD_LOGIC := '0';
    VARIABLE rdoor_gnd : STD_LOGIC := '0';
    VARIABLE winbuzz_gnd : STD_LOGIC := '0';
    VARIABLE alarmbuzz_gnd : STD_LOGIC := '0';
    VARIABLE heater_gnd : STD_LOGIC := '0';
    VARIABLE cooler_gnd : STD_LOGIC := '0';
  BEGIN
    fdoor_gnd := '0';
    rdoor_gnd := '0';
    winbuzz_gnd := '0';
    alarmbuzz_gnd := '0';
    heater_gnd := '0';
    cooler_gnd := '0';
    fdoor <= fdoor_gnd;
    rdoor <= rdoor_gnd;
    winbuzz <= winbuzz_gnd;
    alarmbuzz <= alarmbuzz_gnd;
    heater <= heater_gnd;
    cooler <= cooler_gnd;
    CASE state IS
      WHEN 1 =>
        fdoor <= '1';
        fdoor_gnd := 'Z';
        display <= "001";
      WHEN 2 =>
        rdoor <= '1';
        rdoor_gnd := 'Z';
        display <= "010";
      WHEN 3 =>
        alarmbuzz_gnd := 'Z';
        alarmbuzz <= '1';
        display <= "011";
      WHEN 4 =>
        winbuzz <= '1';
        winbuzz_gnd := 'Z';
        display <= "100";
      WHEN 5 =>
        heater_gnd := 'Z';
        heater <= '1';
        display <= "101";
      WHEN 6 =>
        cooler_gnd := 'Z';
        cooler <= '1';
        display <= "110";
      WHEN OTHERS =>
        display <= "000";
    END CASE;
  END PROCESS;

end architecture;