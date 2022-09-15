--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: labo4TOP_synthesis.vhd
-- /___/   /\     Timestamp: Sat Mar 22 09:26:06 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm labo4TOP -w -dir netgen/synthesis -ofmt vhdl -sim labo4TOP.ngc labo4TOP_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: labo4TOP.ngc
-- Output file	: C:\STUDENTEN\Pieter en Gijs\labo4oef1\netgen\synthesis\labo4TOP_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: labo4TOP
-- Xilinx	: C:\Xilinx\13.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity labo4TOP is
  port (
    sw0 : in STD_LOGIC := 'X'; 
    sw1 : in STD_LOGIC := 'X'; 
    sw2 : in STD_LOGIC := 'X'; 
    sw3 : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC 
  );
end labo4TOP;

architecture Structure of labo4TOP is
  signal led_OBUF_1 : STD_LOGIC; 
  signal sw0_IBUF_3 : STD_LOGIC; 
  signal sw1_IBUF_5 : STD_LOGIC; 
  signal sw2_IBUF_7 : STD_LOGIC; 
  signal sw3_IBUF_9 : STD_LOGIC; 
begin
  xor_gt_Mxor_led_Result1 : LUT4
    generic map(
      INIT => X"5F6C"
    )
    port map (
      I0 => sw1_IBUF_5,
      I1 => sw3_IBUF_9,
      I2 => sw0_IBUF_3,
      I3 => sw2_IBUF_7,
      O => led_OBUF_1
    );
  sw0_IBUF : IBUF
    port map (
      I => sw0,
      O => sw0_IBUF_3
    );
  sw1_IBUF : IBUF
    port map (
      I => sw1,
      O => sw1_IBUF_5
    );
  sw2_IBUF : IBUF
    port map (
      I => sw2,
      O => sw2_IBUF_7
    );
  sw3_IBUF : IBUF
    port map (
      I => sw3,
      O => sw3_IBUF_9
    );
  led_OBUF : OBUF
    port map (
      I => led_OBUF_1,
      O => led
    );

end Structure;

