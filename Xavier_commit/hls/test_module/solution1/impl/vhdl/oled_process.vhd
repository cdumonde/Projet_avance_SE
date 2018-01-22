-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity oled_process is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    en : OUT STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR (5 downto 0);
    e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s_f_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_f_full_n : IN STD_LOGIC;
    s_f_write : OUT STD_LOGIC );
end;


architecture behav of oled_process is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "oled_process,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.263000,HLS_SYN_LAT=386,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=366,HLS_SYN_LUT=471}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_oled_process_do_oled_process_fu_70_oled_process_sum : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_oled_process_do_oled_process_fu_70_oled_process_sum_ap_vld : STD_LOGIC;
    signal grp_oled_process_do_oled_process_fu_70_oled_process_save : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_oled_process_do_oled_process_fu_70_oled_process_save_ap_vld : STD_LOGIC;
    signal grp_oled_process_do_oled_process_fu_70_en : STD_LOGIC;
    signal grp_oled_process_do_oled_process_fu_70_en_ap_vld : STD_LOGIC;
    signal grp_oled_process_do_oled_process_fu_70_s : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_oled_process_do_oled_process_fu_70_s_ap_vld : STD_LOGIC;
    signal grp_oled_process_do_oled_process_fu_70_e_read : STD_LOGIC;
    signal grp_oled_process_do_oled_process_fu_70_s_f_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_oled_process_do_oled_process_fu_70_s_f_write : STD_LOGIC;

    component oled_process_do_oled_process IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        oled_process_sum : OUT STD_LOGIC_VECTOR (31 downto 0);
        oled_process_sum_ap_vld : OUT STD_LOGIC;
        oled_process_save : OUT STD_LOGIC_VECTOR (31 downto 0);
        oled_process_save_ap_vld : OUT STD_LOGIC;
        en : OUT STD_LOGIC;
        en_ap_vld : OUT STD_LOGIC;
        s : OUT STD_LOGIC_VECTOR (5 downto 0);
        s_ap_vld : OUT STD_LOGIC;
        e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_f_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_f_full_n : IN STD_LOGIC;
        s_f_write : OUT STD_LOGIC );
    end component;



begin
    grp_oled_process_do_oled_process_fu_70 : component oled_process_do_oled_process
    port map (
        ap_clk => clk,
        ap_rst => reset,
        oled_process_sum => grp_oled_process_do_oled_process_fu_70_oled_process_sum,
        oled_process_sum_ap_vld => grp_oled_process_do_oled_process_fu_70_oled_process_sum_ap_vld,
        oled_process_save => grp_oled_process_do_oled_process_fu_70_oled_process_save,
        oled_process_save_ap_vld => grp_oled_process_do_oled_process_fu_70_oled_process_save_ap_vld,
        en => grp_oled_process_do_oled_process_fu_70_en,
        en_ap_vld => grp_oled_process_do_oled_process_fu_70_en_ap_vld,
        s => grp_oled_process_do_oled_process_fu_70_s,
        s_ap_vld => grp_oled_process_do_oled_process_fu_70_s_ap_vld,
        e_dout => e_dout,
        e_empty_n => e_empty_n,
        e_read => grp_oled_process_do_oled_process_fu_70_e_read,
        s_f_din => grp_oled_process_do_oled_process_fu_70_s_f_din,
        s_f_full_n => s_f_full_n,
        s_f_write => grp_oled_process_do_oled_process_fu_70_s_f_write);





    en_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((ap_const_logic_1 = grp_oled_process_do_oled_process_fu_70_en_ap_vld)) then 
                en <= grp_oled_process_do_oled_process_fu_70_en;
            end if; 
        end if;
    end process;


    s_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((ap_const_logic_1 = grp_oled_process_do_oled_process_fu_70_s_ap_vld)) then 
                s <= grp_oled_process_do_oled_process_fu_70_s;
            end if; 
        end if;
    end process;

    e_read <= grp_oled_process_do_oled_process_fu_70_e_read;
    s_f_din <= grp_oled_process_do_oled_process_fu_70_s_f_din;
    s_f_write <= grp_oled_process_do_oled_process_fu_70_s_f_write;
end behav;