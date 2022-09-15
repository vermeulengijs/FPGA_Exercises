----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:01:10 03/01/2014 
-- Design Name: 
-- Module Name:    oefeningxor - Behavioral 
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

entity oefeningxor is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           led : out  STD_LOGIC);
       
end oefeningxor;

architecture Behavioral of oefeningxor is

begin
led	<= sw0 xor sw1;

end Behavioral;

