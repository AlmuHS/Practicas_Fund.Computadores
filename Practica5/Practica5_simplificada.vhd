----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:44:28 12/13/2014 
-- Design Name: 
-- Module Name:    Practica5_simplificada - Behavioral 
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

entity Practica5_simplificada is
	Port ( X : in  STD_LOGIC;
				  Y : in  STD_LOGIC;
				  Z : in  STD_LOGIC;
				  W : in  STD_LOGIC;
				  L : out  STD_LOGIC;
				  A : out  STD_LOGIC);
end Practica5_simplificada;

architecture Behavioral of Practica5_simplificada is
begin
	L<=X or Y or Z or W;
	A<=((not W) and Z and (not Y)) or (W and (not Z) and (not X)) or ((not Y) and X and (not W)) or (Y and (not X) and (not Z));
end Behavioral;

