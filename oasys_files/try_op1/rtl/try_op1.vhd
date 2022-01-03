LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY try_op1 IS
  PORT (
    Clk : IN STD_LOGIC; --- clock signal
    Rst : IN STD_LOGIC; -- reset input
    SFD : IN STD_LOGIC;
    SRD : IN STD_LOGIC;
    SW : IN STD_LOGIC;
    SFA : IN STD_LOGIC;
    ST : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
    fdoor : OUT STD_LOGIC;
    rdoor : OUT STD_LOGIC;
    winbuzz : OUT STD_LOGIC;
    alarmbuzz : OUT STD_LOGIC;
    heater : OUT STD_LOGIC;
    cooler : OUT STD_LOGIC;
    display : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
  );
END try_op1;

ARCHITECTURE Behavioral OF try_op1 IS
  TYPE MOORE_FSM IS (Zero, One, Two, Three, Four, Five, six); --Five heater, Six cooler
  SIGNAL current_state, next_state : MOORE_FSM;

BEGIN
  -- Sequential memory of the VHDL MOORE FSM Sequence Detector
  PROCESS (Clk)
  BEGIN
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
  PROCESS (current_state, SFD, SRD, SFA, SW, ST)
  BEGIN
    IF(SRD='0' and SFA='0' and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='0')
    Then
      next_state <= Zero;
    ELsIF((current_state= Zero and SFD = '1')
     or (current_state= One and SRD='0' and SFA='0' and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='1') 
     or (current_state= Two and SFA='0' and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='1' )
     or (current_state= Three and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='1' )
     or (current_state= Four and ST >= "0110010" and ST <= "1000110" and SFD='1' )
     or (current_state= Five and SFD='1' )
     or (current_state= Six and SFD='1' )
      ) Then
      next_state <= One;

    ELSIF ((current_state= Zero and SFD = '0' and SRD='1')
    or (current_state= One and SRD='1')
    or (current_state= Two and SFA='0' and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='0' and SRD='1') 
    or (current_state= Three and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='0' and SRD='1' )
    or (current_state= Four and ST >= "0110010" and ST <= "1000110" and SFD='0' and SRD='1' )
    or (current_state= Five and SFD='0' and SRD='1' )
    or (current_state= Six and SFD='0' and SFD='1' )
     ) Then
     next_state <= Two;

  ELSIF ((current_state= Zero and SFD = '0' and SRD='0' and SFA = '1')
  or (current_state= One and SRD='0' and SFA = '1')
  or (current_state= Two and SFA='1') 
  or (current_state= Three and SW='0' and ST >= "0110010" and ST <= "1000110" and SFD='0' and SFA='1' )
  or (current_state= Four and ST >= "0110010" and ST <= "1000110" and SFD='0' and SRD='0' and SFA='1' )
  or (current_state= Five  and SFD = '0' and SRD='0' and SFA = '1' )
  or (current_state= Six and SFD = '0' and SRD='0' and SFA = '1' )
  ) Then
  next_state <= Three; 

  ELSIF ((current_state= Zero and SFD = '0' and SRD='0' and SFA = '0' and SW = '1')
  or (current_state= One  and SRD='0' and SFA = '0' and SW = '1' )
  or (current_state= Two  and SFA = '0' and SW = '1' ) 
  or (current_state= Three and SW = '1' )
  or (current_state= Four and ST >= "0110010" and ST <= "1000110" and SFD='0' and SRD='0' and SFA='0' and SW='1' )
  or (current_state= Five  and SFD = '0' and SRD='0' and SFA = '0' and SW = '1' )
  or (current_state= Six and SFD = '0' and SRD='0' and SFA = '0' and SW = '1' )
    ) Then
    next_state <= Four;

  ELSIF ((current_state= Zero and SFD = '0' and SRD='0' and SFA = '0' and SW = '0' and ST < "0110010")
  or (current_state= One  and SRD='0' and SFA = '0' and SW = '0' and ST < "0110010" )
  or (current_state= Two and  SFA = '0' and SW = '0' and ST < "0110010" ) 
  or (current_state= Three and SW = '0' and ST < "0110010" )
  or (current_state= Four and ST < "0110010" )
  or (current_state= Five  and SFD = '0' and SRD='0' and SFA = '0' and SW = '0' and ST < "0110010" )
  or (current_state= Six and SFD = '0' and SRD='0' and SFA = '0' and SW = '0' and ST < "0110010" )
    ) Then
    next_state <= Five;  

  ELSIF ((current_state= Zero and SFD = '0' and SRD='0' and SFA = '0' and SW = '0' and ST > "1000110")
  or (current_state= One  and SRD='0' and SFA = '0' and SW = '0' and ST > "1000110" )
  or (current_state= Two and  SFA = '0' and SW = '0' and ST > "1000110" ) 
  or (current_state= Three and SW = '0' and ST > "1000110" )
  or (current_state= Four and ST > "1000110" )
  or (current_state= Five  and SFD = '0' and SRD='0' and SFA = '0' and SW = '0' and ST > "1000110" )
  or (current_state= Six and SFD = '0' and SRD='0' and SFA = '0' and SW = '0' and ST > "1000110" )
    ) Then
    next_state <= Six;  
      
  End IF; 
END PROCESS; 
 -- Output logic of the VHDL MOORE FSM Sequence Detector
    PROCESS (current_state)
     BEGIN
        fdoor <= '0';
        rdoor <= '0';
        winbuzz <= '0';
        alarmbuzz <= '0';
        heater <= '0';
        cooler <= '0';
    CASE current_state IS
      WHEN Zero =>
        display <= "000";
      WHEN One =>
        fdoor <= '1';
        display <= "001";
      WHEN Two =>
        rdoor <= '1';
        display <= "010";
      WHEN Three =>
        alarmbuzz <= '1';
        display <= "011";
      WHEN Four =>
        winbuzz <= '1';
        display <= "100";
      WHEN Five =>
        heater <= '1';
        display <= "101";
      WHEN Six =>
        cooler <= '1';
        display <= "110";
    END CASE;

  END PROCESS;
END Behavioral;
