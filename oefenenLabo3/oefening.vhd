----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:14 04/27/2014 
-- Design Name: 
-- Module Name:    oefening - Behavioral 
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

entity oefening is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           X : out  STD_LOGIC);
end oefening;

architecture Behavioral of oefening is

signal and_sig: std_logic;
signal of_sig: std_logic;

begin

and_gt:process (A) begin
	and_sig <= A(2) and A(1) and A(0);
	end process;
	
of_gt:process(B,C) begin
	of_sig <= B or C;
	end process;

	X <= (and_sig and of_sig) or D;


end Behavioral;

