--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:38:38 12/14/2014
-- Design Name:   
-- Module Name:   /home/almu/Practica5/Test_Pr5.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Practica5
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------

--Copyright 2014 Almudena Garcia Jurado-Centurion

--This file is part of Practica5.

--Practica5 is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.

--Practica5 is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.

--You should have received a copy of the GNU General Public License
--along with Practica5.  If not, see <http://www.gnu.org/licenses/>.*/


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
 
ENTITY Test_Pr5 IS
END Test_Pr5;
 
ARCHITECTURE behavior OF Test_Pr5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Practica5
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         W : IN  std_logic;
         L : OUT  std_logic;
         A : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';
   signal W : std_logic := '0';

 	--Outputs
   signal L : std_logic;
   signal A : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal valor: std_logic_vector(3 downto 0):="0000";
   signal valor_int: integer range 0 to 15;
	--constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Practica5 PORT MAP (
          X => X,
          Y => Y,
          Z => Z,
          W => W,
          L => L,
          A => A
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		for i in 0 to 15 loop
			valor_int<=i; wait for 10 us;
		end loop;
		
		wait; wait;
	end process;
	valor<=conv_std_logic_vector(valor_int, 4);
	x<=valor(3);
	y<=valor(2);
	z<=valor(1);
	w<=valor(0);
END;
