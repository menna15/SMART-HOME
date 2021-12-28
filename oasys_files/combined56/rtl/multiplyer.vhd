Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

ENTITY first_stage IS
PORT	(x, y 		: IN std_logic_vector(15 DOWNTO 0);
	 clk		: IN std_logic;
	 sign_xor	: OUT std_logic;
	 x1, y1		: OUT std_logic_vector(15 DOWNTO 0));
END
first_stage;

ARCHITECTURE first_stage_a OF first_stage IS

BEGIN
	PROCESS(Clk)
	BEGIN
		IF rising_edge(Clk) THEN
			IF x(15) = '1' THEN
				x1 <= -x;
			ELSE 
				x1 <= x;
			END IF;
			IF y(15) = '1' THEN
				y1 <= -y;
			ELSE 
				y1 <= y;
			END IF;
			sign_xor <= x(15) xor y(15);
		END IF;
		
	END PROCESS;
END first_stage_a;

Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

ENTITY second_stage IS
PORT	(x, y 		: IN std_logic_vector(15 DOWNTO 0);
	 sign_xor, clk	: IN std_logic;
	 sign_xor_out	: OUT std_logic;
	 result		: OUT std_logic_vector(30 DOWNTO 0));
END
second_stage;

ARCHITECTURE second_stage_a OF second_stage IS

BEGIN
	PROCESS(Clk)
	BEGIN
		IF rising_edge(Clk) THEN
			result <= '0'&(x(14 DOWNTO 0)*y(14 DOWNTO 0));
			sign_xor_out <= sign_xor;
		END IF;
		
	END PROCESS;
END second_stage_a;

Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

ENTITY third_stage IS
PORT	(result		: IN std_logic_vector(30 DOWNTO 0);
	 sign_xor, clk	: IN std_logic;
	 result_out	: OUT std_logic_vector(30 DOWNTO 0));
END
third_stage;

ARCHITECTURE third_stage_a OF third_stage IS

BEGIN
	PROCESS(Clk)
	BEGIN
		IF rising_edge(Clk) THEN
			IF sign_xor = '1' THEN 
				result_out <= - result;
			ELSE
				result_out <=  result;
			END IF;
		END IF;
		
	END PROCESS;

END third_stage_a;

Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;


ENTITY integration IS
PORT	(x, y		: IN std_logic_vector(15 DOWNTO 0);
	 clk		: IN std_logic;
	 result		: OUT std_logic_vector(30 DOWNTO 0));
END
integration;

ARCHITECTURE integration_a OF integration IS

SIGNAL sign_xor_signal   : std_logic;
SIGNAL x1_out,y1_out     : std_logic_vector(15 DOWNTO 0);

SIGNAL sign_xor_out_signal   : std_logic;
SIGNAL result_signal         : std_logic_vector(30 DOWNTO 0);

COMPONENT first_stage IS
PORT	(x, y 		: IN std_logic_vector(15 DOWNTO 0);
	 clk		: IN std_logic;
	 sign_xor	: OUT std_logic;
	 x1, y1		: OUT std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT second_stage IS
PORT	(x, y 		: IN std_logic_vector(15 DOWNTO 0);
	 sign_xor, clk	: IN std_logic;
	 sign_xor_out	: OUT std_logic;
	 result		: OUT std_logic_vector(30 DOWNTO 0));
END COMPONENT;

COMPONENT  third_stage IS
PORT	(result		: IN std_logic_vector(30 DOWNTO 0);
	 sign_xor, clk	: IN std_logic;
	 result_out	: OUT std_logic_vector(30 DOWNTO 0));
END COMPONENT;

BEGIN
	s1 : first_stage  PORT MAP (x, y, clk, sign_xor_signal, x1_out, y1_out);
	s2 : second_stage PORT MAP (x1_out, y1_out, sign_xor_signal, clk, sign_xor_out_signal, result_signal);
	s3 : third_stage  PORT MAP (result_signal, sign_xor_out_signal, clk, result);
END integration_a;