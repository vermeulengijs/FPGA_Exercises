----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:52:04 03/22/2014 
-- Design Name: 
-- Module Name:    labo4TOP - Behavioral 
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

entity labo4TOP is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           sw2 : in  STD_LOGIC;
           sw3 : in  STD_LOGIC;
           led : out  STD_LOGIC);
end labo4TOP;

architecture Behavioral of labo4TOP is

component labo4TOP is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           sw2 : in  STD_LOGIC;
           sw3 : in  STD_LOGIC;
           led : out  STD_LOGIC);
end component labo4TOP;

component oefening1_2 is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           led : out  STD_LOGIC);
end component oefening1_2;

component oefeningxor is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           led : out  STD_LOGIC);          
end component oefeningxor;

component labo3oefening1 is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           led : out  STD_LOGIC);
end component labo3oefening1;

signal and_sig:std_logic;
signal or_sig:std_logic;

begin

and_gt: oefening1_2 Port map
	(sw0 => sw0,
	sw1 => sw1,
	led => and_sig);
	
or_gt: labo3oefening1 Port map
	(sw0 => sw2,
	sw1 => sw3,
	led => or_sig);
	
xor_gt: oefeningxor Port map
	(sw0 => and_sig,
	sw1 => or_sig,
	led=> led);
	
end Behavioral;
