-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_level is
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


architecture behav of top_level is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "top_level,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.608000,HLS_SYN_LAT=25,HLS_SYN_TPT=none,HLS_SYN_MEM=116,HLS_SYN_DSP=31,HLS_SYN_FF=4896,HLS_SYN_LUT=8450}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal grp_UartModIn_fu_236_e_read : STD_LOGIC;
    signal grp_UartModIn_fu_236_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_UartModIn_fu_236_s_write : STD_LOGIC;
    signal grp_UartModOut_fu_250_e_read : STD_LOGIC;
    signal grp_UartModOut_fu_250_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_UartModOut_fu_250_s_write : STD_LOGIC;
    signal grp_doubleur_fu_264_e_read : STD_LOGIC;
    signal grp_doubleur_fu_264_s1_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_doubleur_fu_264_s1_write : STD_LOGIC;
    signal grp_doubleur_fu_264_s2_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_doubleur_fu_264_s2_write : STD_LOGIC;
    signal grp_comparateur_fu_282_e1_read : STD_LOGIC;
    signal grp_comparateur_fu_282_e2_read : STD_LOGIC;
    signal grp_comparateur_fu_282_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_comparateur_fu_282_s_write : STD_LOGIC;
    signal grp_filtre1_fu_304_e_read : STD_LOGIC;
    signal grp_filtre1_fu_304_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_filtre1_fu_304_s_write : STD_LOGIC;
    signal grp_carre_fu_326_e_read : STD_LOGIC;
    signal grp_carre_fu_326_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_carre_fu_326_s_write : STD_LOGIC;
    signal grp_filtre2_fu_342_e_read : STD_LOGIC;
    signal grp_filtre2_fu_342_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_filtre2_fu_342_s_write : STD_LOGIC;
    signal grp_racine_fu_364_e_read : STD_LOGIC;
    signal grp_racine_fu_364_s_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_racine_fu_364_s_write : STD_LOGIC;
    signal fifo1_12_full_n : STD_LOGIC;
    signal fifo1_12_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal fifo1_12_empty_n : STD_LOGIC;
    signal doub1_1_full_n : STD_LOGIC;
    signal doub1_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal doub1_1_empty_n : STD_LOGIC;
    signal doub2_1_full_n : STD_LOGIC;
    signal doub2_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal doub2_1_empty_n : STD_LOGIC;
    signal fifo2_13_full_n : STD_LOGIC;
    signal fifo2_13_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal fifo2_13_empty_n : STD_LOGIC;
    signal fifo3_1_full_n : STD_LOGIC;
    signal fifo3_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal fifo3_1_empty_n : STD_LOGIC;
    signal fifo4_1_full_n : STD_LOGIC;
    signal fifo4_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal fifo4_1_empty_n : STD_LOGIC;
    signal fifo2_1_full_n : STD_LOGIC;
    signal fifo2_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal fifo2_1_empty_n : STD_LOGIC;

    component UartModIn IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC );
    end component;


    component UartModOut IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC );
    end component;


    component doubleur IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s1_full_n : IN STD_LOGIC;
        s1_write : OUT STD_LOGIC;
        s2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s2_full_n : IN STD_LOGIC;
        s2_write : OUT STD_LOGIC;
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component comparateur IS
    port (
        e1_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e1_empty_n : IN STD_LOGIC;
        e1_read : OUT STD_LOGIC;
        e2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e2_empty_n : IN STD_LOGIC;
        e2_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


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


    component carre IS
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


    component filtre2 IS
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


    component racine IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC );
    end component;


    component fifo_w32_d8192_A IS
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
    grp_UartModIn_fu_236 : component UartModIn
    port map (
        e_dout => e_dout,
        e_empty_n => e_empty_n,
        e_read => grp_UartModIn_fu_236_e_read,
        s_din => grp_UartModIn_fu_236_s_din,
        s_full_n => fifo1_12_full_n,
        s_write => grp_UartModIn_fu_236_s_write,
        clk => clk,
        rst => reset);

    grp_UartModOut_fu_250 : component UartModOut
    port map (
        e_dout => fifo2_1_dout,
        e_empty_n => fifo2_1_empty_n,
        e_read => grp_UartModOut_fu_250_e_read,
        s_din => grp_UartModOut_fu_250_s_din,
        s_full_n => s_full_n,
        s_write => grp_UartModOut_fu_250_s_write,
        clk => clk,
        rst => reset);

    grp_doubleur_fu_264 : component doubleur
    port map (
        e_dout => fifo1_12_dout,
        e_empty_n => fifo1_12_empty_n,
        e_read => grp_doubleur_fu_264_e_read,
        s1_din => grp_doubleur_fu_264_s1_din,
        s1_full_n => doub1_1_full_n,
        s1_write => grp_doubleur_fu_264_s1_write,
        s2_din => grp_doubleur_fu_264_s2_din,
        s2_full_n => doub2_1_full_n,
        s2_write => grp_doubleur_fu_264_s2_write,
        clk => clk,
        reset => reset);

    grp_comparateur_fu_282 : component comparateur
    port map (
        e1_dout => doub1_1_dout,
        e1_empty_n => doub1_1_empty_n,
        e1_read => grp_comparateur_fu_282_e1_read,
        e2_dout => fifo4_1_dout,
        e2_empty_n => fifo4_1_empty_n,
        e2_read => grp_comparateur_fu_282_e2_read,
        s_din => grp_comparateur_fu_282_s_din,
        s_full_n => fifo2_1_full_n,
        s_write => grp_comparateur_fu_282_s_write,
        clk => clk,
        reset => reset);

    grp_carre_fu_326 : component carre
    port map (
        e_dout => doub2_1_dout,
        e_empty_n => doub2_1_empty_n,
        e_read => grp_carre_fu_326_e_read,
        s_din => grp_carre_fu_326_s_din,
        s_full_n => fifo2_13_full_n,
        s_write => grp_carre_fu_326_s_write,
        clk => clk,
        reset => reset);

    grp_filtre2_fu_342 : component filtre2
    port map (
        e_dout => fifo2_13_dout,
        e_empty_n => fifo2_13_empty_n,
        e_read => grp_filtre2_fu_342_e_read,
        s_din => grp_filtre2_fu_342_s_din,
        s_full_n => fifo3_1_full_n,
        s_write => grp_filtre2_fu_342_s_write,
        clk => clk,
        reset => reset);

    grp_racine_fu_364 : component racine
    port map (
        e_dout => fifo3_1_dout,
        e_empty_n => fifo3_1_empty_n,
        e_read => grp_racine_fu_364_e_read,
        s_din => grp_racine_fu_364_s_din,
        s_full_n => fifo4_1_full_n,
        s_write => grp_racine_fu_364_s_write);

    fifo2_1_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_comparateur_fu_282_s_din,
        if_full_n => fifo2_1_full_n,
        if_write => grp_comparateur_fu_282_s_write,
        if_dout => fifo2_1_dout,
        if_empty_n => fifo2_1_empty_n,
        if_read => grp_UartModOut_fu_250_e_read);

    fifo1_12_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_UartModIn_fu_236_s_din,
        if_full_n => fifo1_12_full_n,
        if_write => grp_UartModIn_fu_236_s_write,
        if_dout => fifo1_12_dout,
        if_empty_n => fifo1_12_empty_n,
        if_read => grp_doubleur_fu_264_e_read);

    fifo2_13_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_carre_fu_326_s_din,
        if_full_n => fifo2_13_full_n,
        if_write => grp_carre_fu_326_s_write,
        if_dout => fifo2_13_dout,
        if_empty_n => fifo2_13_empty_n,
        if_read => grp_filtre2_fu_342_e_read);

    fifo3_1_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_filtre2_fu_342_s_din,
        if_full_n => fifo3_1_full_n,
        if_write => grp_filtre2_fu_342_s_write,
        if_dout => fifo3_1_dout,
        if_empty_n => fifo3_1_empty_n,
        if_read => grp_racine_fu_364_e_read);

    fifo4_1_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_racine_fu_364_s_din,
        if_full_n => fifo4_1_full_n,
        if_write => grp_racine_fu_364_s_write,
        if_dout => fifo4_1_dout,
        if_empty_n => fifo4_1_empty_n,
        if_read => grp_comparateur_fu_282_e2_read);

    doub1_1_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_doubleur_fu_264_s1_din,
        if_full_n => doub1_1_full_n,
        if_write => grp_doubleur_fu_264_s1_write,
        if_dout => doub1_1_dout,
        if_empty_n => doub1_1_empty_n,
        if_read => grp_comparateur_fu_282_e1_read);

    doub2_1_fifo_U : component fifo_w32_d8192_A
    port map (
        clk => clk,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_doubleur_fu_264_s2_din,
        if_full_n => doub2_1_full_n,
        if_write => grp_doubleur_fu_264_s2_write,
        if_dout => doub2_1_dout,
        if_empty_n => doub2_1_empty_n,
        if_read => grp_carre_fu_326_e_read);




    e_read <= grp_UartModIn_fu_236_e_read;
    s_din <= grp_UartModOut_fu_250_s_din;
    s_write <= grp_UartModOut_fu_250_s_write;
end behav;
