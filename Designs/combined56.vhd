library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Combined56 is
port (
 Clk: in std_logic; --- clock signal
 Rst: in std_logic; -- reset input
 SFD: in std_logic;
 SRD: in std_logic; 
 SW: in std_logic; 
 SFA: in std_logic; 
 ST: in std_logic_vector (6 Downto 0); 
 fdoor: out std_logic;
 rdoor: out std_logic;
 winbuzz: out std_logic;
 alarmbuzz: out std_logic;
 heater: out std_logic;
 cooler: out std_logic;
 display: out std_logic_vector (2 Downto 0)
);
end Combined56;

architecture Behavioral of Combined56 is
type MOORE_FSM is (Zero, One, Two, Three, Four, Five, six); --Five heater, Six cooler
signal current_state, next_state: MOORE_FSM;

begin
-- Sequential memory of the VHDL MOORE FSM Sequence Detector
process(Clk,Rst)
begin
 if(Rst='1') then
  current_state <= Zero;
 elsif(rising_edge(Clk)) then
  current_state <= next_state;
 end if;
end process;
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
-- Output logic of the VHDL MOORE FSM Sequence Detector
process(current_state)
begin 
 case current_state is
 when Zero =>
  fdoor <= '0';
  rdoor <= '0';
  winbuzz <= '0';
  alarmbuzz <= '0';
  heater <= '0';
  cooler <= '0';
  display <= "000";
 when One =>
  fdoor <= '1';
  rdoor <= '0';
  winbuzz <= '0';
  alarmbuzz <= '0';
  heater <= '0';
  cooler <= '0';
  display <= "001";
 when Two => 
  fdoor <= '0';
  rdoor <= '1';
  winbuzz <= '0';
  alarmbuzz <= '0';
  heater <= '0';
  cooler <= '0';
  display <= "010";
 when Three => 
  fdoor <= '0';
  rdoor <= '0';
  winbuzz <= '0';
  alarmbuzz <= '1';
  heater <= '0';
  cooler <= '0';
  display <= "011";
when Four => 
  fdoor <= '0';
  rdoor <= '0';
  winbuzz <= '1';
  alarmbuzz <= '0';
  heater <= '0';
  cooler <= '0';
  display <= "100";
 when Five => 
  fdoor <= '0';
  rdoor <= '0';
  winbuzz <= '0';
  alarmbuzz <= '0';
  heater <= '1';
  cooler <= '0';
  display <= "101";
 when Six => 
  fdoor <= '0';
  rdoor <= '1';
  winbuzz <= '0';
  alarmbuzz <= '0';
  heater <= '0';
  cooler <= '1';
  display <= "110";
 end case;
end process;
end Behavioral;
