LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Combined56TriBuffer IS
  PORT (
    clk : IN STD_LOGIC; --- clock signal
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
END Combined56TriBuffer;

ARCHITECTURE Behavioral OF Combined56TriBuffer IS
  -- TYPE MOORE_FSM IS (Zero, One, Two, Three, Four, Five, six); --Five heater, Six cooler
  SIGNAL current_state, next_state : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
  -- Sequential memory of the VHDL MOORE FSM Sequence Detector
  PROCESS (Clk)
  BEGIN
    IF (rising_edge(Clk)) THEN
      IF (Rst = '1') THEN
        current_state <= "000";
      ELSE
        current_state <= next_state;
      END IF;
    END IF;
  END PROCESS;
  -- Next state logic of the VHDL MOORE FSM Sequence Detector
  -- Combinational logic
  PROCESS (current_state, SFD, SRD, SFA, SW, ST)
    VARIABLE base_state : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
  BEGIN
    next_state <= base_state;
    CASE(current_state) IS
      WHEN "001" =>
      IF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      ELSIF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      ELSIF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      ELSIF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      ELSIF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      END IF;

      WHEN "010" =>
      IF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      ELSIF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      ELSIF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      ELSIF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      ELSIF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      END IF;

      WHEN "011" =>
      IF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      ELSIF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      ELSIF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      ELSIF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      ELSIF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      END IF;

      WHEN "100" =>
      IF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      ELSIF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      ELSIF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      ELSIF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      ELSIF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      END IF;

      WHEN "101" =>
      IF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      ELSIF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      ELSIF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      ELSIF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      ELSIF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      END IF;

      WHEN "110" =>
      IF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      ELSIF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      ELSIF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      ELSIF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      ELSIF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      END IF;

      WHEN OTHERS =>
      IF (SFD = '1') THEN
        base_state := "ZZZ";
        next_state <= "001";
      ELSIF (SRD = '1') THEN
        base_state := "ZZZ";
        next_state <= "010";
      ELSIF (SFA = '1') THEN
        base_state := "ZZZ";
        next_state <= "011";
      ELSIF (SW = '1') THEN
        base_state := "ZZZ";
        next_state <= "100";
      ELSIF (ST < "0110010") THEN
        base_state := "ZZZ";
        next_state <= "101";
      ELSIF (ST > "1000110") THEN
        base_state := "ZZZ";
        next_state <= "110";
      END IF;
    END CASE;
  END PROCESS;
  -- Output logic of the VHDL MOORE FSM Sequence Detector
  PROCESS (current_state)
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
    CASE current_state IS
      WHEN "001" =>
        fdoor <= '1';
        fdoor_gnd := 'Z';
        display <= "001";
      WHEN "010" =>
        rdoor <= '1';
        rdoor_gnd := 'Z';
        display <= "010";
      WHEN "011" =>
        alarmbuzz_gnd := 'Z';
        alarmbuzz <= '1';
        display <= "011";
      WHEN "100" =>
        winbuzz <= '1';
        winbuzz_gnd := 'Z';
        display <= "100";
      WHEN "101" =>
        heater_gnd := 'Z';
        heater <= '1';
        display <= "101";
      WHEN "110" =>
        cooler_gnd := 'Z';
        cooler <= '1';
        display <= "110";
      WHEN OTHERS =>
        display <= "000";
    END CASE;
  END PROCESS;
END Behavioral;