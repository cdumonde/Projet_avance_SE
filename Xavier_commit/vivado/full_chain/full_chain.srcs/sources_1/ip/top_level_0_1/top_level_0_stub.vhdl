-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Thu Dec 21 16:40:04 2017
-- Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/git/Xavier_commit/vivado/full_chain/full_chain.srcs/sources_1/ip/top_level_0_1/top_level_0_stub.vhdl
-- Design      : top_level_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_0 is
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

end top_level_0;

architecture stub of top_level_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,e_dout[7:0],e_empty_n,e_read,s_din[7:0],s_full_n,s_write";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_level,Vivado 2017.3";
begin
end;