----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:57:33 01/10/2015 
-- Design Name: 
-- Module Name:    Pr6_Completo - Behavioral 
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

--Copyright 2014 Almudena Garcia Jurado-Centurion

--This file is part of Pr6_completo.

--Pr6_completo is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.

--Pr6_completo is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.

--You should have received a copy of the GNU General Public License
--along with Pr6_completo.  If not, see <http://www.gnu.org/licenses/>.*/


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pr6_Completo is
    Port ( RESET : in  STD_LOGIC;
           CLK_50MHZ : in  STD_LOGIC;
           CLK_CR : in  STD_LOGIC;
           CLK_SR: inout STD_LOGIC;
			  E : in  STD_LOGIC;
           Q1 : inout  STD_LOGIC;
           Q0 : inout  STD_LOGIC;
           S : out  STD_LOGIC);
end Pr6_Completo;

architecture Behavioral of Pr6_Completo is
	
	Component Antirrebotes is
		GENERIC (SIMULAR: STD_LOGIC := '0');
		PORT (CLK_50MHZ, E: IN STD_LOGIC; S: OUT STD_LOGIC);
	End component;
	
	Component Practica6 is
		Port ( E : in  STD_LOGIC;
           q1 : inout  STD_LOGIC;
           CLK: in STD_LOGIC;
			  CL: in STD_LOGIC;
			  q0 : inout  STD_LOGIC;
           S : out  STD_LOGIC);
	End Component;
	
begin
	
	AR: Antirrebotes port map(CLK_50MHZ=>CLK_50MHZ, E=>CLK_CR, S=>CLK_SR);
	Pr6: Practica6 port map(E=>E, q1=>Q1, CLK=>CLK_SR, CL=>RESET, q0=>q0, S=>S);	
	
end Behavioral;

