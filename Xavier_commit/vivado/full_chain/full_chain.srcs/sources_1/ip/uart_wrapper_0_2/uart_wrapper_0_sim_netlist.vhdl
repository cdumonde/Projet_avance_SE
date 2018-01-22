-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Thu Jan 18 11:18:46 2018
-- Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               y:/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/git/Xavier_commit/vivado/full_chain/full_chain.srcs/sources_1/ip/uart_wrapper_0_2/uart_wrapper_0_sim_netlist.vhdl
-- Design      : uart_wrapper_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_fifo_w32_d192_A is
  port (
    FIFO_I_1_full_n : out STD_LOGIC;
    FIFO_I_1_empty_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \val_reg_80_reg[30]\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    e_dout : in STD_LOGIC_VECTOR ( 0 to 0 );
    push : in STD_LOGIC;
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    e_empty_n : in STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_fifo_w32_d192_A : entity is "fifo_w32_d192_A";
end uart_wrapper_0_fifo_w32_d192_A;

architecture STRUCTURE of uart_wrapper_0_fifo_w32_d192_A is
  signal \^fifo_i_1_empty_n\ : STD_LOGIC;
  signal \^fifo_i_1_full_n\ : STD_LOGIC;
  signal \dout_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[10]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[11]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[12]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[13]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[14]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[15]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[16]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[17]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[18]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[19]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[20]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[21]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[22]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[23]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[24]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[25]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[26]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[27]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[28]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[29]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[30]_i_2_n_0\ : STD_LOGIC;
  signal \dout_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[8]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[9]_i_1_n_0\ : STD_LOGIC;
  signal dout_valid_i_1_n_0 : STD_LOGIC;
  signal empty_n : STD_LOGIC;
  signal empty_n0 : STD_LOGIC;
  signal empty_n_reg_n_0 : STD_LOGIC;
  signal full_n0 : STD_LOGIC;
  signal full_n_i_2_n_0 : STD_LOGIC;
  signal full_n_i_3_n_0 : STD_LOGIC;
  signal mem_reg_i_10_n_0 : STD_LOGIC;
  signal mem_reg_i_11_n_0 : STD_LOGIC;
  signal mem_reg_i_12_n_0 : STD_LOGIC;
  signal \mem_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_3__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_4__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_5__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_6__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_7__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_8__0_n_0\ : STD_LOGIC;
  signal mem_reg_n_16 : STD_LOGIC;
  signal pop : STD_LOGIC;
  signal q_buf : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal q_tmp : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal raddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal show_ahead : STD_LOGIC;
  signal show_ahead0 : STD_LOGIC;
  signal show_ahead_i_2_n_0 : STD_LOGIC;
  signal show_ahead_i_3_n_0 : STD_LOGIC;
  signal usedw14_out : STD_LOGIC;
  signal \usedw[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_3_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_4_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_5_n_0\ : STD_LOGIC;
  signal \usedw[7]_i_2_n_0\ : STD_LOGIC;
  signal \usedw[7]_i_3_n_0\ : STD_LOGIC;
  signal \usedw[7]_i_4_n_0\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \usedw_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal waddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \waddr[7]_i_2_n_0\ : STD_LOGIC;
  signal wnext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_usedw_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_usedw_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout_buf[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout_buf[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout_buf[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout_buf[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout_buf[13]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout_buf[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout_buf[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout_buf[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout_buf[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout_buf[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout_buf[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout_buf[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout_buf[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout_buf[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout_buf[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout_buf[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout_buf[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dout_buf[25]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dout_buf[27]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout_buf[28]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout_buf[29]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dout_buf[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout_buf[30]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dout_buf[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout_buf[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout_buf[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout_buf[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout_buf[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout_buf[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout_buf[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of dout_valid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of full_n_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of full_n_i_3 : label is "soft_lutpair2";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 6144;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 31;
  attribute SOFT_HLUTNM of mem_reg_i_12 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of show_ahead_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of show_ahead_i_3 : label is "soft_lutpair3";
  attribute METHODOLOGY_DRC_VIOS of \usedw_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \usedw_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \waddr[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \waddr[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \waddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \waddr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \waddr[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \waddr[7]_i_1\ : label is "soft_lutpair19";
begin
  FIFO_I_1_empty_n <= \^fifo_i_1_empty_n\;
  FIFO_I_1_full_n <= \^fifo_i_1_full_n\;
\dout_buf[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(0),
      I1 => q_buf(0),
      I2 => show_ahead,
      O => \dout_buf[0]_i_1_n_0\
    );
\dout_buf[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(10),
      I1 => q_buf(10),
      I2 => show_ahead,
      O => \dout_buf[10]_i_1_n_0\
    );
\dout_buf[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(11),
      I1 => q_buf(11),
      I2 => show_ahead,
      O => \dout_buf[11]_i_1_n_0\
    );
\dout_buf[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(12),
      I1 => q_buf(12),
      I2 => show_ahead,
      O => \dout_buf[12]_i_1_n_0\
    );
\dout_buf[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(13),
      I1 => q_buf(13),
      I2 => show_ahead,
      O => \dout_buf[13]_i_1_n_0\
    );
\dout_buf[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(14),
      I1 => q_buf(14),
      I2 => show_ahead,
      O => \dout_buf[14]_i_1_n_0\
    );
\dout_buf[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(15),
      I1 => q_buf(15),
      I2 => show_ahead,
      O => \dout_buf[15]_i_1_n_0\
    );
\dout_buf[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(16),
      I1 => q_buf(16),
      I2 => show_ahead,
      O => \dout_buf[16]_i_1_n_0\
    );
\dout_buf[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(17),
      I1 => q_buf(17),
      I2 => show_ahead,
      O => \dout_buf[17]_i_1_n_0\
    );
\dout_buf[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(18),
      I1 => q_buf(18),
      I2 => show_ahead,
      O => \dout_buf[18]_i_1_n_0\
    );
\dout_buf[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(19),
      I1 => q_buf(19),
      I2 => show_ahead,
      O => \dout_buf[19]_i_1_n_0\
    );
\dout_buf[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(1),
      I1 => q_buf(1),
      I2 => show_ahead,
      O => \dout_buf[1]_i_1_n_0\
    );
\dout_buf[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(20),
      I1 => q_buf(20),
      I2 => show_ahead,
      O => \dout_buf[20]_i_1_n_0\
    );
\dout_buf[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(21),
      I1 => q_buf(21),
      I2 => show_ahead,
      O => \dout_buf[21]_i_1_n_0\
    );
\dout_buf[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(22),
      I1 => q_buf(22),
      I2 => show_ahead,
      O => \dout_buf[22]_i_1_n_0\
    );
\dout_buf[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(23),
      I1 => q_buf(23),
      I2 => show_ahead,
      O => \dout_buf[23]_i_1_n_0\
    );
\dout_buf[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(24),
      I1 => q_buf(24),
      I2 => show_ahead,
      O => \dout_buf[24]_i_1_n_0\
    );
\dout_buf[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(25),
      I1 => q_buf(25),
      I2 => show_ahead,
      O => \dout_buf[25]_i_1_n_0\
    );
\dout_buf[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(26),
      I1 => q_buf(26),
      I2 => show_ahead,
      O => \dout_buf[26]_i_1_n_0\
    );
\dout_buf[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(27),
      I1 => q_buf(27),
      I2 => show_ahead,
      O => \dout_buf[27]_i_1_n_0\
    );
\dout_buf[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(28),
      I1 => q_buf(28),
      I2 => show_ahead,
      O => \dout_buf[28]_i_1_n_0\
    );
\dout_buf[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(29),
      I1 => q_buf(29),
      I2 => show_ahead,
      O => \dout_buf[29]_i_1_n_0\
    );
\dout_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(2),
      I1 => q_buf(2),
      I2 => show_ahead,
      O => \dout_buf[2]_i_1_n_0\
    );
\dout_buf[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => empty_n_reg_n_0,
      I1 => Q(0),
      I2 => \^fifo_i_1_empty_n\,
      O => pop
    );
\dout_buf[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(30),
      I1 => q_buf(30),
      I2 => show_ahead,
      O => \dout_buf[30]_i_2_n_0\
    );
\dout_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(3),
      I1 => q_buf(3),
      I2 => show_ahead,
      O => \dout_buf[3]_i_1_n_0\
    );
\dout_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(4),
      I1 => q_buf(4),
      I2 => show_ahead,
      O => \dout_buf[4]_i_1_n_0\
    );
\dout_buf[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(5),
      I1 => q_buf(5),
      I2 => show_ahead,
      O => \dout_buf[5]_i_1_n_0\
    );
\dout_buf[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(6),
      I1 => q_buf(6),
      I2 => show_ahead,
      O => \dout_buf[6]_i_1_n_0\
    );
\dout_buf[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(7),
      I1 => q_buf(7),
      I2 => show_ahead,
      O => \dout_buf[7]_i_1_n_0\
    );
\dout_buf[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(8),
      I1 => q_buf(8),
      I2 => show_ahead,
      O => \dout_buf[8]_i_1_n_0\
    );
\dout_buf[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(9),
      I1 => q_buf(9),
      I2 => show_ahead,
      O => \dout_buf[9]_i_1_n_0\
    );
\dout_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[0]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(0),
      R => reset
    );
\dout_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[10]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(10),
      R => reset
    );
\dout_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[11]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(11),
      R => reset
    );
\dout_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[12]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(12),
      R => reset
    );
\dout_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[13]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(13),
      R => reset
    );
\dout_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[14]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(14),
      R => reset
    );
\dout_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[15]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(15),
      R => reset
    );
\dout_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[16]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(16),
      R => reset
    );
\dout_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[17]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(17),
      R => reset
    );
\dout_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[18]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(18),
      R => reset
    );
\dout_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[19]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(19),
      R => reset
    );
\dout_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[1]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(1),
      R => reset
    );
\dout_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[20]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(20),
      R => reset
    );
\dout_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[21]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(21),
      R => reset
    );
\dout_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[22]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(22),
      R => reset
    );
\dout_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[23]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(23),
      R => reset
    );
\dout_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[24]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(24),
      R => reset
    );
\dout_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[25]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(25),
      R => reset
    );
\dout_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[26]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(26),
      R => reset
    );
\dout_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[27]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(27),
      R => reset
    );
\dout_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[28]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(28),
      R => reset
    );
\dout_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[29]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(29),
      R => reset
    );
\dout_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[2]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(2),
      R => reset
    );
\dout_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[30]_i_2_n_0\,
      Q => \val_reg_80_reg[30]\(30),
      R => reset
    );
\dout_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[3]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(3),
      R => reset
    );
\dout_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[4]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(4),
      R => reset
    );
\dout_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[5]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(5),
      R => reset
    );
\dout_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[6]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(6),
      R => reset
    );
\dout_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[7]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(7),
      R => reset
    );
\dout_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[8]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(8),
      R => reset
    );
\dout_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[9]_i_1_n_0\,
      Q => \val_reg_80_reg[30]\(9),
      R => reset
    );
dout_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^fifo_i_1_empty_n\,
      I1 => Q(0),
      I2 => empty_n_reg_n_0,
      O => dout_valid_i_1_n_0
    );
dout_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => dout_valid_i_1_n_0,
      Q => \^fifo_i_1_empty_n\,
      R => reset
    );
\empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F807F80808080"
    )
        port map (
      I0 => e_empty_n,
      I1 => \^fifo_i_1_full_n\,
      I2 => \ap_CS_fsm_reg[4]\(0),
      I3 => \^fifo_i_1_empty_n\,
      I4 => Q(0),
      I5 => empty_n_reg_n_0,
      O => empty_n
    );
\empty_n_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => usedw14_out,
      I1 => show_ahead_i_3_n_0,
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(1),
      I4 => \usedw_reg__0\(3),
      I5 => \usedw_reg__0\(2),
      O => empty_n0
    );
empty_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080808080"
    )
        port map (
      I0 => e_empty_n,
      I1 => \^fifo_i_1_full_n\,
      I2 => \ap_CS_fsm_reg[4]\(0),
      I3 => \^fifo_i_1_empty_n\,
      I4 => Q(0),
      I5 => empty_n_reg_n_0,
      O => usedw14_out
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => empty_n0,
      Q => empty_n_reg_n_0,
      R => reset
    );
\full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A8A8A855A855A8"
    )
        port map (
      I0 => push,
      I1 => full_n_i_2_n_0,
      I2 => full_n_i_3_n_0,
      I3 => empty_n_reg_n_0,
      I4 => Q(0),
      I5 => \^fifo_i_1_empty_n\,
      O => full_n0
    );
full_n_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \usedw_reg__0\(5),
      I1 => \usedw_reg__0\(6),
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(7),
      O => full_n_i_2_n_0
    );
full_n_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \usedw_reg__0\(2),
      I1 => \usedw_reg__0\(1),
      I2 => \usedw_reg__0\(4),
      I3 => \usedw_reg__0\(3),
      O => full_n_i_3_n_0
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => full_n0,
      Q => \^fifo_i_1_full_n\,
      S => reset
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12) => \mem_reg_i_1__0_n_0\,
      ADDRARDADDR(11) => \mem_reg_i_2__0_n_0\,
      ADDRARDADDR(10) => \mem_reg_i_3__0_n_0\,
      ADDRARDADDR(9) => \mem_reg_i_4__0_n_0\,
      ADDRARDADDR(8) => \mem_reg_i_5__0_n_0\,
      ADDRARDADDR(7) => \mem_reg_i_6__0_n_0\,
      ADDRARDADDR(6) => \mem_reg_i_7__0_n_0\,
      ADDRARDADDR(5) => \mem_reg_i_8__0_n_0\,
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12 downto 5) => waddr(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 0) => D(15 downto 0),
      DIBDI(15) => e_dout(0),
      DIBDI(14 downto 0) => D(30 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => q_buf(15 downto 0),
      DOBDO(15) => mem_reg_n_16,
      DOBDO(14 downto 0) => q_buf(30 downto 16),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => \^fifo_i_1_full_n\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => push,
      WEBWE(2) => push,
      WEBWE(1) => push,
      WEBWE(0) => push
    );
mem_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mem_reg_i_12_n_0,
      I1 => raddr(2),
      I2 => raddr(3),
      I3 => raddr(4),
      I4 => raddr(5),
      O => mem_reg_i_10_n_0
    );
mem_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => raddr(3),
      I1 => raddr(0),
      I2 => raddr(1),
      I3 => raddr(2),
      O => mem_reg_i_11_n_0
    );
mem_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0000000"
    )
        port map (
      I0 => \^fifo_i_1_empty_n\,
      I1 => Q(0),
      I2 => empty_n_reg_n_0,
      I3 => raddr(1),
      I4 => raddr(0),
      O => mem_reg_i_12_n_0
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => raddr(7),
      I1 => raddr(6),
      I2 => mem_reg_i_10_n_0,
      O => \mem_reg_i_1__0_n_0\
    );
\mem_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A1"
    )
        port map (
      I0 => raddr(6),
      I1 => raddr(7),
      I2 => mem_reg_i_10_n_0,
      O => \mem_reg_i_2__0_n_0\
    );
\mem_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F80008080"
    )
        port map (
      I0 => mem_reg_i_11_n_0,
      I1 => raddr(4),
      I2 => empty_n_reg_n_0,
      I3 => Q(0),
      I4 => \^fifo_i_1_empty_n\,
      I5 => raddr(5),
      O => \mem_reg_i_3__0_n_0\
    );
\mem_reg_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => raddr(2),
      I1 => raddr(1),
      I2 => raddr(0),
      I3 => raddr(3),
      I4 => pop,
      I5 => raddr(4),
      O => \mem_reg_i_4__0_n_0\
    );
\mem_reg_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => pop,
      I4 => raddr(3),
      O => \mem_reg_i_5__0_n_0\
    );
\mem_reg_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA6AAA6AAA"
    )
        port map (
      I0 => raddr(2),
      I1 => raddr(0),
      I2 => raddr(1),
      I3 => empty_n_reg_n_0,
      I4 => Q(0),
      I5 => \^fifo_i_1_empty_n\,
      O => \mem_reg_i_6__0_n_0\
    );
\mem_reg_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A66AAAA"
    )
        port map (
      I0 => raddr(1),
      I1 => empty_n_reg_n_0,
      I2 => Q(0),
      I3 => \^fifo_i_1_empty_n\,
      I4 => raddr(0),
      O => \mem_reg_i_7__0_n_0\
    );
\mem_reg_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => raddr(0),
      I1 => \^fifo_i_1_empty_n\,
      I2 => Q(0),
      I3 => empty_n_reg_n_0,
      O => \mem_reg_i_8__0_n_0\
    );
\q_tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(0),
      Q => q_tmp(0),
      R => reset
    );
\q_tmp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(10),
      Q => q_tmp(10),
      R => reset
    );
\q_tmp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(11),
      Q => q_tmp(11),
      R => reset
    );
\q_tmp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(12),
      Q => q_tmp(12),
      R => reset
    );
\q_tmp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(13),
      Q => q_tmp(13),
      R => reset
    );
\q_tmp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(14),
      Q => q_tmp(14),
      R => reset
    );
\q_tmp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(15),
      Q => q_tmp(15),
      R => reset
    );
\q_tmp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(16),
      Q => q_tmp(16),
      R => reset
    );
\q_tmp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(17),
      Q => q_tmp(17),
      R => reset
    );
\q_tmp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(18),
      Q => q_tmp(18),
      R => reset
    );
\q_tmp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(19),
      Q => q_tmp(19),
      R => reset
    );
\q_tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(1),
      Q => q_tmp(1),
      R => reset
    );
\q_tmp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(20),
      Q => q_tmp(20),
      R => reset
    );
\q_tmp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(21),
      Q => q_tmp(21),
      R => reset
    );
\q_tmp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(22),
      Q => q_tmp(22),
      R => reset
    );
\q_tmp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(23),
      Q => q_tmp(23),
      R => reset
    );
\q_tmp_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(24),
      Q => q_tmp(24),
      R => reset
    );
\q_tmp_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(25),
      Q => q_tmp(25),
      R => reset
    );
\q_tmp_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(26),
      Q => q_tmp(26),
      R => reset
    );
\q_tmp_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(27),
      Q => q_tmp(27),
      R => reset
    );
\q_tmp_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(28),
      Q => q_tmp(28),
      R => reset
    );
\q_tmp_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(29),
      Q => q_tmp(29),
      R => reset
    );
\q_tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(2),
      Q => q_tmp(2),
      R => reset
    );
\q_tmp_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(30),
      Q => q_tmp(30),
      R => reset
    );
\q_tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(3),
      Q => q_tmp(3),
      R => reset
    );
\q_tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(4),
      Q => q_tmp(4),
      R => reset
    );
\q_tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(5),
      Q => q_tmp(5),
      R => reset
    );
\q_tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(6),
      Q => q_tmp(6),
      R => reset
    );
\q_tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(7),
      Q => q_tmp(7),
      R => reset
    );
\q_tmp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(8),
      Q => q_tmp(8),
      R => reset
    );
\q_tmp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => D(9),
      Q => q_tmp(9),
      R => reset
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_8__0_n_0\,
      Q => raddr(0),
      R => reset
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_7__0_n_0\,
      Q => raddr(1),
      R => reset
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_6__0_n_0\,
      Q => raddr(2),
      R => reset
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_5__0_n_0\,
      Q => raddr(3),
      R => reset
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_4__0_n_0\,
      Q => raddr(4),
      R => reset
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_3__0_n_0\,
      Q => raddr(5),
      R => reset
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_2__0_n_0\,
      Q => raddr(6),
      R => reset
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \mem_reg_i_1__0_n_0\,
      Q => raddr(7),
      R => reset
    );
\show_ahead_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000D0000"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      I1 => pop,
      I2 => show_ahead_i_2_n_0,
      I3 => show_ahead_i_3_n_0,
      I4 => push,
      O => show_ahead0
    );
show_ahead_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => \usedw_reg__0\(3),
      I2 => \usedw_reg__0\(2),
      O => show_ahead_i_2_n_0
    );
show_ahead_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \usedw_reg__0\(7),
      I1 => \usedw_reg__0\(6),
      I2 => \usedw_reg__0\(5),
      I3 => \usedw_reg__0\(4),
      O => show_ahead_i_3_n_0
    );
show_ahead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => show_ahead0,
      Q => show_ahead,
      R => reset
    );
\usedw[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      O => \usedw[0]_i_1__0_n_0\
    );
\usedw[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(3),
      I1 => \usedw_reg__0\(4),
      O => \usedw[4]_i_2__0_n_0\
    );
\usedw[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(2),
      I1 => \usedw_reg__0\(3),
      O => \usedw[4]_i_3_n_0\
    );
\usedw[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => \usedw_reg__0\(2),
      O => \usedw[4]_i_4_n_0\
    );
\usedw[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A665555"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => empty_n_reg_n_0,
      I2 => Q(0),
      I3 => \^fifo_i_1_empty_n\,
      I4 => push,
      O => \usedw[4]_i_5_n_0\
    );
\usedw[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(6),
      I1 => \usedw_reg__0\(7),
      O => \usedw[7]_i_2_n_0\
    );
\usedw[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(5),
      I1 => \usedw_reg__0\(6),
      O => \usedw[7]_i_3_n_0\
    );
\usedw[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(4),
      I1 => \usedw_reg__0\(5),
      O => \usedw[7]_i_4_n_0\
    );
\usedw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw[0]_i_1__0_n_0\,
      Q => \usedw_reg__0\(0),
      R => reset
    );
\usedw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1_n_7\,
      Q => \usedw_reg__0\(1),
      R => reset
    );
\usedw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1_n_6\,
      Q => \usedw_reg__0\(2),
      R => reset
    );
\usedw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1_n_5\,
      Q => \usedw_reg__0\(3),
      R => reset
    );
\usedw_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1_n_4\,
      Q => \usedw_reg__0\(4),
      R => reset
    );
\usedw_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \usedw_reg[4]_i_1_n_0\,
      CO(2) => \usedw_reg[4]_i_1_n_1\,
      CO(1) => \usedw_reg[4]_i_1_n_2\,
      CO(0) => \usedw_reg[4]_i_1_n_3\,
      CYINIT => \usedw_reg__0\(0),
      DI(3 downto 1) => \usedw_reg__0\(3 downto 1),
      DI(0) => usedw14_out,
      O(3) => \usedw_reg[4]_i_1_n_4\,
      O(2) => \usedw_reg[4]_i_1_n_5\,
      O(1) => \usedw_reg[4]_i_1_n_6\,
      O(0) => \usedw_reg[4]_i_1_n_7\,
      S(3) => \usedw[4]_i_2__0_n_0\,
      S(2) => \usedw[4]_i_3_n_0\,
      S(1) => \usedw[4]_i_4_n_0\,
      S(0) => \usedw[4]_i_5_n_0\
    );
\usedw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[7]_i_1_n_7\,
      Q => \usedw_reg__0\(5),
      R => reset
    );
\usedw_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[7]_i_1_n_6\,
      Q => \usedw_reg__0\(6),
      R => reset
    );
\usedw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[7]_i_1_n_5\,
      Q => \usedw_reg__0\(7),
      R => reset
    );
\usedw_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \usedw_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_usedw_reg[7]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \usedw_reg[7]_i_1_n_2\,
      CO(0) => \usedw_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \usedw_reg__0\(5 downto 4),
      O(3) => \NLW_usedw_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2) => \usedw_reg[7]_i_1_n_5\,
      O(1) => \usedw_reg[7]_i_1_n_6\,
      O(0) => \usedw_reg[7]_i_1_n_7\,
      S(3) => '0',
      S(2) => \usedw[7]_i_2_n_0\,
      S(1) => \usedw[7]_i_3_n_0\,
      S(0) => \usedw[7]_i_4_n_0\
    );
\val_reg_80[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fifo_i_1_empty_n\,
      I1 => Q(0),
      O => E(0)
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr(0),
      O => wnext(0)
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      O => wnext(1)
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      O => wnext(2)
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(0),
      I2 => waddr(1),
      I3 => waddr(2),
      O => wnext(3)
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(1),
      I3 => waddr(0),
      I4 => waddr(3),
      O => wnext(4)
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => waddr(5),
      I1 => waddr(3),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(2),
      I5 => waddr(4),
      O => wnext(5)
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C1"
    )
        port map (
      I0 => waddr(7),
      I1 => \waddr[7]_i_2_n_0\,
      I2 => waddr(6),
      O => wnext(6)
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => waddr(7),
      I1 => waddr(6),
      I2 => \waddr[7]_i_2_n_0\,
      O => wnext(7)
    );
\waddr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr(5),
      I1 => waddr(4),
      I2 => waddr(2),
      I3 => waddr(1),
      I4 => waddr(0),
      I5 => waddr(3),
      O => \waddr[7]_i_2_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(0),
      Q => waddr(0),
      R => reset
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(1),
      Q => waddr(1),
      R => reset
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(2),
      Q => waddr(2),
      R => reset
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(3),
      Q => waddr(3),
      R => reset
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(4),
      Q => waddr(4),
      R => reset
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(5),
      Q => waddr(5),
      R => reset
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(6),
      Q => waddr(6),
      R => reset
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => push,
      D => wnext(7),
      Q => waddr(7),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_fifo_w32_d192_A_0 is
  port (
    FIFO_O_1_full_n : out STD_LOGIC;
    FIFO_O_1_empty_n : out STD_LOGIC;
    \tmp_7_reg_142_reg[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    \ap_CS_fsm_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_fifo_w32_d192_A_0 : entity is "fifo_w32_d192_A";
end uart_wrapper_0_fifo_w32_d192_A_0;

architecture STRUCTURE of uart_wrapper_0_fifo_w32_d192_A_0 is
  signal \^fifo_o_1_empty_n\ : STD_LOGIC;
  signal \^fifo_o_1_full_n\ : STD_LOGIC;
  signal \dout_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[10]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[11]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[12]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[13]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[14]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[15]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[16]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[17]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[18]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[19]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[20]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[21]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[22]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[23]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[24]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[25]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[26]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[27]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[28]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[29]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[30]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[31]_i_2_n_0\ : STD_LOGIC;
  signal \dout_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[8]_i_1_n_0\ : STD_LOGIC;
  signal \dout_buf[9]_i_1_n_0\ : STD_LOGIC;
  signal \dout_valid_i_1__0_n_0\ : STD_LOGIC;
  signal empty_n : STD_LOGIC;
  signal empty_n_i_2_n_0 : STD_LOGIC;
  signal empty_n_reg_n_0 : STD_LOGIC;
  signal full_n_i_1_n_0 : STD_LOGIC;
  signal \full_n_i_2__0_n_0\ : STD_LOGIC;
  signal \full_n_i_3__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_10__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_11__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_12__0_n_0\ : STD_LOGIC;
  signal mem_reg_i_13_n_0 : STD_LOGIC;
  signal mem_reg_i_14_n_0 : STD_LOGIC;
  signal mem_reg_i_1_n_0 : STD_LOGIC;
  signal mem_reg_i_2_n_0 : STD_LOGIC;
  signal mem_reg_i_3_n_0 : STD_LOGIC;
  signal mem_reg_i_4_n_0 : STD_LOGIC;
  signal mem_reg_i_5_n_0 : STD_LOGIC;
  signal mem_reg_i_6_n_0 : STD_LOGIC;
  signal mem_reg_i_7_n_0 : STD_LOGIC;
  signal mem_reg_i_8_n_0 : STD_LOGIC;
  signal pop : STD_LOGIC;
  signal q_buf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \q_tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[16]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[17]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[18]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[19]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[20]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[21]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[22]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[23]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[24]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[25]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[26]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[27]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[28]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[29]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[30]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[31]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_tmp_reg_n_0_[9]\ : STD_LOGIC;
  signal \raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[7]\ : STD_LOGIC;
  signal show_ahead0 : STD_LOGIC;
  signal \show_ahead_i_2__0_n_0\ : STD_LOGIC;
  signal \show_ahead_i_3__0_n_0\ : STD_LOGIC;
  signal show_ahead_reg_n_0 : STD_LOGIC;
  signal usedw14_out : STD_LOGIC;
  signal \usedw[0]_i_1_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \usedw[4]_i_6_n_0\ : STD_LOGIC;
  signal \usedw[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \usedw[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \usedw[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \usedw_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \usedw_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \usedw_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal waddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \waddr[7]_i_2__0_n_0\ : STD_LOGIC;
  signal wnext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_usedw_reg[7]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_usedw_reg[7]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout_buf[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dout_buf[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dout_buf[11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dout_buf[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dout_buf[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dout_buf[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dout_buf[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dout_buf[16]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dout_buf[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dout_buf[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dout_buf[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dout_buf[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dout_buf[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dout_buf[21]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dout_buf[22]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dout_buf[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dout_buf[24]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dout_buf[25]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dout_buf[26]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dout_buf[27]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dout_buf[28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dout_buf[29]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dout_buf[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dout_buf[30]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dout_buf[31]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dout_buf[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dout_buf[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dout_buf[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dout_buf[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dout_buf[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dout_buf[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dout_buf[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of empty_n_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \full_n_i_2__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \full_n_i_3__0\ : label is "soft_lutpair24";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 6144;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 31;
  attribute SOFT_HLUTNM of \mem_reg_i_12__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \raddr[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \raddr[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \show_ahead_i_2__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \show_ahead_i_3__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \usedw[0]_i_1\ : label is "soft_lutpair21";
  attribute METHODOLOGY_DRC_VIOS of \usedw_reg[4]_i_1__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \usedw_reg[7]_i_1__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \waddr[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \waddr[2]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \waddr[3]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \waddr[4]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \waddr[6]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \waddr[7]_i_1__0\ : label is "soft_lutpair42";
begin
  FIFO_O_1_empty_n <= \^fifo_o_1_empty_n\;
  FIFO_O_1_full_n <= \^fifo_o_1_full_n\;
\dout_buf[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[0]\,
      I1 => q_buf(0),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[0]_i_1_n_0\
    );
\dout_buf[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[10]\,
      I1 => q_buf(10),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[10]_i_1_n_0\
    );
\dout_buf[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[11]\,
      I1 => q_buf(11),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[11]_i_1_n_0\
    );
\dout_buf[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[12]\,
      I1 => q_buf(12),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[12]_i_1_n_0\
    );
\dout_buf[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[13]\,
      I1 => q_buf(13),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[13]_i_1_n_0\
    );
\dout_buf[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[14]\,
      I1 => q_buf(14),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[14]_i_1_n_0\
    );
\dout_buf[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[15]\,
      I1 => q_buf(15),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[15]_i_1_n_0\
    );
\dout_buf[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[16]\,
      I1 => q_buf(16),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[16]_i_1_n_0\
    );
\dout_buf[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[17]\,
      I1 => q_buf(17),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[17]_i_1_n_0\
    );
\dout_buf[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[18]\,
      I1 => q_buf(18),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[18]_i_1_n_0\
    );
\dout_buf[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[19]\,
      I1 => q_buf(19),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[19]_i_1_n_0\
    );
\dout_buf[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[1]\,
      I1 => q_buf(1),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[1]_i_1_n_0\
    );
\dout_buf[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[20]\,
      I1 => q_buf(20),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[20]_i_1_n_0\
    );
\dout_buf[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[21]\,
      I1 => q_buf(21),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[21]_i_1_n_0\
    );
\dout_buf[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[22]\,
      I1 => q_buf(22),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[22]_i_1_n_0\
    );
\dout_buf[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[23]\,
      I1 => q_buf(23),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[23]_i_1_n_0\
    );
\dout_buf[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[24]\,
      I1 => q_buf(24),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[24]_i_1_n_0\
    );
\dout_buf[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[25]\,
      I1 => q_buf(25),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[25]_i_1_n_0\
    );
\dout_buf[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[26]\,
      I1 => q_buf(26),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[26]_i_1_n_0\
    );
\dout_buf[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[27]\,
      I1 => q_buf(27),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[27]_i_1_n_0\
    );
\dout_buf[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[28]\,
      I1 => q_buf(28),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[28]_i_1_n_0\
    );
\dout_buf[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[29]\,
      I1 => q_buf(29),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[29]_i_1_n_0\
    );
\dout_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[2]\,
      I1 => q_buf(2),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[2]_i_1_n_0\
    );
\dout_buf[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[30]\,
      I1 => q_buf(30),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[30]_i_1_n_0\
    );
\dout_buf[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A0A"
    )
        port map (
      I0 => empty_n_reg_n_0,
      I1 => \ap_CS_fsm_reg[1]\(0),
      I2 => \^fifo_o_1_empty_n\,
      I3 => s_full_n,
      O => pop
    );
\dout_buf[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[31]\,
      I1 => q_buf(31),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[31]_i_2_n_0\
    );
\dout_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[3]\,
      I1 => q_buf(3),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[3]_i_1_n_0\
    );
\dout_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[4]\,
      I1 => q_buf(4),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[4]_i_1_n_0\
    );
\dout_buf[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[5]\,
      I1 => q_buf(5),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[5]_i_1_n_0\
    );
\dout_buf[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[6]\,
      I1 => q_buf(6),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[6]_i_1_n_0\
    );
\dout_buf[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[7]\,
      I1 => q_buf(7),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[7]_i_1_n_0\
    );
\dout_buf[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[8]\,
      I1 => q_buf(8),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[8]_i_1_n_0\
    );
\dout_buf[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \q_tmp_reg_n_0_[9]\,
      I1 => q_buf(9),
      I2 => show_ahead_reg_n_0,
      O => \dout_buf[9]_i_1_n_0\
    );
\dout_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[0]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(0),
      R => reset
    );
\dout_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[10]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(10),
      R => reset
    );
\dout_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[11]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(11),
      R => reset
    );
\dout_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[12]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(12),
      R => reset
    );
\dout_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[13]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(13),
      R => reset
    );
\dout_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[14]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(14),
      R => reset
    );
\dout_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[15]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(15),
      R => reset
    );
\dout_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[16]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(16),
      R => reset
    );
\dout_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[17]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(17),
      R => reset
    );
\dout_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[18]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(18),
      R => reset
    );
\dout_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[19]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(19),
      R => reset
    );
\dout_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[1]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(1),
      R => reset
    );
\dout_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[20]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(20),
      R => reset
    );
\dout_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[21]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(21),
      R => reset
    );
\dout_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[22]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(22),
      R => reset
    );
\dout_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[23]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(23),
      R => reset
    );
\dout_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[24]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(24),
      R => reset
    );
\dout_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[25]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(25),
      R => reset
    );
\dout_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[26]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(26),
      R => reset
    );
\dout_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[27]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(27),
      R => reset
    );
\dout_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[28]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(28),
      R => reset
    );
\dout_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[29]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(29),
      R => reset
    );
\dout_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[2]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(2),
      R => reset
    );
\dout_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[30]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(30),
      R => reset
    );
\dout_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[31]_i_2_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(31),
      R => reset
    );
\dout_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[3]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(3),
      R => reset
    );
\dout_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[4]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(4),
      R => reset
    );
\dout_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[5]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(5),
      R => reset
    );
\dout_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[6]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(6),
      R => reset
    );
\dout_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[7]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(7),
      R => reset
    );
\dout_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[8]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(8),
      R => reset
    );
\dout_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \dout_buf[9]_i_1_n_0\,
      Q => \tmp_7_reg_142_reg[7]\(9),
      R => reset
    );
\dout_valid_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4C"
    )
        port map (
      I0 => s_full_n,
      I1 => \^fifo_o_1_empty_n\,
      I2 => \ap_CS_fsm_reg[1]\(0),
      I3 => empty_n_reg_n_0,
      O => \dout_valid_i_1__0_n_0\
    );
dout_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dout_valid_i_1__0_n_0\,
      Q => \^fifo_o_1_empty_n\,
      R => reset
    );
empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7877887788888888"
    )
        port map (
      I0 => \^fifo_o_1_full_n\,
      I1 => \ap_CS_fsm_reg[6]\(0),
      I2 => s_full_n,
      I3 => \^fifo_o_1_empty_n\,
      I4 => \ap_CS_fsm_reg[1]\(0),
      I5 => empty_n_reg_n_0,
      O => empty_n
    );
empty_n_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF40FF"
    )
        port map (
      I0 => pop,
      I1 => \ap_CS_fsm_reg[6]\(0),
      I2 => \^fifo_o_1_full_n\,
      I3 => \usedw_reg__0\(0),
      I4 => \show_ahead_i_2__0_n_0\,
      O => empty_n_i_2_n_0
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => empty_n_i_2_n_0,
      Q => empty_n_reg_n_0,
      R => reset
    );
full_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFD000"
    )
        port map (
      I0 => \full_n_i_2__0_n_0\,
      I1 => \full_n_i_3__0_n_0\,
      I2 => \^fifo_o_1_full_n\,
      I3 => \ap_CS_fsm_reg[6]\(0),
      I4 => pop,
      O => full_n_i_1_n_0
    );
\full_n_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \usedw_reg__0\(4),
      I1 => \usedw_reg__0\(3),
      I2 => \usedw_reg__0\(2),
      I3 => \usedw_reg__0\(1),
      O => \full_n_i_2__0_n_0\
    );
\full_n_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \usedw_reg__0\(5),
      I1 => \usedw_reg__0\(6),
      I2 => \usedw_reg__0\(0),
      I3 => \usedw_reg__0\(7),
      O => \full_n_i_3__0_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => full_n_i_1_n_0,
      Q => \^fifo_o_1_full_n\,
      S => reset
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12) => mem_reg_i_1_n_0,
      ADDRARDADDR(11) => mem_reg_i_2_n_0,
      ADDRARDADDR(10) => mem_reg_i_3_n_0,
      ADDRARDADDR(9) => mem_reg_i_4_n_0,
      ADDRARDADDR(8) => mem_reg_i_5_n_0,
      ADDRARDADDR(7) => mem_reg_i_6_n_0,
      ADDRARDADDR(6) => mem_reg_i_7_n_0,
      ADDRARDADDR(5) => mem_reg_i_8_n_0,
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12 downto 5) => waddr(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 0) => Q(15 downto 0),
      DIBDI(15 downto 0) => Q(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => q_buf(15 downto 0),
      DOBDO(15 downto 0) => q_buf(31 downto 16),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => \^fifo_o_1_full_n\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
mem_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \mem_reg_i_10__0_n_0\,
      I1 => \raddr_reg_n_0_[6]\,
      I2 => \mem_reg_i_11__0_n_0\,
      I3 => pop,
      I4 => \raddr_reg_n_0_[7]\,
      O => mem_reg_i_1_n_0
    );
\mem_reg_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => \raddr_reg_n_0_[6]\,
      I1 => \raddr_reg_n_0_[1]\,
      I2 => mem_reg_i_13_n_0,
      I3 => \raddr_reg_n_0_[0]\,
      I4 => \raddr_reg_n_0_[7]\,
      I5 => mem_reg_i_14_n_0,
      O => \mem_reg_i_10__0_n_0\
    );
\mem_reg_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \raddr_reg_n_0_[1]\,
      I1 => \raddr_reg_n_0_[0]\,
      I2 => \raddr_reg_n_0_[4]\,
      I3 => \raddr_reg_n_0_[5]\,
      I4 => \raddr_reg_n_0_[2]\,
      I5 => \raddr_reg_n_0_[3]\,
      O => \mem_reg_i_11__0_n_0\
    );
\mem_reg_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \raddr_reg_n_0_[0]\,
      I1 => \raddr_reg_n_0_[1]\,
      O => \mem_reg_i_12__0_n_0\
    );
mem_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \raddr_reg_n_0_[2]\,
      I1 => \raddr_reg_n_0_[3]\,
      O => mem_reg_i_13_n_0
    );
mem_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \raddr_reg_n_0_[4]\,
      I1 => \raddr_reg_n_0_[5]\,
      O => mem_reg_i_14_n_0
    );
mem_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \mem_reg_i_10__0_n_0\,
      I1 => \mem_reg_i_11__0_n_0\,
      I2 => pop,
      I3 => \raddr_reg_n_0_[6]\,
      O => mem_reg_i_2_n_0
    );
mem_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \mem_reg_i_12__0_n_0\,
      I1 => \raddr_reg_n_0_[3]\,
      I2 => \raddr_reg_n_0_[2]\,
      I3 => \raddr_reg_n_0_[4]\,
      I4 => pop,
      I5 => \raddr_reg_n_0_[5]\,
      O => mem_reg_i_3_n_0
    );
mem_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \raddr_reg_n_0_[2]\,
      I1 => \raddr_reg_n_0_[3]\,
      I2 => \raddr_reg_n_0_[0]\,
      I3 => \raddr_reg_n_0_[1]\,
      I4 => pop,
      I5 => \raddr_reg_n_0_[4]\,
      O => mem_reg_i_4_n_0
    );
mem_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \raddr_reg_n_0_[0]\,
      I1 => \raddr_reg_n_0_[1]\,
      I2 => \raddr_reg_n_0_[2]\,
      I3 => pop,
      I4 => \raddr_reg_n_0_[3]\,
      O => mem_reg_i_5_n_0
    );
mem_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \raddr_reg_n_0_[1]\,
      I1 => \raddr_reg_n_0_[0]\,
      I2 => pop,
      I3 => \raddr_reg_n_0_[2]\,
      O => mem_reg_i_6_n_0
    );
mem_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FF7780880088"
    )
        port map (
      I0 => \raddr_reg_n_0_[0]\,
      I1 => empty_n_reg_n_0,
      I2 => \ap_CS_fsm_reg[1]\(0),
      I3 => \^fifo_o_1_empty_n\,
      I4 => s_full_n,
      I5 => \raddr_reg_n_0_[1]\,
      O => mem_reg_i_7_n_0
    );
mem_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65A5AAAA"
    )
        port map (
      I0 => \raddr_reg_n_0_[0]\,
      I1 => s_full_n,
      I2 => \^fifo_o_1_empty_n\,
      I3 => \ap_CS_fsm_reg[1]\(0),
      I4 => empty_n_reg_n_0,
      O => mem_reg_i_8_n_0
    );
\q_tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(0),
      Q => \q_tmp_reg_n_0_[0]\,
      R => reset
    );
\q_tmp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(10),
      Q => \q_tmp_reg_n_0_[10]\,
      R => reset
    );
\q_tmp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(11),
      Q => \q_tmp_reg_n_0_[11]\,
      R => reset
    );
\q_tmp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(12),
      Q => \q_tmp_reg_n_0_[12]\,
      R => reset
    );
\q_tmp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(13),
      Q => \q_tmp_reg_n_0_[13]\,
      R => reset
    );
\q_tmp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(14),
      Q => \q_tmp_reg_n_0_[14]\,
      R => reset
    );
\q_tmp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(15),
      Q => \q_tmp_reg_n_0_[15]\,
      R => reset
    );
\q_tmp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(16),
      Q => \q_tmp_reg_n_0_[16]\,
      R => reset
    );
\q_tmp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(17),
      Q => \q_tmp_reg_n_0_[17]\,
      R => reset
    );
\q_tmp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(18),
      Q => \q_tmp_reg_n_0_[18]\,
      R => reset
    );
\q_tmp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(19),
      Q => \q_tmp_reg_n_0_[19]\,
      R => reset
    );
\q_tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(1),
      Q => \q_tmp_reg_n_0_[1]\,
      R => reset
    );
\q_tmp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(20),
      Q => \q_tmp_reg_n_0_[20]\,
      R => reset
    );
\q_tmp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(21),
      Q => \q_tmp_reg_n_0_[21]\,
      R => reset
    );
\q_tmp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(22),
      Q => \q_tmp_reg_n_0_[22]\,
      R => reset
    );
\q_tmp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(23),
      Q => \q_tmp_reg_n_0_[23]\,
      R => reset
    );
\q_tmp_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(24),
      Q => \q_tmp_reg_n_0_[24]\,
      R => reset
    );
\q_tmp_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(25),
      Q => \q_tmp_reg_n_0_[25]\,
      R => reset
    );
\q_tmp_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(26),
      Q => \q_tmp_reg_n_0_[26]\,
      R => reset
    );
\q_tmp_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(27),
      Q => \q_tmp_reg_n_0_[27]\,
      R => reset
    );
\q_tmp_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(28),
      Q => \q_tmp_reg_n_0_[28]\,
      R => reset
    );
\q_tmp_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(29),
      Q => \q_tmp_reg_n_0_[29]\,
      R => reset
    );
\q_tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(2),
      Q => \q_tmp_reg_n_0_[2]\,
      R => reset
    );
\q_tmp_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(30),
      Q => \q_tmp_reg_n_0_[30]\,
      R => reset
    );
\q_tmp_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(31),
      Q => \q_tmp_reg_n_0_[31]\,
      R => reset
    );
\q_tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(3),
      Q => \q_tmp_reg_n_0_[3]\,
      R => reset
    );
\q_tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(4),
      Q => \q_tmp_reg_n_0_[4]\,
      R => reset
    );
\q_tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(5),
      Q => \q_tmp_reg_n_0_[5]\,
      R => reset
    );
\q_tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(6),
      Q => \q_tmp_reg_n_0_[6]\,
      R => reset
    );
\q_tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(7),
      Q => \q_tmp_reg_n_0_[7]\,
      R => reset
    );
\q_tmp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(8),
      Q => \q_tmp_reg_n_0_[8]\,
      R => reset
    );
\q_tmp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => Q(9),
      Q => \q_tmp_reg_n_0_[9]\,
      R => reset
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raddr_reg_n_0_[0]\,
      I1 => \raddr_reg_n_0_[1]\,
      O => \raddr[1]_i_1_n_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \raddr_reg_n_0_[2]\,
      I1 => \raddr_reg_n_0_[1]\,
      I2 => \raddr_reg_n_0_[0]\,
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \raddr_reg_n_0_[3]\,
      I1 => \raddr_reg_n_0_[0]\,
      I2 => \raddr_reg_n_0_[1]\,
      I3 => \raddr_reg_n_0_[2]\,
      O => \raddr[3]_i_1_n_0\
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \raddr_reg_n_0_[4]\,
      I1 => \raddr_reg_n_0_[2]\,
      I2 => \raddr_reg_n_0_[3]\,
      I3 => \raddr_reg_n_0_[0]\,
      I4 => \raddr_reg_n_0_[1]\,
      O => \raddr[4]_i_1_n_0\
    );
\raddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \raddr_reg_n_0_[5]\,
      I1 => \raddr_reg_n_0_[1]\,
      I2 => \raddr_reg_n_0_[0]\,
      I3 => \raddr_reg_n_0_[3]\,
      I4 => \raddr_reg_n_0_[2]\,
      I5 => \raddr_reg_n_0_[4]\,
      O => \raddr[5]_i_1_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mem_reg_i_8_n_0,
      Q => \raddr_reg_n_0_[0]\,
      R => reset
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \raddr[1]_i_1_n_0\,
      Q => \raddr_reg_n_0_[1]\,
      R => reset
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \raddr[2]_i_1_n_0\,
      Q => \raddr_reg_n_0_[2]\,
      R => reset
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \raddr[3]_i_1_n_0\,
      Q => \raddr_reg_n_0_[3]\,
      R => reset
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \raddr[4]_i_1_n_0\,
      Q => \raddr_reg_n_0_[4]\,
      R => reset
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pop,
      D => \raddr[5]_i_1_n_0\,
      Q => \raddr_reg_n_0_[5]\,
      R => reset
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mem_reg_i_2_n_0,
      Q => \raddr_reg_n_0_[6]\,
      R => reset
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mem_reg_i_1_n_0,
      Q => \raddr_reg_n_0_[7]\,
      R => reset
    );
show_ahead_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      I1 => pop,
      I2 => \ap_CS_fsm_reg[6]\(0),
      I3 => \^fifo_o_1_full_n\,
      I4 => \show_ahead_i_2__0_n_0\,
      O => show_ahead0
    );
\show_ahead_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => \usedw_reg__0\(4),
      I2 => \usedw_reg__0\(3),
      I3 => \show_ahead_i_3__0_n_0\,
      O => \show_ahead_i_2__0_n_0\
    );
\show_ahead_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \usedw_reg__0\(7),
      I1 => \usedw_reg__0\(6),
      I2 => \usedw_reg__0\(5),
      I3 => \usedw_reg__0\(2),
      O => \show_ahead_i_3__0_n_0\
    );
show_ahead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => show_ahead0,
      Q => show_ahead_reg_n_0,
      R => reset
    );
\usedw[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \usedw_reg__0\(0),
      O => \usedw[0]_i_1_n_0\
    );
\usedw[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800880088888888"
    )
        port map (
      I0 => \^fifo_o_1_full_n\,
      I1 => \ap_CS_fsm_reg[6]\(0),
      I2 => s_full_n,
      I3 => \^fifo_o_1_empty_n\,
      I4 => \ap_CS_fsm_reg[1]\(0),
      I5 => empty_n_reg_n_0,
      O => usedw14_out
    );
\usedw[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(3),
      I1 => \usedw_reg__0\(4),
      O => \usedw[4]_i_3__0_n_0\
    );
\usedw[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(2),
      I1 => \usedw_reg__0\(3),
      O => \usedw[4]_i_4__0_n_0\
    );
\usedw[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => \usedw_reg__0\(2),
      O => \usedw[4]_i_5__0_n_0\
    );
\usedw[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \usedw_reg__0\(1),
      I1 => pop,
      I2 => \ap_CS_fsm_reg[6]\(0),
      I3 => \^fifo_o_1_full_n\,
      O => \usedw[4]_i_6_n_0\
    );
\usedw[7]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(6),
      I1 => \usedw_reg__0\(7),
      O => \usedw[7]_i_2__0_n_0\
    );
\usedw[7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(5),
      I1 => \usedw_reg__0\(6),
      O => \usedw[7]_i_3__0_n_0\
    );
\usedw[7]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \usedw_reg__0\(4),
      I1 => \usedw_reg__0\(5),
      O => \usedw[7]_i_4__0_n_0\
    );
\usedw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw[0]_i_1_n_0\,
      Q => \usedw_reg__0\(0),
      R => reset
    );
\usedw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1__0_n_7\,
      Q => \usedw_reg__0\(1),
      R => reset
    );
\usedw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1__0_n_6\,
      Q => \usedw_reg__0\(2),
      R => reset
    );
\usedw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1__0_n_5\,
      Q => \usedw_reg__0\(3),
      R => reset
    );
\usedw_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[4]_i_1__0_n_4\,
      Q => \usedw_reg__0\(4),
      R => reset
    );
\usedw_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \usedw_reg[4]_i_1__0_n_0\,
      CO(2) => \usedw_reg[4]_i_1__0_n_1\,
      CO(1) => \usedw_reg[4]_i_1__0_n_2\,
      CO(0) => \usedw_reg[4]_i_1__0_n_3\,
      CYINIT => \usedw_reg__0\(0),
      DI(3 downto 1) => \usedw_reg__0\(3 downto 1),
      DI(0) => usedw14_out,
      O(3) => \usedw_reg[4]_i_1__0_n_4\,
      O(2) => \usedw_reg[4]_i_1__0_n_5\,
      O(1) => \usedw_reg[4]_i_1__0_n_6\,
      O(0) => \usedw_reg[4]_i_1__0_n_7\,
      S(3) => \usedw[4]_i_3__0_n_0\,
      S(2) => \usedw[4]_i_4__0_n_0\,
      S(1) => \usedw[4]_i_5__0_n_0\,
      S(0) => \usedw[4]_i_6_n_0\
    );
\usedw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[7]_i_1__0_n_7\,
      Q => \usedw_reg__0\(5),
      R => reset
    );
\usedw_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[7]_i_1__0_n_6\,
      Q => \usedw_reg__0\(6),
      R => reset
    );
\usedw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => empty_n,
      D => \usedw_reg[7]_i_1__0_n_5\,
      Q => \usedw_reg__0\(7),
      R => reset
    );
\usedw_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \usedw_reg[4]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_usedw_reg[7]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \usedw_reg[7]_i_1__0_n_2\,
      CO(0) => \usedw_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \usedw_reg__0\(5 downto 4),
      O(3) => \NLW_usedw_reg[7]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \usedw_reg[7]_i_1__0_n_5\,
      O(1) => \usedw_reg[7]_i_1__0_n_6\,
      O(0) => \usedw_reg[7]_i_1__0_n_7\,
      S(3) => '0',
      S(2) => \usedw[7]_i_2__0_n_0\,
      S(1) => \usedw[7]_i_3__0_n_0\,
      S(0) => \usedw[7]_i_4__0_n_0\
    );
\waddr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr(0),
      O => wnext(0)
    );
\waddr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      O => wnext(1)
    );
\waddr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      O => wnext(2)
    );
\waddr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(0),
      I2 => waddr(1),
      I3 => waddr(2),
      O => wnext(3)
    );
\waddr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(1),
      I3 => waddr(0),
      I4 => waddr(3),
      O => wnext(4)
    );
\waddr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => waddr(5),
      I1 => waddr(3),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(2),
      I5 => waddr(4),
      O => wnext(5)
    );
\waddr[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C1"
    )
        port map (
      I0 => waddr(7),
      I1 => \waddr[7]_i_2__0_n_0\,
      I2 => waddr(6),
      O => wnext(6)
    );
\waddr[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => waddr(7),
      I1 => waddr(6),
      I2 => \waddr[7]_i_2__0_n_0\,
      O => wnext(7)
    );
\waddr[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr(5),
      I1 => waddr(4),
      I2 => waddr(2),
      I3 => waddr(1),
      I4 => waddr(0),
      I5 => waddr(3),
      O => \waddr[7]_i_2__0_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(0),
      Q => waddr(0),
      R => reset
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(1),
      Q => waddr(1),
      R => reset
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(2),
      Q => waddr(2),
      R => reset
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(3),
      Q => waddr(3),
      R => reset
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(4),
      Q => waddr(4),
      R => reset
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(5),
      Q => waddr(5),
      R => reset
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(6),
      Q => waddr(6),
      R => reset
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => WEBWE(0),
      D => wnext(7),
      Q => waddr(7),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_uart_wrapper_do_action1 is
  port (
    e_read : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    FIFO_I_1_full_n : in STD_LOGIC;
    e_empty_n : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_uart_wrapper_do_action1 : entity is "uart_wrapper_do_action1";
end uart_wrapper_0_uart_wrapper_do_action1;

architecture STRUCTURE of uart_wrapper_0_uart_wrapper_do_action1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm10_out : STD_LOGIC;
  signal ap_NS_fsm11_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1__0\ : label is "soft_lutpair46";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
begin
  Q(0) <= \^q\(0);
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => FIFO_I_1_full_n,
      I1 => \^q\(0),
      I2 => e_empty_n,
      I3 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAB0101"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^q\(0),
      I2 => ap_CS_fsm_state4,
      I3 => ap_CS_fsm_state3,
      I4 => e_empty_n,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => e_empty_n,
      I2 => ap_CS_fsm_state4,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => e_empty_n,
      I2 => FIFO_I_1_full_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => \^q\(0),
      R => reset
    );
e_read_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF80000"
    )
        port map (
      I0 => FIFO_I_1_full_n,
      I1 => \^q\(0),
      I2 => ap_CS_fsm_state2,
      I3 => ap_CS_fsm_state3,
      I4 => e_empty_n,
      I5 => ap_CS_fsm_state4,
      O => e_read
    );
\mem_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => FIFO_I_1_full_n,
      I2 => e_empty_n,
      O => push
    );
\tmp_4_reg_100[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => e_empty_n,
      I1 => ap_CS_fsm_state3,
      O => ap_NS_fsm10_out
    );
\tmp_4_reg_100_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(0),
      Q => D(8),
      R => '0'
    );
\tmp_4_reg_100_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(1),
      Q => D(9),
      R => '0'
    );
\tmp_4_reg_100_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(2),
      Q => D(10),
      R => '0'
    );
\tmp_4_reg_100_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(3),
      Q => D(11),
      R => '0'
    );
\tmp_4_reg_100_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(4),
      Q => D(12),
      R => '0'
    );
\tmp_4_reg_100_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(5),
      Q => D(13),
      R => '0'
    );
\tmp_4_reg_100_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(6),
      Q => D(14),
      R => '0'
    );
\tmp_4_reg_100_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm10_out,
      D => e_dout(7),
      Q => D(15),
      R => '0'
    );
\tmp_6_reg_105[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => e_empty_n,
      I1 => ap_CS_fsm_state4,
      O => ap_NS_fsm11_out
    );
\tmp_6_reg_105_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(0),
      Q => D(16),
      R => '0'
    );
\tmp_6_reg_105_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(1),
      Q => D(17),
      R => '0'
    );
\tmp_6_reg_105_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(2),
      Q => D(18),
      R => '0'
    );
\tmp_6_reg_105_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(3),
      Q => D(19),
      R => '0'
    );
\tmp_6_reg_105_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(4),
      Q => D(20),
      R => '0'
    );
\tmp_6_reg_105_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(5),
      Q => D(21),
      R => '0'
    );
\tmp_6_reg_105_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(6),
      Q => D(22),
      R => '0'
    );
\tmp_6_reg_105_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm11_out,
      D => e_dout(7),
      Q => D(23),
      R => '0'
    );
\tmp_reg_95[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => e_empty_n,
      I1 => ap_CS_fsm_state2,
      O => ap_NS_fsm1
    );
\tmp_reg_95_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(0),
      Q => D(0),
      R => '0'
    );
\tmp_reg_95_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(1),
      Q => D(1),
      R => '0'
    );
\tmp_reg_95_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(2),
      Q => D(2),
      R => '0'
    );
\tmp_reg_95_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(3),
      Q => D(3),
      R => '0'
    );
\tmp_reg_95_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(4),
      Q => D(4),
      R => '0'
    );
\tmp_reg_95_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(5),
      Q => D(5),
      R => '0'
    );
\tmp_reg_95_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(6),
      Q => D(6),
      R => '0'
    );
\tmp_reg_95_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_NS_fsm1,
      D => e_dout(7),
      Q => D(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_uart_wrapper_do_action2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_write : out STD_LOGIC;
    s_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_full_n : in STD_LOGIC;
    FIFO_O_1_empty_n : in STD_LOGIC;
    \dout_buf_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_uart_wrapper_do_action2 : entity is "uart_wrapper_do_action2";
end uart_wrapper_0_uart_wrapper_do_action2;

architecture STRUCTURE of uart_wrapper_0_uart_wrapper_do_action2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read : STD_LOGIC;
  signal \s_din[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_din[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal tmp_3_reg_132 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_5_reg_137 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_7_reg_142 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1__0\ : label is "soft_lutpair47";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute SOFT_HLUTNM of \s_din[1]_INST_0\ : label is "soft_lutpair47";
begin
  Q(0) <= \^q\(0);
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => s_full_n,
      I2 => FIFO_O_1_empty_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880088008B33"
    )
        port map (
      I0 => FIFO_O_1_empty_n,
      I1 => \^q\(0),
      I2 => ap_CS_fsm_state3,
      I3 => s_full_n,
      I4 => ap_CS_fsm_state5,
      I5 => ap_CS_fsm_state4,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => s_full_n,
      I2 => ap_CS_fsm_state4,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => reset
    );
\s_din[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(0),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[0]_INST_0_i_1_n_0\,
      O => s_din(0)
    );
\s_din[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(0),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(0),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(0),
      O => \s_din[0]_INST_0_i_1_n_0\
    );
\s_din[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(1),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[1]_INST_0_i_1_n_0\,
      O => s_din(1)
    );
\s_din[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(1),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(1),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(1),
      O => \s_din[1]_INST_0_i_1_n_0\
    );
\s_din[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(2),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[2]_INST_0_i_1_n_0\,
      O => s_din(2)
    );
\s_din[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(2),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(2),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(2),
      O => \s_din[2]_INST_0_i_1_n_0\
    );
\s_din[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(3),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[3]_INST_0_i_1_n_0\,
      O => s_din(3)
    );
\s_din[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(3),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(3),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(3),
      O => \s_din[3]_INST_0_i_1_n_0\
    );
\s_din[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(4),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[4]_INST_0_i_1_n_0\,
      O => s_din(4)
    );
\s_din[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(4),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(4),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(4),
      O => \s_din[4]_INST_0_i_1_n_0\
    );
\s_din[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(5),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[5]_INST_0_i_1_n_0\,
      O => s_din(5)
    );
\s_din[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(5),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(5),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(5),
      O => \s_din[5]_INST_0_i_1_n_0\
    );
\s_din[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(6),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[6]_INST_0_i_1_n_0\,
      O => s_din(6)
    );
\s_din[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(6),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(6),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(6),
      O => \s_din[6]_INST_0_i_1_n_0\
    );
\s_din[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tmp_7_reg_142(7),
      I1 => s_full_n,
      I2 => ap_CS_fsm_state5,
      I3 => \s_din[7]_INST_0_i_1_n_0\,
      O => s_din(7)
    );
\s_din[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAE2AA00AAE2AA"
    )
        port map (
      I0 => \dout_buf_reg[31]\(7),
      I1 => ap_CS_fsm_state3,
      I2 => tmp_3_reg_132(7),
      I3 => s_full_n,
      I4 => ap_CS_fsm_state4,
      I5 => tmp_5_reg_137(7),
      O => \s_din[7]_INST_0_i_1_n_0\
    );
s_write_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F080"
    )
        port map (
      I0 => FIFO_O_1_empty_n,
      I1 => \^q\(0),
      I2 => s_full_n,
      I3 => ap_CS_fsm_state3,
      I4 => ap_CS_fsm_state5,
      I5 => ap_CS_fsm_state4,
      O => s_write
    );
\tmp_3_reg_132[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => FIFO_O_1_empty_n,
      I2 => s_full_n,
      O => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read
    );
\tmp_3_reg_132_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(8),
      Q => tmp_3_reg_132(0),
      R => '0'
    );
\tmp_3_reg_132_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(9),
      Q => tmp_3_reg_132(1),
      R => '0'
    );
\tmp_3_reg_132_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(10),
      Q => tmp_3_reg_132(2),
      R => '0'
    );
\tmp_3_reg_132_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(11),
      Q => tmp_3_reg_132(3),
      R => '0'
    );
\tmp_3_reg_132_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(12),
      Q => tmp_3_reg_132(4),
      R => '0'
    );
\tmp_3_reg_132_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(13),
      Q => tmp_3_reg_132(5),
      R => '0'
    );
\tmp_3_reg_132_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(14),
      Q => tmp_3_reg_132(6),
      R => '0'
    );
\tmp_3_reg_132_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(15),
      Q => tmp_3_reg_132(7),
      R => '0'
    );
\tmp_5_reg_137_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(16),
      Q => tmp_5_reg_137(0),
      R => '0'
    );
\tmp_5_reg_137_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(17),
      Q => tmp_5_reg_137(1),
      R => '0'
    );
\tmp_5_reg_137_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(18),
      Q => tmp_5_reg_137(2),
      R => '0'
    );
\tmp_5_reg_137_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(19),
      Q => tmp_5_reg_137(3),
      R => '0'
    );
\tmp_5_reg_137_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(20),
      Q => tmp_5_reg_137(4),
      R => '0'
    );
\tmp_5_reg_137_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(21),
      Q => tmp_5_reg_137(5),
      R => '0'
    );
\tmp_5_reg_137_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(22),
      Q => tmp_5_reg_137(6),
      R => '0'
    );
\tmp_5_reg_137_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(23),
      Q => tmp_5_reg_137(7),
      R => '0'
    );
\tmp_7_reg_142_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(24),
      Q => tmp_7_reg_142(0),
      R => '0'
    );
\tmp_7_reg_142_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(25),
      Q => tmp_7_reg_142(1),
      R => '0'
    );
\tmp_7_reg_142_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(26),
      Q => tmp_7_reg_142(2),
      R => '0'
    );
\tmp_7_reg_142_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(27),
      Q => tmp_7_reg_142(3),
      R => '0'
    );
\tmp_7_reg_142_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(28),
      Q => tmp_7_reg_142(4),
      R => '0'
    );
\tmp_7_reg_142_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(29),
      Q => tmp_7_reg_142(5),
      R => '0'
    );
\tmp_7_reg_142_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(30),
      Q => tmp_7_reg_142(6),
      R => '0'
    );
\tmp_7_reg_142_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read,
      D => \dout_buf_reg[31]\(31),
      Q => tmp_7_reg_142(7),
      R => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
eX2anAoFWfg/xle2XPpwkx2EoF71t++ZORLALwM6fS4kkkHDM0CRY+uAilYH0xvPHU7E0aUYeRZ2
Z6c3wqA8dw==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
uCfjUPzJhXsUk5brgiDq18ggMkhbYAIYmrJ/ovYO7zzOkMlI5ZJKtf5BJCRpjhs7iuOlgUOTs30y
jYjxUmfx4QBErxNakS/m3I6eRiqm8C+fT5bf6nmKHlbReX3KN8h/mZGWRAFGFhaaEGchccFUTPiq
GLps62qBRNHl9Opn24E=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XsGf/Mx6FYqSl1XhsjSK5vNajEzmUjNd8WWeV9Tmt8fiPwPI3JOPBacjX6pp+2+H2M/FKjUgiQez
3Di8oSwAaQKLEAZ+I3ROix/TtDNPlg1Ot/ydDMs0HGU/YR8ek3lX+qW727PfTudMs/xtMYa1lJ81
ovyFfQrU8jfw+Sne1uqruPvtllsuNLkfd/7ug4QFWYdYjLjPu5GbCMmDcpCJqJ0kqY/xoFvq1MuT
uaoAp5qNHikZunoKN9HMp9aA+Ev5TZKY4NtQV0U42Mo56D1e+8cGfYC0g1HuobWQdE7N+cg4wlDC
xrxvVAZAIwPQnhVR2XfuHc0pcUMgBVlSXwz31w==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E+Lh5hOAzR+n3/u2cggRFUnvxAGvSY59HhbIQyA/qZeaPp4onsn8jGNESP8lTFeEtJvqJpHsYKsC
Wt8Tr6FgQQKU+2VYSEeE/Sd4s3L5un7eEI3uLzVnEuWZlhvV2dmau+31Hc897RxHAhgp9/6UWF0C
sb4GWD9hbryqOqJfyeQOZrJqmZPr7aKOjbxj/VF5Oro72bZcdIeG2ZzBbPFp3WDyiWM9S37UJ6+U
947R2kDqBZ3mqWp/TTm2for31uumvITwgqDEFuRKxKx8zJN0WiDoRLIN+nW0QWjpFtAKYk6LKQiR
gHOzKX7N4sjEV8ZAl03RqsgIAD6jh1lgxhDfgw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZDGBoyEHbBjAWB9UUnTaLqJP2f1dNxRG1DiSLmM90BZNa8bZx/f8y713m3Gwlr973vsD7/3IjQGI
ghE5FB93KAYs8Kub0cb+q/HpRO1HT5EFTc1NiRnyl5uQFWad3MuRAVwxWozzkSPVA3UgNlUJq1US
A2sgj5scmhpasuJF2er1+9vC7k5NFVoVeSOTQZ31+Tpy+n+EYXNqzP/jscoYKuqNLXNC4hn7Uv59
nDvsQlqKIW8hwp1ntoyWLSIULGzBgRxqqvDy2BTKV9rJQNGQy1BnH/56qe9WELroUd/wDWI5OaLo
DJ0t+tngwISGdl1cP1ddmZvn1ntN08KCm+LMyw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
EmA2D5PUTqq7mm2t4QbiX7uzwfFvAeTBCstExzA9OB8ZZQk0205NpDVYzDokTBW+8mfBLqdoXY/E
dT8kUMa3oGnTQ5MtF8/oimMNqcLtGnU8WTR9zKXA2QcUHRwCUq1Y+qmgsnSHQ0kgAh36fSIk9+YI
D3Ll1qp/Kc3zfdz0ikA=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dlSCiEsHlW9JXVdtbFpwptSarEv35QEasVhQxkE15I3KOKO3bgk34x+7jMoTDgPLyy46XLD5LwTb
ZDp3ihYrIqGBRMBkGPEi46d5uuOrmUz43Adv/LpppEfqeAx6MpoywO7NScCOTXs1yvbmDHMZ6vn8
1M3kl3+/VO+2tKP8x9HApeWrQueYjS0gtPTLda2WwIvDN6AiDxUcYqWHYl/b1ZlRvdRsmse/FY1h
Uobcr2Ey9v3EbFMeMkOdqx4pGZ6l8JBXIWG0wDgrYASM0JknXyI4ODxPxEgWt0AHr6ECkbcn4TtL
jA7oF31RS/bQCx+hbLddLreUgCKlL4G7bpS/mQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BCaTukoJs+sijEMKGANoHlOpAGrsX/dtoYAZuPGBJjqmAy+jf3woUMut4wWlozkp8hR/+0vhfh/W
2pddyVuIgSBghwMrtRR5OdbT+tl6HFM4opfYaeqc3Sauo41uUzsw9n7FahLtQ7I+wg46K21UMnPw
QpnBNmGa5ved8rh8uFqynX97yAOcKmr7W7sjAoNxx/V//GS4wl+gUXBP4w+SzpbVZlW+vINu4leZ
8iHl0aXDHd5+RtC+QJoL/58OwyzBKbU2Jk+RL5Z2n5wDafBxEWns/UiFymPxbZ7X1kbgmZ6y0Pbo
6P8IXotTNd0blFi/q7N5LtsueLVfzSGmSlzlOg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZhpSeXtq5AbawTK+wOEKFp8vZ3aQ56f/RI7TTr1gshnUCFtNZrIYoQV7JLIprGnkiPo8Sa0Vn0uQ
SCyzi61j81mlmY7FSKVIq3eUrRQYxDVKtQ5ag4X14tqWci5nHCSHp2MewsJPfz64KqL1o/EaM30c
P8HX7n/+AiPmaPSsaK177g7t2PGyMd9q1YKm84su3fpcC3qw5p91c2gDb9YlJSCfDRU1Z7uGAJLz
eu/SkJv+wV/F5t6WBzmsKeQfsFReOyBFpZYadt8VVC77St6bCC5d1LzWC9yqoR+Iwiaj8v78ql9T
6w1i648PHog49mRmC5+ZB+3ZHYBqMcZo8yNCkA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114320)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_floating_point_v7_1_5 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of uart_wrapper_0_floating_point_v7_1_5 : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 24;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 24;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of uart_wrapper_0_floating_point_v7_1_5 : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 24;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of uart_wrapper_0_floating_point_v7_1_5 : entity is 2;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of uart_wrapper_0_floating_point_v7_1_5 : entity is 3;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 24;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of uart_wrapper_0_floating_point_v7_1_5 : entity is 32;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of uart_wrapper_0_floating_point_v7_1_5 : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of uart_wrapper_0_floating_point_v7_1_5 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of uart_wrapper_0_floating_point_v7_1_5 : entity is "virtex7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_floating_point_v7_1_5 : entity is "floating_point_v7_1_5";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uart_wrapper_0_floating_point_v7_1_5 : entity is "yes";
end uart_wrapper_0_floating_point_v7_1_5;

architecture STRUCTURE of uart_wrapper_0_floating_point_v7_1_5 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUM_INPUT_MSB of i_synth : label is 32;
  attribute C_ACCUM_LSB of i_synth : label is -31;
  attribute C_ACCUM_MSB of i_synth : label is 32;
  attribute C_A_FRACTION_WIDTH of i_synth : label is 24;
  attribute C_A_TDATA_WIDTH of i_synth : label is 32;
  attribute C_A_TUSER_WIDTH of i_synth : label is 1;
  attribute C_A_WIDTH of i_synth : label is 32;
  attribute C_BRAM_USAGE of i_synth : label is 0;
  attribute C_B_FRACTION_WIDTH of i_synth : label is 24;
  attribute C_B_TDATA_WIDTH of i_synth : label is 32;
  attribute C_B_TUSER_WIDTH of i_synth : label is 1;
  attribute C_B_WIDTH of i_synth : label is 32;
  attribute C_COMPARE_OPERATION of i_synth : label is 8;
  attribute C_C_FRACTION_WIDTH of i_synth : label is 24;
  attribute C_C_TDATA_WIDTH of i_synth : label is 32;
  attribute C_C_TUSER_WIDTH of i_synth : label is 1;
  attribute C_C_WIDTH of i_synth : label is 32;
  attribute C_FIXED_DATA_UNSIGNED of i_synth : label is 0;
  attribute C_HAS_ABSOLUTE of i_synth : label is 0;
  attribute C_HAS_ACCUMULATOR_A of i_synth : label is 0;
  attribute C_HAS_ACCUMULATOR_S of i_synth : label is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_ACCUM_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_ACLKEN of i_synth : label is 1;
  attribute C_HAS_ADD of i_synth : label is 0;
  attribute C_HAS_ARESETN of i_synth : label is 0;
  attribute C_HAS_A_TLAST of i_synth : label is 0;
  attribute C_HAS_A_TUSER of i_synth : label is 0;
  attribute C_HAS_B of i_synth : label is 1;
  attribute C_HAS_B_TLAST of i_synth : label is 0;
  attribute C_HAS_B_TUSER of i_synth : label is 0;
  attribute C_HAS_C of i_synth : label is 0;
  attribute C_HAS_COMPARE of i_synth : label is 0;
  attribute C_HAS_C_TLAST of i_synth : label is 0;
  attribute C_HAS_C_TUSER of i_synth : label is 0;
  attribute C_HAS_DIVIDE of i_synth : label is 0;
  attribute C_HAS_DIVIDE_BY_ZERO of i_synth : label is 0;
  attribute C_HAS_EXPONENTIAL of i_synth : label is 0;
  attribute C_HAS_FIX_TO_FLT of i_synth : label is 0;
  attribute C_HAS_FLT_TO_FIX of i_synth : label is 0;
  attribute C_HAS_FLT_TO_FLT of i_synth : label is 0;
  attribute C_HAS_FMA of i_synth : label is 0;
  attribute C_HAS_FMS of i_synth : label is 0;
  attribute C_HAS_INVALID_OP of i_synth : label is 0;
  attribute C_HAS_LOGARITHM of i_synth : label is 0;
  attribute C_HAS_MULTIPLY of i_synth : label is 1;
  attribute C_HAS_OPERATION of i_synth : label is 0;
  attribute C_HAS_OPERATION_TLAST of i_synth : label is 0;
  attribute C_HAS_OPERATION_TUSER of i_synth : label is 0;
  attribute C_HAS_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_RECIP of i_synth : label is 0;
  attribute C_HAS_RECIP_SQRT of i_synth : label is 0;
  attribute C_HAS_RESULT_TLAST of i_synth : label is 0;
  attribute C_HAS_RESULT_TUSER of i_synth : label is 0;
  attribute C_HAS_SQRT of i_synth : label is 0;
  attribute C_HAS_SUBTRACT of i_synth : label is 0;
  attribute C_HAS_UNDERFLOW of i_synth : label is 0;
  attribute C_LATENCY of i_synth : label is 2;
  attribute C_MULT_USAGE of i_synth : label is 3;
  attribute C_OPERATION_TDATA_WIDTH of i_synth : label is 8;
  attribute C_OPERATION_TUSER_WIDTH of i_synth : label is 1;
  attribute C_OPTIMIZATION of i_synth : label is 1;
  attribute C_RATE of i_synth : label is 1;
  attribute C_RESULT_FRACTION_WIDTH of i_synth : label is 24;
  attribute C_RESULT_TDATA_WIDTH of i_synth : label is 32;
  attribute C_RESULT_TUSER_WIDTH of i_synth : label is 1;
  attribute C_RESULT_WIDTH of i_synth : label is 32;
  attribute C_THROTTLE_SCHEME of i_synth : label is 3;
  attribute C_TLAST_RESOLUTION of i_synth : label is 0;
  attribute C_XDEVICEFAMILY of i_synth : label is "virtex7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
  m_axis_result_tlast <= \<const0>\;
  m_axis_result_tuser(0) <= \<const0>\;
  m_axis_result_tvalid <= \<const0>\;
  s_axis_a_tready <= \<const0>\;
  s_axis_b_tready <= \<const0>\;
  s_axis_c_tready <= \<const0>\;
  s_axis_operation_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_synth: entity work.uart_wrapper_0_floating_point_v7_1_5_viv
     port map (
      aclk => aclk,
      aclken => '0',
      aresetn => '0',
      m_axis_result_tdata(31 downto 0) => m_axis_result_tdata(31 downto 0),
      m_axis_result_tlast => NLW_i_synth_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_i_synth_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => NLW_i_synth_m_axis_result_tvalid_UNCONNECTED,
      s_axis_a_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_i_synth_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(31) => '0',
      s_axis_b_tdata(30 downto 0) => s_axis_b_tdata(30 downto 0),
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_i_synth_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => s_axis_b_tvalid,
      s_axis_c_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_c_tlast => '0',
      s_axis_c_tready => NLW_i_synth_s_axis_c_tready_UNCONNECTED,
      s_axis_c_tuser(0) => '0',
      s_axis_c_tvalid => '0',
      s_axis_operation_tdata(7 downto 0) => B"00000000",
      s_axis_operation_tlast => '0',
      s_axis_operation_tready => NLW_i_synth_s_axis_operation_tready_UNCONNECTED,
      s_axis_operation_tuser(0) => '0',
      s_axis_operation_tvalid => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32 : entity is "uart_wrapper_ap_fmul_2_max_dsp_32";
end uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32;

architecture STRUCTURE of uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32 is
  signal NLW_U0_m_axis_result_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_result_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_result_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of U0 : label is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of U0 : label is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of U0 : label is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of U0 : label is 24;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of U0 : label is 32;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of U0 : label is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 32;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of U0 : label is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of U0 : label is 24;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of U0 : label is 32;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of U0 : label is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 32;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of U0 : label is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of U0 : label is 24;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of U0 : label is 32;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of U0 : label is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of U0 : label is 32;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of U0 : label is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of U0 : label is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of U0 : label is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of U0 : label is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of U0 : label is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of U0 : label is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of U0 : label is 1;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of U0 : label is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of U0 : label is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of U0 : label is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of U0 : label is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of U0 : label is 1;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of U0 : label is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of U0 : label is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of U0 : label is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of U0 : label is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of U0 : label is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of U0 : label is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of U0 : label is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of U0 : label is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of U0 : label is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of U0 : label is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of U0 : label is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of U0 : label is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of U0 : label is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of U0 : label is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of U0 : label is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of U0 : label is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of U0 : label is 1;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of U0 : label is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of U0 : label is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of U0 : label is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of U0 : label is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of U0 : label is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of U0 : label is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of U0 : label is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 2;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of U0 : label is 3;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of U0 : label is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of U0 : label is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of U0 : label is 1;
  attribute C_RATE : integer;
  attribute C_RATE of U0 : label is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of U0 : label is 24;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of U0 : label is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of U0 : label is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of U0 : label is 32;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of U0 : label is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.uart_wrapper_0_floating_point_v7_1_5
     port map (
      aclk => clk,
      aclken => '0',
      aresetn => '1',
      m_axis_result_tdata(31 downto 0) => D(31 downto 0),
      m_axis_result_tlast => NLW_U0_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_U0_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => NLW_U0_m_axis_result_tvalid_UNCONNECTED,
      s_axis_a_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_U0_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => '1',
      s_axis_b_tdata(31) => '0',
      s_axis_b_tdata(30 downto 0) => Q(30 downto 0),
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_U0_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => '1',
      s_axis_c_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_c_tlast => '0',
      s_axis_c_tready => NLW_U0_s_axis_c_tready_UNCONNECTED,
      s_axis_c_tuser(0) => '0',
      s_axis_c_tvalid => '0',
      s_axis_operation_tdata(7 downto 0) => B"00000000",
      s_axis_operation_tlast => '0',
      s_axis_operation_tready => NLW_U0_s_axis_operation_tready_UNCONNECTED,
      s_axis_operation_tuser(0) => '0',
      s_axis_operation_tvalid => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_carre_fmul_32ns_3bkb is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_carre_fmul_32ns_3bkb : entity is "carre_fmul_32ns_3bkb";
end uart_wrapper_0_carre_fmul_32ns_3bkb;

architecture STRUCTURE of uart_wrapper_0_carre_fmul_32ns_3bkb is
  signal din1_buf1 : STD_LOGIC_VECTOR ( 30 downto 0 );
begin
\din0_buf1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => din1_buf1(0),
      R => '0'
    );
\din0_buf1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(10),
      Q => din1_buf1(10),
      R => '0'
    );
\din0_buf1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(11),
      Q => din1_buf1(11),
      R => '0'
    );
\din0_buf1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(12),
      Q => din1_buf1(12),
      R => '0'
    );
\din0_buf1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(13),
      Q => din1_buf1(13),
      R => '0'
    );
\din0_buf1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(14),
      Q => din1_buf1(14),
      R => '0'
    );
\din0_buf1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(15),
      Q => din1_buf1(15),
      R => '0'
    );
\din0_buf1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(16),
      Q => din1_buf1(16),
      R => '0'
    );
\din0_buf1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(17),
      Q => din1_buf1(17),
      R => '0'
    );
\din0_buf1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(18),
      Q => din1_buf1(18),
      R => '0'
    );
\din0_buf1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(19),
      Q => din1_buf1(19),
      R => '0'
    );
\din0_buf1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => din1_buf1(1),
      R => '0'
    );
\din0_buf1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(20),
      Q => din1_buf1(20),
      R => '0'
    );
\din0_buf1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(21),
      Q => din1_buf1(21),
      R => '0'
    );
\din0_buf1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(22),
      Q => din1_buf1(22),
      R => '0'
    );
\din0_buf1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(23),
      Q => din1_buf1(23),
      R => '0'
    );
\din0_buf1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(24),
      Q => din1_buf1(24),
      R => '0'
    );
\din0_buf1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(25),
      Q => din1_buf1(25),
      R => '0'
    );
\din0_buf1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(26),
      Q => din1_buf1(26),
      R => '0'
    );
\din0_buf1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(27),
      Q => din1_buf1(27),
      R => '0'
    );
\din0_buf1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(28),
      Q => din1_buf1(28),
      R => '0'
    );
\din0_buf1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(29),
      Q => din1_buf1(29),
      R => '0'
    );
\din0_buf1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => din1_buf1(2),
      R => '0'
    );
\din0_buf1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(30),
      Q => din1_buf1(30),
      R => '0'
    );
\din0_buf1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => din1_buf1(3),
      R => '0'
    );
\din0_buf1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => din1_buf1(4),
      R => '0'
    );
\din0_buf1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => din1_buf1(5),
      R => '0'
    );
\din0_buf1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => din1_buf1(6),
      R => '0'
    );
\din0_buf1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => din1_buf1(7),
      R => '0'
    );
\din0_buf1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(8),
      Q => din1_buf1(8),
      R => '0'
    );
\din0_buf1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(9),
      Q => din1_buf1(9),
      R => '0'
    );
uart_wrapper_ap_fmul_2_max_dsp_32_u: entity work.uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(30 downto 0) => din1_buf1(30 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_carre_do_carre is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_tmp_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_O_1_full_n : in STD_LOGIC;
    FIFO_I_1_empty_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_carre_do_carre : entity is "carre_do_carre";
end uart_wrapper_0_carre_do_carre;

architecture STRUCTURE of uart_wrapper_0_carre_do_carre is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[3]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[4]\ : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal m_axis_result_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal val_reg_80 : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => FIFO_O_1_full_n,
      I1 => \^q\(1),
      I2 => FIFO_I_1_empty_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[2]\,
      I1 => \ap_CS_fsm_reg_n_0_[3]\,
      I2 => \ap_CS_fsm_reg_n_0_[4]\,
      I3 => \^q\(1),
      I4 => ap_CS_fsm_state6,
      I5 => E(0),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => FIFO_O_1_full_n,
      I2 => \^q\(1),
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \ap_CS_fsm_reg_n_0_[2]\,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[2]\,
      Q => \ap_CS_fsm_reg_n_0_[3]\,
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[3]\,
      Q => \ap_CS_fsm_reg_n_0_[4]\,
      R => reset
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[4]\,
      Q => ap_CS_fsm_state6,
      R => reset
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => \^q\(1),
      R => reset
    );
carre_fmul_32ns_3bkb_U1: entity work.uart_wrapper_0_carre_fmul_32ns_3bkb
     port map (
      D(31 downto 0) => m_axis_result_tdata(31 downto 0),
      Q(30 downto 0) => val_reg_80(30 downto 0),
      clk => clk
    );
mem_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => FIFO_O_1_full_n,
      O => WEBWE(0)
    );
\tmp_1_reg_86_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(0),
      Q => \q_tmp_reg[31]\(0),
      R => '0'
    );
\tmp_1_reg_86_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(10),
      Q => \q_tmp_reg[31]\(10),
      R => '0'
    );
\tmp_1_reg_86_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(11),
      Q => \q_tmp_reg[31]\(11),
      R => '0'
    );
\tmp_1_reg_86_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(12),
      Q => \q_tmp_reg[31]\(12),
      R => '0'
    );
\tmp_1_reg_86_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(13),
      Q => \q_tmp_reg[31]\(13),
      R => '0'
    );
\tmp_1_reg_86_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(14),
      Q => \q_tmp_reg[31]\(14),
      R => '0'
    );
\tmp_1_reg_86_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(15),
      Q => \q_tmp_reg[31]\(15),
      R => '0'
    );
\tmp_1_reg_86_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(16),
      Q => \q_tmp_reg[31]\(16),
      R => '0'
    );
\tmp_1_reg_86_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(17),
      Q => \q_tmp_reg[31]\(17),
      R => '0'
    );
\tmp_1_reg_86_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(18),
      Q => \q_tmp_reg[31]\(18),
      R => '0'
    );
\tmp_1_reg_86_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(19),
      Q => \q_tmp_reg[31]\(19),
      R => '0'
    );
\tmp_1_reg_86_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(1),
      Q => \q_tmp_reg[31]\(1),
      R => '0'
    );
\tmp_1_reg_86_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(20),
      Q => \q_tmp_reg[31]\(20),
      R => '0'
    );
\tmp_1_reg_86_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(21),
      Q => \q_tmp_reg[31]\(21),
      R => '0'
    );
\tmp_1_reg_86_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(22),
      Q => \q_tmp_reg[31]\(22),
      R => '0'
    );
\tmp_1_reg_86_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(23),
      Q => \q_tmp_reg[31]\(23),
      R => '0'
    );
\tmp_1_reg_86_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(24),
      Q => \q_tmp_reg[31]\(24),
      R => '0'
    );
\tmp_1_reg_86_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(25),
      Q => \q_tmp_reg[31]\(25),
      R => '0'
    );
\tmp_1_reg_86_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(26),
      Q => \q_tmp_reg[31]\(26),
      R => '0'
    );
\tmp_1_reg_86_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(27),
      Q => \q_tmp_reg[31]\(27),
      R => '0'
    );
\tmp_1_reg_86_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(28),
      Q => \q_tmp_reg[31]\(28),
      R => '0'
    );
\tmp_1_reg_86_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(29),
      Q => \q_tmp_reg[31]\(29),
      R => '0'
    );
\tmp_1_reg_86_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(2),
      Q => \q_tmp_reg[31]\(2),
      R => '0'
    );
\tmp_1_reg_86_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(30),
      Q => \q_tmp_reg[31]\(30),
      R => '0'
    );
\tmp_1_reg_86_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(31),
      Q => \q_tmp_reg[31]\(31),
      R => '0'
    );
\tmp_1_reg_86_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(3),
      Q => \q_tmp_reg[31]\(3),
      R => '0'
    );
\tmp_1_reg_86_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(4),
      Q => \q_tmp_reg[31]\(4),
      R => '0'
    );
\tmp_1_reg_86_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(5),
      Q => \q_tmp_reg[31]\(5),
      R => '0'
    );
\tmp_1_reg_86_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(6),
      Q => \q_tmp_reg[31]\(6),
      R => '0'
    );
\tmp_1_reg_86_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(7),
      Q => \q_tmp_reg[31]\(7),
      R => '0'
    );
\tmp_1_reg_86_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(8),
      Q => \q_tmp_reg[31]\(8),
      R => '0'
    );
\tmp_1_reg_86_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ap_CS_fsm_state6,
      D => m_axis_result_tdata(9),
      Q => \q_tmp_reg[31]\(9),
      R => '0'
    );
\val_reg_80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => val_reg_80(0),
      R => '0'
    );
\val_reg_80_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => val_reg_80(10),
      R => '0'
    );
\val_reg_80_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => val_reg_80(11),
      R => '0'
    );
\val_reg_80_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => val_reg_80(12),
      R => '0'
    );
\val_reg_80_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => val_reg_80(13),
      R => '0'
    );
\val_reg_80_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => val_reg_80(14),
      R => '0'
    );
\val_reg_80_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => val_reg_80(15),
      R => '0'
    );
\val_reg_80_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => val_reg_80(16),
      R => '0'
    );
\val_reg_80_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => val_reg_80(17),
      R => '0'
    );
\val_reg_80_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => val_reg_80(18),
      R => '0'
    );
\val_reg_80_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => val_reg_80(19),
      R => '0'
    );
\val_reg_80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => val_reg_80(1),
      R => '0'
    );
\val_reg_80_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => val_reg_80(20),
      R => '0'
    );
\val_reg_80_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => val_reg_80(21),
      R => '0'
    );
\val_reg_80_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => val_reg_80(22),
      R => '0'
    );
\val_reg_80_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => val_reg_80(23),
      R => '0'
    );
\val_reg_80_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => val_reg_80(24),
      R => '0'
    );
\val_reg_80_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => val_reg_80(25),
      R => '0'
    );
\val_reg_80_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => val_reg_80(26),
      R => '0'
    );
\val_reg_80_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => val_reg_80(27),
      R => '0'
    );
\val_reg_80_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => val_reg_80(28),
      R => '0'
    );
\val_reg_80_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => val_reg_80(29),
      R => '0'
    );
\val_reg_80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => val_reg_80(2),
      R => '0'
    );
\val_reg_80_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => val_reg_80(30),
      R => '0'
    );
\val_reg_80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => val_reg_80(3),
      R => '0'
    );
\val_reg_80_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => val_reg_80(4),
      R => '0'
    );
\val_reg_80_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => val_reg_80(5),
      R => '0'
    );
\val_reg_80_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => val_reg_80(6),
      R => '0'
    );
\val_reg_80_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => val_reg_80(7),
      R => '0'
    );
\val_reg_80_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => val_reg_80(8),
      R => '0'
    );
\val_reg_80_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => val_reg_80(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_carre is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_tmp_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_O_1_full_n : in STD_LOGIC;
    FIFO_I_1_empty_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_wrapper_0_carre : entity is "carre";
end uart_wrapper_0_carre;

architecture STRUCTURE of uart_wrapper_0_carre is
begin
grp_carre_do_carre_fu_58: entity work.uart_wrapper_0_carre_do_carre
     port map (
      D(30 downto 0) => D(30 downto 0),
      E(0) => E(0),
      FIFO_I_1_empty_n => FIFO_I_1_empty_n,
      FIFO_O_1_full_n => FIFO_O_1_full_n,
      Q(1 downto 0) => Q(1 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      \q_tmp_reg[31]\(31 downto 0) => \q_tmp_reg[31]\(31 downto 0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper_0_uart_wrapper is
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
  attribute ORIG_REF_NAME of uart_wrapper_0_uart_wrapper : entity is "uart_wrapper";
end uart_wrapper_0_uart_wrapper;

architecture STRUCTURE of uart_wrapper_0_uart_wrapper is
  signal FIFO_I_1_empty_n : STD_LOGIC;
  signal FIFO_I_1_full_n : STD_LOGIC;
  signal FIFO_O_1_empty_n : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_10 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_11 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_12 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_13 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_14 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_15 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_16 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_17 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_2 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_26 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_27 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_28 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_29 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_3 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_30 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_31 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_32 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_33 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_4 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_5 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_6 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_7 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_8 : STD_LOGIC;
  signal FIFO_O_1_fifo_U_n_9 : STD_LOGIC;
  signal FIFO_O_1_full_n : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal dout_buf : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \grp_carre_do_carre_fu_58/ap_CS_fsm_state2\ : STD_LOGIC;
  signal \grp_carre_do_carre_fu_58/ap_CS_fsm_state7\ : STD_LOGIC;
  signal grp_carre_fu_90_e_read : STD_LOGIC;
  signal grp_carre_fu_90_s_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal push : STD_LOGIC;
  signal push_0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000";
begin
FIFO_I_1_fifo_U: entity work.uart_wrapper_0_fifo_w32_d192_A
     port map (
      D(30 downto 24) => e_dout(6 downto 0),
      D(23 downto 0) => grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din(23 downto 0),
      E(0) => grp_carre_fu_90_e_read,
      FIFO_I_1_empty_n => FIFO_I_1_empty_n,
      FIFO_I_1_full_n => FIFO_I_1_full_n,
      Q(0) => \grp_carre_do_carre_fu_58/ap_CS_fsm_state2\,
      \ap_CS_fsm_reg[4]\(0) => ap_CS_fsm_state5,
      clk => clk,
      e_dout(0) => e_dout(7),
      e_empty_n => e_empty_n,
      push => push_0,
      reset => reset,
      \val_reg_80_reg[30]\(30 downto 0) => dout_buf(30 downto 0)
    );
FIFO_O_1_fifo_U: entity work.uart_wrapper_0_fifo_w32_d192_A_0
     port map (
      FIFO_O_1_empty_n => FIFO_O_1_empty_n,
      FIFO_O_1_full_n => FIFO_O_1_full_n,
      Q(31 downto 0) => grp_carre_fu_90_s_din(31 downto 0),
      WEBWE(0) => push,
      \ap_CS_fsm_reg[1]\(0) => ap_CS_fsm_state2,
      \ap_CS_fsm_reg[6]\(0) => \grp_carre_do_carre_fu_58/ap_CS_fsm_state7\,
      clk => clk,
      reset => reset,
      s_full_n => s_full_n,
      \tmp_7_reg_142_reg[7]\(31) => FIFO_O_1_fifo_U_n_2,
      \tmp_7_reg_142_reg[7]\(30) => FIFO_O_1_fifo_U_n_3,
      \tmp_7_reg_142_reg[7]\(29) => FIFO_O_1_fifo_U_n_4,
      \tmp_7_reg_142_reg[7]\(28) => FIFO_O_1_fifo_U_n_5,
      \tmp_7_reg_142_reg[7]\(27) => FIFO_O_1_fifo_U_n_6,
      \tmp_7_reg_142_reg[7]\(26) => FIFO_O_1_fifo_U_n_7,
      \tmp_7_reg_142_reg[7]\(25) => FIFO_O_1_fifo_U_n_8,
      \tmp_7_reg_142_reg[7]\(24) => FIFO_O_1_fifo_U_n_9,
      \tmp_7_reg_142_reg[7]\(23) => FIFO_O_1_fifo_U_n_10,
      \tmp_7_reg_142_reg[7]\(22) => FIFO_O_1_fifo_U_n_11,
      \tmp_7_reg_142_reg[7]\(21) => FIFO_O_1_fifo_U_n_12,
      \tmp_7_reg_142_reg[7]\(20) => FIFO_O_1_fifo_U_n_13,
      \tmp_7_reg_142_reg[7]\(19) => FIFO_O_1_fifo_U_n_14,
      \tmp_7_reg_142_reg[7]\(18) => FIFO_O_1_fifo_U_n_15,
      \tmp_7_reg_142_reg[7]\(17) => FIFO_O_1_fifo_U_n_16,
      \tmp_7_reg_142_reg[7]\(16) => FIFO_O_1_fifo_U_n_17,
      \tmp_7_reg_142_reg[7]\(15 downto 8) => p_0_in(7 downto 0),
      \tmp_7_reg_142_reg[7]\(7) => FIFO_O_1_fifo_U_n_26,
      \tmp_7_reg_142_reg[7]\(6) => FIFO_O_1_fifo_U_n_27,
      \tmp_7_reg_142_reg[7]\(5) => FIFO_O_1_fifo_U_n_28,
      \tmp_7_reg_142_reg[7]\(4) => FIFO_O_1_fifo_U_n_29,
      \tmp_7_reg_142_reg[7]\(3) => FIFO_O_1_fifo_U_n_30,
      \tmp_7_reg_142_reg[7]\(2) => FIFO_O_1_fifo_U_n_31,
      \tmp_7_reg_142_reg[7]\(1) => FIFO_O_1_fifo_U_n_32,
      \tmp_7_reg_142_reg[7]\(0) => FIFO_O_1_fifo_U_n_33
    );
grp_carre_fu_90: entity work.uart_wrapper_0_carre
     port map (
      D(30 downto 0) => dout_buf(30 downto 0),
      E(0) => grp_carre_fu_90_e_read,
      FIFO_I_1_empty_n => FIFO_I_1_empty_n,
      FIFO_O_1_full_n => FIFO_O_1_full_n,
      Q(1) => \grp_carre_do_carre_fu_58/ap_CS_fsm_state7\,
      Q(0) => \grp_carre_do_carre_fu_58/ap_CS_fsm_state2\,
      WEBWE(0) => push,
      clk => clk,
      \q_tmp_reg[31]\(31 downto 0) => grp_carre_fu_90_s_din(31 downto 0),
      reset => reset
    );
grp_uart_wrapper_do_action1_fu_132: entity work.uart_wrapper_0_uart_wrapper_do_action1
     port map (
      D(23 downto 0) => grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din(23 downto 0),
      FIFO_I_1_full_n => FIFO_I_1_full_n,
      Q(0) => ap_CS_fsm_state5,
      clk => clk,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n,
      e_read => e_read,
      push => push_0,
      reset => reset
    );
grp_uart_wrapper_do_action2_fu_106: entity work.uart_wrapper_0_uart_wrapper_do_action2
     port map (
      FIFO_O_1_empty_n => FIFO_O_1_empty_n,
      Q(0) => ap_CS_fsm_state2,
      clk => clk,
      \dout_buf_reg[31]\(31) => FIFO_O_1_fifo_U_n_2,
      \dout_buf_reg[31]\(30) => FIFO_O_1_fifo_U_n_3,
      \dout_buf_reg[31]\(29) => FIFO_O_1_fifo_U_n_4,
      \dout_buf_reg[31]\(28) => FIFO_O_1_fifo_U_n_5,
      \dout_buf_reg[31]\(27) => FIFO_O_1_fifo_U_n_6,
      \dout_buf_reg[31]\(26) => FIFO_O_1_fifo_U_n_7,
      \dout_buf_reg[31]\(25) => FIFO_O_1_fifo_U_n_8,
      \dout_buf_reg[31]\(24) => FIFO_O_1_fifo_U_n_9,
      \dout_buf_reg[31]\(23) => FIFO_O_1_fifo_U_n_10,
      \dout_buf_reg[31]\(22) => FIFO_O_1_fifo_U_n_11,
      \dout_buf_reg[31]\(21) => FIFO_O_1_fifo_U_n_12,
      \dout_buf_reg[31]\(20) => FIFO_O_1_fifo_U_n_13,
      \dout_buf_reg[31]\(19) => FIFO_O_1_fifo_U_n_14,
      \dout_buf_reg[31]\(18) => FIFO_O_1_fifo_U_n_15,
      \dout_buf_reg[31]\(17) => FIFO_O_1_fifo_U_n_16,
      \dout_buf_reg[31]\(16) => FIFO_O_1_fifo_U_n_17,
      \dout_buf_reg[31]\(15 downto 8) => p_0_in(7 downto 0),
      \dout_buf_reg[31]\(7) => FIFO_O_1_fifo_U_n_26,
      \dout_buf_reg[31]\(6) => FIFO_O_1_fifo_U_n_27,
      \dout_buf_reg[31]\(5) => FIFO_O_1_fifo_U_n_28,
      \dout_buf_reg[31]\(4) => FIFO_O_1_fifo_U_n_29,
      \dout_buf_reg[31]\(3) => FIFO_O_1_fifo_U_n_30,
      \dout_buf_reg[31]\(2) => FIFO_O_1_fifo_U_n_31,
      \dout_buf_reg[31]\(1) => FIFO_O_1_fifo_U_n_32,
      \dout_buf_reg[31]\(0) => FIFO_O_1_fifo_U_n_33,
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
entity uart_wrapper_0 is
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
  attribute NotValidForBitStream of uart_wrapper_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_wrapper_0 : entity is "uart_wrapper_0,uart_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uart_wrapper_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of uart_wrapper_0 : entity is "uart_wrapper,Vivado 2017.3";
end uart_wrapper_0;

architecture STRUCTURE of uart_wrapper_0 is
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
U0: entity work.uart_wrapper_0_uart_wrapper
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
