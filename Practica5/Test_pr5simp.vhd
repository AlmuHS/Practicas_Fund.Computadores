--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:57:40 12/14/2014
-- Design Name:   
-- Module Name:   /home/almu/Practica5/Test_pr5simp.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Practica5_simplificada
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_pr5simp IS
END Test_pr5simp;
 
ARCHITECTURE behavior OF Test_pr5simp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Practica5_simplificada
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
	signal valor: std_logic_vector(3 downto 0):="0000";
   signal valor_int: integer range 0 to 15;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Practica5_simplificada PORT MAP (
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
