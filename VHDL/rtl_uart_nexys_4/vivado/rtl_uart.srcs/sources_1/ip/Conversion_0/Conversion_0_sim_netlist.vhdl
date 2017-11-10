-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
-- Date        : Fri Nov 10 10:41:16 2017
-- Host        : cdumonde running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cedric/Documents/Cours_2A/Toto/Projet_avance_SE/VHDL/rtl_uart_nexys_4/vivado/rtl_uart.srcs/sources_1/ip/Conversion_0/Conversion_0_sim_netlist.vhdl
-- Design      : Conversion_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Conversion_0_Conversion is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_read : out STD_LOGIC;
    s_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_full_n : in STD_LOGIC;
    s_write : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Conversion_0_Conversion : entity is "Conversion";
end Conversion_0_Conversion;

architecture STRUCTURE of Conversion_0_Conversion is
  signal \<const0>\ : STD_LOGIC;
  signal \^e_dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^e_read\ : STD_LOGIC;
begin
  \^e_dout\(7 downto 1) <= e_dout(7 downto 1);
  e_read <= \^e_read\;
  s_din(7 downto 1) <= \^e_dout\(7 downto 1);
  s_din(0) <= \<const0>\;
  s_write <= \^e_read\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
s_write_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_full_n,
      I1 => e_empty_n,
      O => \^e_read\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Conversion_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_read : out STD_LOGIC;
    s_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_full_n : in STD_LOGIC;
    s_write : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Conversion_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Conversion_0 : entity is "Conversion_0,Conversion,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Conversion_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Conversion_0 : entity is "Conversion,Vivado 2017.3";
end Conversion_0;

architecture STRUCTURE of Conversion_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of e_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N";
  attribute x_interface_info of e_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN";
  attribute x_interface_info of s_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 s FULL_N";
  attribute x_interface_info of s_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 s WR_EN";
  attribute x_interface_info of e_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of e_dout : signal is "XIL_INTERFACENAME e, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of s_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 s WR_DATA";
  attribute x_interface_parameter of s_din : signal is "XIL_INTERFACENAME s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
begin
U0: entity work.Conversion_0_Conversion
     port map (
      clk => clk,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n,
      e_read => e_read,
      reset => reset,
      s_din(7 downto 0) => s_din(7 downto 0),
      s_full_n => s_full_n,
      s_write => s_write
    );
end STRUCTURE;
