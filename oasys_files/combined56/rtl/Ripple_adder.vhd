library IEEE;    
use IEEE.STD_LOGIC_1164.ALL;    

Entity ripple_adder is 
	generic (n:integer  :=16);
	port ( A,B: in std_logic_vector(n-1 downto 0); 
               cin: in std_logic; 
               Sum : out std_logic_vector(n-1 downto 0); 
               cout : out std_logic);
end entity;



Architecture myDataFlow of ripple_adder is 
	signal tempC : std_logic_vector(n downto 0) ;
begin

tempC(0) <= cin;
cout <=  tempC(n);
loopG: for i in 0 to n-1 generate
  Begin
Sum(i) <= A(i) xor B(i) xor tempC(i);
tempC(i+1) <= (A(i) and B(i)) or ((A(i) xor B(i)) and tempC(i));
  end generate;
  

end Architecture ;


