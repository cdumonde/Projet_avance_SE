-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
-- Date        : Fri Nov 10 10:41:16 2017
-- Host        : cdumonde running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/cedric/Documents/Cours_2A/Toto/Projet_avance_SE/VHDL/rtl_uart_nexys_4/vivado/rtl_uart.srcs/sources_1/ip/Conversion_0/Conversion_0_stub.vhdl
-- Design      : Conversion_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Conversion_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_read : out STD_LOGIC;
    s_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_full_n : in STD_LOGIC;
    s_write : out STD_LOGIC
  );

end Conversion_0;

architecture stub of Conversion_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,e_dout[7:0],e_empty_n,e_read,s_din[7:0],s_full_n,s_write";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Conversion,Vivado 2017.3";
begin
end;
