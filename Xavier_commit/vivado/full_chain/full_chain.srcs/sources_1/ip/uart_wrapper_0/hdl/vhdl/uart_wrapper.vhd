-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity uart_wrapper is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_full_n : IN STD_LOGIC;
    s_write : OUT STD_LOGIC );
end;


architecture behav of uart_wrapper is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "uart_wrapper,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.608000,HLS_SYN_LAT=17,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=25,HLS_SYN_FF=2238,HLS_SYN_LUT=1963}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_filtre1_fu_96_e_read : STD_LOGIC;
    signal grp_filtre1_fu_96_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_filtre1_fu_96_s_write : STD_LOGIC;
    signal grp_uart_wrapper_do_action2_fu_118_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_uart_wrapper_do_action2_fu_118_s_write : STD_LOGIC;
    signal grp_uart_wrapper_do_action2_fu_118_FIFO_O_1_read : STD_LOGIC;
    signal grp_uart_wrapper_do_action1_fu_150_e_read : STD_LOGIC;
    signal grp_uart_wrapper_do_action1_fu_150_FIFO_I_1_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_uart_wrapper_do_action1_fu_150_FIFO_I_1_write : STD_LOGIC;
    signal FIFO_O_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal FIFO_O_1_empty_n : STD_LOGIC;
    signal FIFO_I_1_full_n : STD_LOGIC;
    signal FIFO_I_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal FIFO_I_1_empty_n : STD_LOGIC;
    signal FIFO_O_1_full_n : STD_LOGIC;

    component filtre1 IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component uart_wrapper_do_action2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        FIFO_O_1_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        FIFO_O_1_empty_n : IN STD_LOGIC;
        FIFO_O_1_read : OUT STD_LOGIC );
    end component;


    component uart_wrapper_do_action1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        FIFO_I_1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        FIFO_I_1_full_n : IN STD_LOGIC;
        FIFO_I_1_write : OUT STD_LOGIC );
    end component;


    component fifo_w32_d192_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    grp_filtre1_fu_96 : component filtre1
    port map (
        e_dout => FIFO_I_1_dout,
        e_empty_n => FIFO_I_1_empty_n,
        e_read => grp_filtre1_fu_96_e_read,
        s_din => grp_filtre1_fu_96_s_din,
        s_full_n => FIFO_O_1_full_n,
        s_write => grp_filtre1_fu_96_s_write,
        clk => clk,
        reset => reset);

    grp_uart_wrapper_do_action2_fu_118 : component uart_wrapper_do_action2
    port map (
        ap_clk => clk,
        ap_rst => reset,
        s_din => grp_uart_wrapper_do_action2_fu_118_s_din,
        s_full_n => s_full_n,
        s_write => grp_uart_wrapper_do_action2_fu_118_s_write,
        FIFO_O_1_dout => FIFO_O_1_dout,
        FIFO_O_1_empty_n => FIFO_O_1_empty_n,
        FIFO_O_1_read => grp_uart_wrapper_do_action2_fu_118_FIFO_O_1_read);

    grp_uart_wrapper_do_action1_fu_150 : component uart_wrapper_do_action1
    port map (
        ap_clk => clk,
        ap_rst => reset,
        e_dout => e_dout,
        e_empty_n => e_empty_n,
        e_read => grp_uart_wrapper_do_action1_fu_150_e_read,
        FIFO_I_1_din => grp_uart_wrapper_do_action1_fu_150_FIFO_I_1_din,
        FIFO_I_1_full_n => FIFO_I_1_full_n,
        FIFO_I_1_write => grp_uart_wrapper_do_action1_fu_150_FIFO_I_1_write);

    FIFO_I_1_fifo_U : component fifo_w32_d192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_uart_wrapper_do_action1_fu_150_FIFO_I_1_din,
        if_full_n => FIFO_I_1_full_n,
        if_write => grp_uart_wrapper_do_action1_fu_150_FIFO_I_1_write,
        if_dout => FIFO_I_1_dout,
        if_empty_n => FIFO_I_1_empty_n,
        if_read => grp_filtre1_fu_96_e_read);

    FIFO_O_1_fifo_U : component fifo_w32_d192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_filtre1_fu_96_s_din,
        if_full_n => FIFO_O_1_full_n,
        if_write => grp_filtre1_fu_96_s_write,
        if_dout => FIFO_O_1_dout,
        if_empty_n => FIFO_O_1_empty_n,
        if_read => grp_uart_wrapper_do_action2_fu_118_FIFO_O_1_read);




    e_read <= grp_uart_wrapper_do_action1_fu_150_e_read;
    s_din <= grp_uart_wrapper_do_action2_fu_118_s_din;
    s_write <= grp_uart_wrapper_do_action2_fu_118_s_write;
end behav;
