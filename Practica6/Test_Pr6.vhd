--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:03:06 01/11/2015
-- Design Name:   
-- Module Name:   /home/almu/Practica6/Test_Pr6.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Pr6_Completo
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Pr6 IS
END Test_Pr6;
 
ARCHITECTURE behavior OF Test_Pr6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pr6_Completo
    PORT(
         RESET : IN  std_logic;
         CLK_50MHZ : IN  std_logic;
         CLK_CR : IN  std_logic;
         CLK_SR : INOUT  std_logic;
         E : IN  std_logic;
         Q1 : INOUT  std_logic;
         Q0 : INOUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RESET : std_logic := '0';
   signal CLK_50MHZ : std_logic := '0';
   signal CLK_CR : std_logic := '0';
   signal E : std_logic := '0';

	--BiDirs
   signal CLK_SR : std_logic;
   signal Q1 : std_logic;
   signal Q0 : std_logic;

 	--Outputs
   signal S : std_logic;

   -- Clock period definitions
   constant CLK_50MHZ_period : time := 10 ns;
   constant CLK_CR_period : time := 10 ns;
   constant CLK_SR_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pr6_Completo PORT MAP (
          RESET => RESET,
          CLK_50MHZ => CLK_50MHZ,
          CLK_CR => CLK_CR,
          CLK_SR => CLK_SR,
          E => E,
          Q1 => Q1,
          Q0 => Q0,
          S => S
        );

   -- Clock process definitions
   CLK_50MHZ_process :process
   begin
		CLK_50MHZ <= '0';
		wait for CLK_50MHZ_period/2;
		CLK_50MHZ <= '1';
		wait for CLK_50MHZ_period/2;
   end process;
 
   CLK_CR_process :process
   begin
		CLK_CR <= '0';
		wait for CLK_CR_period/2;
		CLK_CR <= '1';
		wait for CLK_CR_period/2;
   end process;
 
   CLK_SR_process :process
   begin
		CLK_SR <= '0';
		wait for CLK_SR_period/2;
		CLK_SR <= '1';
		wait for CLK_SR_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_50MHZ_period*10;

      -- insert stimulus here
			
			Reset <= '1';

		wait for 10 ns;
		
		Reset <= '0';
		
		wait for 10 ns;
		
		wait until CLK_CR ='1';
		E <= '0';
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '0';
		wait until CLK_CR ='1';
		E <= '0';
		wait until CLK_CR ='1';
		E <= '1'; 
		wait until CLK_CR ='1';
		E <= '1'; 
		wait until CLK_CR ='1';
		E <= '0'; 
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '0';
		wait until CLK_CR ='1';
		E <= '0';
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '1';
		wait until CLK_CR ='1';
		E <= '0';

     wait; wait;
   end process;

END;
