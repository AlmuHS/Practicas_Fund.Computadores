----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:37 01/07/2015 
-- Design Name: 
-- Module Name:    Biestable_T - Behavioral 
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

--This file is part of Practica6.

--Practica6 is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.

--Practica6 is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.

--You should have received a copy of the GNU General Public License
--along with Practica6.  If not, see <http://www.gnu.org/licenses/>.*/


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Biestable_T is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CL : in  STD_LOGIC;
           q : inout  STD_LOGIC);
end Biestable_T;

architecture Behavioral of Biestable_T is
signal q_interna: std_logic;
begin
	process(CL, CLK, T, q_interna)
	begin
		if CL='1' then q_interna<='0';
		elsif CLK'event and CLK='1' then
			if q_interna='0' and T='1' then q_interna<='1';
				elsif q_interna='1' and T='1' then q_interna<='0';
			end if;
		end if;
	end process;
	q<=q_interna;
end Behavioral;

