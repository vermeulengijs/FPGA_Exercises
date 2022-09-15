----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:55 03/01/2014 
-- Design Name: 
-- Module Name:    oefening1_2 - Behavioral 
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

entity oefening1_2 is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           led : out  STD_LOGIC);
end oefening1_2;

architecture Behavioral of oefening1_2 is

begin

led <= sw0 and sw1;


end Behavioral;

