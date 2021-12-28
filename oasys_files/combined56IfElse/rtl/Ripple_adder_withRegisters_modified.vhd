library IEEE;    
use IEEE.STD_LOGIC_1164.ALL;    

Entity myDFF is 
	generic (n:integer  :=16);
	port ( D: in std_logic_vector(n-1 downto 0); 
		clk,rst,en: in std_logic; 
		Q : out std_logic_vector(n-1 downto 0));
end entity;


Architecture myImplementation of myDFF is 
  signal inputD :  std_logic_vector(n-1 downto 0);
  signal tempin: std_logic;
begin

  
--inputD <= D when rst = '0' and en ='1' else (others => '0');
 
process (clk, rst)
 begin
	
	if ( rising_edge(clk) ) then 
                 if(rst = '1' ) then 
		          Q <= (others => '0');
		 elsif (en = '1') then
			Q <= D;
                 end if;
	end if;
end process;
end Architecture;

library IEEE;    
use IEEE.STD_LOGIC_1164.ALL;    

Entity myRippleAdder_withRegisters is 
	generic (n:integer  :=16);
	port ( A,B: in std_logic_vector(n-1 downto 0); 
               clk,rst,en,cin: in std_logic; 
               Sum : out std_logic_vector(n-1 downto 0); 
               cout : out std_logic);
end entity;

Architecture myImplementation of myRippleAdder_withRegisters is
    signal AllInputs,AllRegInputs : std_logic_vector(2*n downto 0); 
    signal inpA,inpB,outS : std_logic_vector(n-1 downto 0);
    signal inpC,outC : std_logic;
    signal outC_vector,outC_vector2 : std_logic_vector(0 downto 0);

    component myDFF is 
	generic (n:integer  :=16);
	port ( D: in std_logic_vector(n-1 downto 0); 
		clk,rst,en: in std_logic; 
		Q : out std_logic_vector(n-1 downto 0));
end component;

    component ripple_adder is 
	generic (n:integer  :=16);
	port ( A,B: in std_logic_vector(n-1 downto 0); 
               cin: in std_logic; 
               Sum : out std_logic_vector(n-1 downto 0); 
               cout : out std_logic);
end component;

begin
        AllInputs <= A &B & cin;
	inpA<=AllRegInputs(2*n downto n+1);
	inpB<=AllRegInputs(n downto 1);
	inpC<=AllRegInputs(0);
	outC_vector2(0) <= outC;
       cout<= outC_vector(0);

       -- Registers Before Adder
	InputReg:  myDFF generic map (2*n+1) port map ( AllInputs, clk,rst,en,AllRegInputs );

       -- Adder itself
	Adder:     ripple_adder generic map (n) port map (inpA, inpB, inpC,outS,outC);

        --Registers After Adder
	outputReg:  myDFF generic map (n) port map ( outS, clk,rst,en,Sum );
	outputRegC: myDFF generic map (1) port map(outC_vector2, clk,rst,en,outC_vector );

	

	
end Architecture;


