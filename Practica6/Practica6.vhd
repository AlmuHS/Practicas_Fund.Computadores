----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:08 01/08/2015 
-- Design Name: 
-- Module Name:    Practica6 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Practica6 is
    Port ( E : in  STD_LOGIC;
           q1 : inout  STD_LOGIC;
           CLK: in STD_LOGIC;
			  CL: in STD_LOGIC;
			  q0 : inout  STD_LOGIC;
           S : out  STD_LOGIC);
end Practica6;

architecture Behavioral of Practica6 is
	
	COMPONENT Biestable_T is
		 Port (T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CL : in  STD_LOGIC;
           q : inout  STD_LOGIC);
	end component;
	
	
	signal T1, T2: STD_LOGIC;

begin
	biestable1: Biestable_T port map(T=>T1, CLK=>CLK, CL=>CL, q=>q0);
	biestable2: Biestable_T port map(T=>T2, CLK=>CLK, CL=>CL, q=>q1);
	
	T2<=q0 or E;
	T1<=(not q1) and E;
	S<=(not E) and q1;
end Behavioral;

