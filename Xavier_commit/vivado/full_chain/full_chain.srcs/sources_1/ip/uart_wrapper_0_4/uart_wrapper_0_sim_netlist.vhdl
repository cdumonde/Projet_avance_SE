-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Thu Jan 18 11:18:45 2018
-- Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top uart_wrapper_0 -prefix
--               uart_wrapper_0_ uart_wrapper_0_sim_netlist.vhdl
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
Aoz/+18e7HkhDcYyH8b7D0MeyKoscHXKZhdss46e4ZDV5mScPVV4t091lfU3KSBEmX1jZbJk1g8H
cLQvVRMMvsad2SxQ3o8cJaGiHjs8/mrZx7XDfF82NbL3m1prkD0hQ/nT3MgrAJWmmT29+DkLl/iK
S+cExZj4sjApQwnTKDiYEmG9+1+Oe3IHR8zuCBhYUzG3Ze4bTlgXBlXD/MUnPlEBSo3q3fYGkdxx
QwV+HNKMPE4bQDmPrazeWVcwiIzn4w0/YFSSeaZWoUPYLWJe7yNflDxfFM30JwRqbcQ9GxK3MwWW
VluES4v/x9PKxSn9XkhKGQqoW66b5qMlVyBDJg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
pQHhFVjOWh8/5ytMIfpfTKZvZdv8UmUeLMLBQhADlskeb+Lu8SrjxiSgYWn7eATwmpmPtF9fLQLq
t2wUm75D++Dk2hbsFBYFDWFldTAMSP1/SRyawo2trEyJZiJQOZySUWmRYFNCjAb/jaDeTwfAXnoY
m2qktjdH+r3/Lh5hCGccYw6i+3uVPU6v+bCzm+IThGt/LHx1vlI9y9E5w3hlD99hCMCGimstRQaQ
Pc5dxA5cTu7C5GjTRZSDV0aIc8skILk5iidRoabG8VmqtygjRz8AbR4g2IY2/VfsHXl3hzFt8SDP
YAyr0/S0rp2GNtcts7ZhB0Oa38SSHDaRMhJZzg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 118160)
`protect data_block
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
sbBCPkwKhT4nGORetf3/6b9+lbfm9rne
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
