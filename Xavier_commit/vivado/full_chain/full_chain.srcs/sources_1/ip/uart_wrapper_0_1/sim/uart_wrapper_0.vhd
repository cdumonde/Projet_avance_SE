-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:uart_wrapper:1.0
-- IP Revision: 1801171500

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY uart_wrapper_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_full_n : IN STD_LOGIC;
    s_write : OUT STD_LOGIC
  );
END uart_wrapper_0;

ARCHITECTURE uart_wrapper_0_arch OF uart_wrapper_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF uart_wrapper_0_arch: ARCHITECTURE IS "yes";
  COMPONENT uart_wrapper IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      e_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      e_empty_n : IN STD_LOGIC;
      e_read : OUT STD_LOGIC;
      s_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_full_n : IN STD_LOGIC;
      s_write : OUT STD_LOGIC
    );
  END COMPONENT uart_wrapper;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 s WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF s_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 s FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_din: SIGNAL IS "XIL_INTERFACENAME s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF s_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 s WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF e_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF e_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF e_dout: SIGNAL IS "XIL_INTERFACENAME e, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF e_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA";
BEGIN
  U0 : uart_wrapper
    PORT MAP (
      clk => clk,
      reset => reset,
      e_dout => e_dout,
      e_empty_n => e_empty_n,
      e_read => e_read,
      s_din => s_din,
      s_full_n => s_full_n,
      s_write => s_write
    );
END uart_wrapper_0_arch;
