-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
-- Date        : Fri Nov 10 10:56:29 2017
-- Host        : lucas-PC running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/vivado/rtl_uart.srcs/sources_1/ip/Conversion_0/Conversion_0_sim_netlist.vhdl
-- Design      : Conversion_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Conversion_0_Conversion_do_conversion is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_write : out STD_LOGIC;
    s_full_n : in STD_LOGIC;
    e_empty_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Conversion_0_Conversion_do_conversion : entity is "Conversion_do_conversion";
end Conversion_0_Conversion_do_conversion;

architecture STRUCTURE of Conversion_0_Conversion_do_conversion is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_1_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal \s_din[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal tmp_reg_73 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of \s_din[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_din[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_din[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_din[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_din[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_din[7]_INST_0\ : label is "soft_lutpair2";
begin
  E(0) <= \^e\(0);
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF08F8"
    )
        port map (
      I0 => s_full_n,
      I1 => ap_CS_fsm_state3,
      I2 => ap_CS_fsm_state2,
      I3 => e_empty_n,
      I4 => reset,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF15"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => s_full_n,
      I2 => ap_CS_fsm_state3,
      I3 => e_empty_n,
      I4 => reset,
      O => \ap_CS_fsm[2]_i_1_n_0\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => ap_CS_fsm_state2,
      R => '0'
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ap_CS_fsm[2]_i_1_n_0\,
      Q => ap_CS_fsm_state3,
      R => '0'
    );
e_read_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => e_empty_n,
      O => \^e\(0)
    );
\s_din[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_reg_73(0),
      O => s_din(0)
    );
\s_din[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_reg_73(0),
      I1 => tmp_reg_73(1),
      O => s_din(1)
    );
\s_din[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmp_reg_73(0),
      I1 => tmp_reg_73(1),
      I2 => tmp_reg_73(2),
      O => s_din(2)
    );
\s_din[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tmp_reg_73(1),
      I1 => tmp_reg_73(0),
      I2 => tmp_reg_73(2),
      I3 => tmp_reg_73(3),
      O => s_din(3)
    );
\s_din[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => tmp_reg_73(2),
      I1 => tmp_reg_73(0),
      I2 => tmp_reg_73(1),
      I3 => tmp_reg_73(3),
      I4 => tmp_reg_73(4),
      O => s_din(4)
    );
\s_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => tmp_reg_73(3),
      I1 => tmp_reg_73(1),
      I2 => tmp_reg_73(0),
      I3 => tmp_reg_73(2),
      I4 => tmp_reg_73(4),
      I5 => tmp_reg_73(5),
      O => s_din(5)
    );
\s_din[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_din[7]_INST_0_i_1_n_0\,
      I1 => tmp_reg_73(6),
      O => s_din(6)
    );
\s_din[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \s_din[7]_INST_0_i_1_n_0\,
      I1 => tmp_reg_73(6),
      I2 => tmp_reg_73(7),
      O => s_din(7)
    );
\s_din[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tmp_reg_73(5),
      I1 => tmp_reg_73(3),
      I2 => tmp_reg_73(1),
      I3 => tmp_reg_73(0),
      I4 => tmp_reg_73(2),
      I5 => tmp_reg_73(4),
      O => \s_din[7]_INST_0_i_1_n_0\
    );
s_write_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => s_full_n,
      O => s_write
    );
\tmp_reg_73_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(0),
      Q => tmp_reg_73(0),
      R => '0'
    );
\tmp_reg_73_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(1),
      Q => tmp_reg_73(1),
      R => '0'
    );
\tmp_reg_73_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(2),
      Q => tmp_reg_73(2),
      R => '0'
    );
\tmp_reg_73_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(3),
      Q => tmp_reg_73(3),
      R => '0'
    );
\tmp_reg_73_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(4),
      Q => tmp_reg_73(4),
      R => '0'
    );
\tmp_reg_73_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(5),
      Q => tmp_reg_73(5),
      R => '0'
    );
\tmp_reg_73_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(6),
      Q => tmp_reg_73(6),
      R => '0'
    );
\tmp_reg_73_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => e_dout(7),
      Q => tmp_reg_73(7),
      R => '0'
    );
end STRUCTURE;
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
begin
grp_Conversion_do_conversion_fu_56: entity work.Conversion_0_Conversion_do_conversion
     port map (
      E(0) => e_read,
      clk => clk,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n,
      reset => reset,
      s_din(7 downto 0) => s_din(7 downto 0),
      s_full_n => s_full_n,
      s_write => s_write
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
