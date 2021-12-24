LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Design 2 idea : is to keep the output if heater or cooler = 1 untill the tempreture change to the normal range --
ENTITY seperate56_ifelse IS
    PORT (
        clk : IN STD_LOGIC;
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
        display : OUT STD_LOGIC_VECTOR (2 DOWNTO 0) -- 
    );
END seperate56_ifelse;

ARCHITECTURE Design_Architecture OF seperate56_ifelse IS
    TYPE state_type IS (s0, s1, s2, s3, s4, s5, s6);
    SIGNAL state, next_state : state_type;

BEGIN
    -- Block1 unsynchronous reset--
    PROCESS (Clk, Rst)
    BEGIN
        IF (rising_edge(Clk)) THEN
		IF (Rst = '1') THEN
            		state <= s0;
		ELSE            		
			state <= next_state;
		END IF;
        END IF;
    END PROCESS;

    -- Block2 of FSM for selecting the next state depending on current state & input --
    PROCESS (state, SFD, SRD, SFA, SW, ST)
    BEGIN

        IF (state = s0 OR state = s6) THEN
            IF (SFD = '1') THEN
                next_state <= s1;
            ELSIF (SRD = '1') THEN
                next_state <= s2;
            ELSIF (SFA = '1') THEN
                next_state <= s3;
            ELSIF (SW = '1') THEN
                next_state <= s4;
            ELSIF (ST < "0110010") THEN
                next_state <= s5;
            ELSIF (ST > "1000110") THEN
                next_state <= s6;
            ELSE
                next_state <= s0;
            END IF;

        ELSIF (state = s1) THEN
            IF (SRD = '1') THEN
                next_state <= s2;
            ELSIF (SFA = '1') THEN
                next_state <= s3;
            ELSIF (SW = '1') THEN
                next_state <= s4;
            ELSIF (ST < "0110010") THEN
                next_state <= s5;
            ELSIF (ST > "1000110") THEN
                next_state <= s5;
            ELSIF (SFD = '1') THEN
                next_state <= s1;
            ELSE
                next_state <= s0;
            END IF;

        ELSIF (state = s2) THEN
            IF (SFA = '1') THEN
                next_state <= s3;
            ELSIF (SW = '1') THEN
                next_state <= s4;
            ELSIF (ST < "0110010") THEN
                next_state <= s5;
            ELSIF (ST > "1000110") THEN
                next_state <= s6;
            ELSIF (SFD = '1') THEN
                next_state <= s1;
            ELSIF (SRD = '1') THEN
                next_state <= s2;
            ELSE
                next_state <= s0;
            END IF;

        ELSIF (state = s3) THEN
            IF (SW = '1') THEN
                next_state <= s4;
            ELSIF (ST < "0110010") THEN
                next_state <= s5;
            ELSIF (ST > "1000110") THEN
                next_state <= s6;
            ELSIF (SFD = '1') THEN
                next_state <= s1;
            ELSIF (SRD = '1') THEN
                next_state <= s2;
            ELSIF (SFA = '1') THEN
                next_state <= s3;
            ELSE
                next_state <= s0;
            END IF;

        ELSIF (state = s4) THEN
            IF (ST < "0110010") THEN
                next_state <= s5;
            ELSIF (ST > "1000110") THEN
                next_state <= s6;
            ELSIF (SFD = '1') THEN
                next_state <= s1;
            ELSIF (SRD = '1') THEN
                next_state <= s2;
            ELSIF (SFA = '1') THEN
                next_state <= s3;
            ELSIF (SW = '1') THEN
                next_state <= s4;
            ELSE
                next_state <= s0;
            END IF;

        ELSE -- state 5
            IF (ST > "1000110") THEN
                next_state <= s6;
            ELSIF (SFD = '1') THEN
                next_state <= s1;
            ELSIF (SRD = '1') THEN
                next_state <= s2;
            ELSIF (SFA = '1') THEN
                next_state <= s3;
            ELSIF (SW = '1') THEN
                next_state <= s4;
            ELSIF (ST < "0110010") THEN
                next_state <= s5;
            ELSE
                next_state <= s0;
            END IF;

        END IF;
    END PROCESS;

    -- Block3 of FSM for selecting the output depending on the current state --
    PROCESS (state)
    BEGIN
        IF (state = s0) THEN
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarmbuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "000";

        ELSIF (state = s1) THEN
            fdoor <= '1';
            rdoor <= '0';
            winbuzz <= '0';
            alarmbuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "001";

        ELSIF (state = s2) THEN
            fdoor <= '0';
            rdoor <= '1';
            winbuzz <= '0';
            alarmbuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "010";

        ELSIF (state = s3) THEN
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarmbuzz <= '1';
            heater <= '0';
            cooler <= '0';
            display <= "011";

        ELSIF (state = s4) THEN
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '1';
            alarmbuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "100";

        ELSIF (state = s5) THEN
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarmbuzz <= '0';
            heater <= '1';
            cooler <= '0';
            display <= "101";

        ELSE
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarmbuzz <= '0';
            heater <= '0';
            cooler <= '1';
            display <= "110";
        END IF;
    END PROCESS;

END ARCHITECTURE;
