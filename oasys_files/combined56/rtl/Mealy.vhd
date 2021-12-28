LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Design 2 idea : is to keep the output if heater or cooler = 1 untill the tempreture change to the normal range --
ENTITY Mealy IS
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
END Mealy;

ARCHITECTURE Mealy_arch OF Mealy IS
    TYPE state_type IS (s0, s1, s2, s3, s4, s5, s6);
    SIGNAL state, next_state : state_type;

BEGIN
    -- Block1 unsynchronous reset--
    PROCESS (Clk, Rst)
    BEGIN
        IF (rising_edge(Clk)) THEN
		IF (Rst = '1') THEN
            		state <= s0;
		ELse
            		state <= next_state;
		END IF;
        END IF;
    END PROCESS;

    -- Block2 of Mealy FSM for selecting the next state & output depending on current state & input --

    PROCESS (state, SFD, SRD, SFA, SW, ST)
    BEGIN

        CASE(state) IS
            ---------------------------------------------------------------
            WHEN s0 =>
            IF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSIF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSIF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSIF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSIF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";
            END IF;
            --------------------------------------------------------------------------------
            WHEN s1 =>
            IF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSIF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSIF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSIF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";
            ELSIF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";
            END IF;

            -------------------------------------------------------------------------------------
            WHEN s2 =>
            IF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSIF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSIF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";

            ELSIF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSIF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";

            END IF;
            --------------------------------------------------------------------------------------- 
            WHEN s3 =>

            IF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSIF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";

            ELSIF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSIF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSIF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";

            END IF;
            ----------------------------------------------------------------------------------------------------  
            WHEN s4 =>
            IF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";

            ELSIF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSIF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSIF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSIF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";

            END IF;
            ------------------------------------------------------------------------------------------------------
            WHEN s5 =>
            IF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSIF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSIF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSIF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSIF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";

            END IF;
            -------------------------------------------------------------------------------------------------
            WHEN s6 =>
            IF (SFD = '1') THEN
                next_state <= s1;
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "001";

            ELSIF (SRD = '1') THEN
                next_state <= s2;
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "010";

            ELSIF (SFA = '1') THEN
                next_state <= s3;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '1';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "011";

            ELSIF (SW = '1') THEN
                next_state <= s4;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "100";

            ELSIF (ST < "0110010") THEN
                next_state <= s5;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";

            ELSIF (ST > "1000110") THEN
                next_state <= s6;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";

            ELSE
                next_state <= s0;
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarmbuzz <= '0';
                IF ((ST >= "0110010" AND ST <= "1000110") OR ST = "UUUUUUU") THEN
                    heater <= '0';
                    cooler <= '0';
                END IF;
                display <= "000";

            END IF;

        END CASE;
    END PROCESS;
    --------------------------------------------------------------------------------------
END ARCHITECTURE;
