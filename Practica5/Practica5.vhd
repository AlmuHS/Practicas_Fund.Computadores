----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:35 12/13/2014 
-- Design Name: 
-- Module Name:    Practica5 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Practica5 is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           W : in  STD_LOGIC;
           L : out  STD_LOGIC;
           A : out  STD_LOGIC);
end Practica5;

architecture Behavioral of Practica5 is
	signal sensor: integer range 0 to 15;
	begin
	
		sensor<=conv_integer(X&Y&Z&W);
		with sensor select
			A<='1' when 1|2|4|8,
				'0' when others;
		
		L<='0' when sensor=0
		else '1';
end Behavioral;

