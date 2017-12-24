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

--Copyright 2014 Almudena Garcia Jurado-Centurion

--This file is part of Practica5_simplificada.

--Practica5_simplificada is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.

--Practica5_simplificada is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.

--You should have received a copy of the GNU General Public License
--along with Practica5_simplificada.  If not, see <http://www.gnu.org/licenses/>.*/

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

