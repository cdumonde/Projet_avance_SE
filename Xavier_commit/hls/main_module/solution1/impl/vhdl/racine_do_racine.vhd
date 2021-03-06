-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity racine_do_racine is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    racine_x : OUT STD_LOGIC_VECTOR (31 downto 0);
    racine_x_ap_vld : OUT STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_full_n : IN STD_LOGIC;
    s_write : OUT STD_LOGIC );
end;


architecture behav of racine_do_racine is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (26 downto 0) := "000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (26 downto 0) := "000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (26 downto 0) := "000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (26 downto 0) := "000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (26 downto 0) := "000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (26 downto 0) := "000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (26 downto 0) := "000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (26 downto 0) := "000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (26 downto 0) := "000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (26 downto 0) := "001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (26 downto 0) := "010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (26 downto 0) := "100000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_42AE0000 : STD_LOGIC_VECTOR (31 downto 0) := "01000010101011100000000000000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_181 : STD_LOGIC_VECTOR (8 downto 0) := "110000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_36 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110110";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal e_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal s_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state27 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state27 : signal is "none";
    signal val_reg_300 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal p_Val2_2_fu_248_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_Val2_2_reg_310 : STD_LOGIC_VECTOR (30 downto 0);
    signal abs_fu_288_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal abs_reg_315 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_119_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_reg_325 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_fu_122_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_reg_330 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal grp_fu_114_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_336 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state26 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state26 : signal is "none";
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal grp_fu_119_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal p_Val2_s_fu_127_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal loc_V_1_fu_148_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_1_fu_152_p4 : STD_LOGIC_VECTOR (24 downto 0);
    signal loc_V_fu_138_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_cast1_fu_166_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_fu_170_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_3_fu_184_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal isNeg_fu_176_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_cast_fu_190_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_1_fu_194_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_1_cast_fu_202_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_1_cast_cas_fu_206_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_1_cast2_fu_162_p1 : STD_LOGIC_VECTOR (78 downto 0);
    signal tmp_4_fu_210_p1 : STD_LOGIC_VECTOR (78 downto 0);
    signal r_V_fu_214_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_15_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_1_fu_220_p2 : STD_LOGIC_VECTOR (78 downto 0);
    signal tmp_s_fu_234_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_2_fu_238_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal result_V_fu_256_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_V_1_fu_259_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_V_3_fu_265_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_16_fu_272_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal abscond_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal neg_cast_fu_276_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (26 downto 0);

    component carre_fmul_32ns_3bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component comparateur_sitofcud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component racine_fsqrt_32nsncg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    carre_fmul_32ns_3bkb_U63 : component carre_fmul_32ns_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_7_reg_330,
        din1 => ap_const_lv32_42AE0000,
        ce => ap_const_logic_1,
        dout => grp_fu_114_p2);

    comparateur_sitofcud_U64 : component comparateur_sitofcud
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_119_p0,
        ce => ap_const_logic_1,
        dout => grp_fu_119_p1);

    racine_fsqrt_32nsncg_U65 : component racine_fsqrt_32nsncg
    generic map (
        ID => 1,
        NUM_STAGE => 12,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ap_const_lv32_0,
        din1 => tmp_6_reg_325,
        ce => ap_const_logic_1,
        dout => grp_fu_122_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state2;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                abs_reg_315 <= abs_fu_288_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                p_Result_s_reg_305 <= p_Val2_s_fu_127_p1(31 downto 31);
                p_Val2_2_reg_310 <= p_Val2_2_fu_248_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                tmp_6_reg_325 <= grp_fu_119_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then
                tmp_7_reg_330 <= grp_fu_122_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state26)) then
                tmp_8_reg_336 <= grp_fu_114_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((e_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                val_reg_300 <= e_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (e_empty_n, s_full_n, ap_CS_fsm, ap_CS_fsm_state2, ap_CS_fsm_state27)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                if (((e_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                if (((s_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state27))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state27;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    abs_fu_288_p3 <= 
        tmp_16_fu_272_p1 when (abscond_fu_282_p2(0) = '1') else 
        neg_cast_fu_276_p2;
    abscond_fu_282_p2 <= "1" when (signed(result_V_3_fu_265_p3) > signed(ap_const_lv32_0)) else "0";
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state26 <= ap_CS_fsm(25);
    ap_CS_fsm_state27 <= ap_CS_fsm(26);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    e_blk_n_assign_proc : process(e_empty_n, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            e_blk_n <= e_empty_n;
        else 
            e_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    e_read_assign_proc : process(e_empty_n, ap_CS_fsm_state2)
    begin
        if (((e_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            e_read <= ap_const_logic_1;
        else 
            e_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_119_p0 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(abs_reg_315),32));
    isNeg_fu_176_p3 <= sh_assign_fu_170_p2(8 downto 8);
    loc_V_1_fu_148_p1 <= p_Val2_s_fu_127_p1(23 - 1 downto 0);
    loc_V_fu_138_p4 <= p_Val2_s_fu_127_p1(30 downto 23);
    neg_cast_fu_276_p2 <= std_logic_vector(unsigned(ap_const_lv31_0) - unsigned(tmp_16_fu_272_p1));
    p_Val2_2_fu_248_p3 <= 
        tmp_s_fu_234_p1 when (isNeg_fu_176_p3(0) = '1') else 
        tmp_2_fu_238_p4;
    p_Val2_s_fu_127_p1 <= val_reg_300;
    r_V_1_fu_220_p2 <= std_logic_vector(shift_left(unsigned(tmp_1_cast2_fu_162_p1),to_integer(unsigned('0' & tmp_4_fu_210_p1(31-1 downto 0)))));
    r_V_fu_214_p2 <= std_logic_vector(shift_right(unsigned(tmp_1_fu_152_p4),to_integer(unsigned('0' & sh_assign_1_cast_cas_fu_206_p1(25-1 downto 0)))));
    racine_x <= tmp_7_reg_330;

    racine_x_ap_vld_assign_proc : process(ap_CS_fsm_state23)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            racine_x_ap_vld <= ap_const_logic_1;
        else 
            racine_x_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    result_V_1_fu_259_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(result_V_fu_256_p1));
    result_V_3_fu_265_p3 <= 
        result_V_1_fu_259_p2 when (p_Result_s_reg_305(0) = '1') else 
        result_V_fu_256_p1;
    result_V_fu_256_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Val2_2_reg_310),32));

    s_blk_n_assign_proc : process(s_full_n, ap_CS_fsm_state27)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state27)) then 
            s_blk_n <= s_full_n;
        else 
            s_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s_din <= tmp_8_reg_336;

    s_write_assign_proc : process(s_full_n, ap_CS_fsm_state27)
    begin
        if (((s_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state27))) then 
            s_write <= ap_const_logic_1;
        else 
            s_write <= ap_const_logic_0;
        end if; 
    end process;

        sh_assign_1_cast_cas_fu_206_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sh_assign_1_fu_194_p3),25));

        sh_assign_1_cast_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sh_assign_1_fu_194_p3),32));

    sh_assign_1_fu_194_p3 <= 
        tmp_3_cast_fu_190_p1 when (isNeg_fu_176_p3(0) = '1') else 
        sh_assign_fu_170_p2;
    sh_assign_fu_170_p2 <= std_logic_vector(signed(ap_const_lv9_181) + signed(tmp_2_cast1_fu_166_p1));
    tmp_15_fu_226_p3 <= r_V_fu_214_p2(24 downto 24);
    tmp_16_fu_272_p1 <= result_V_3_fu_265_p3(31 - 1 downto 0);
    tmp_1_cast2_fu_162_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_152_p4),79));
    tmp_1_fu_152_p4 <= ((ap_const_lv1_1 & loc_V_1_fu_148_p1) & ap_const_lv1_0);
    tmp_2_cast1_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(loc_V_fu_138_p4),9));
    tmp_2_fu_238_p4 <= r_V_1_fu_220_p2(54 downto 24);
        tmp_3_cast_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_184_p2),9));

    tmp_3_fu_184_p2 <= std_logic_vector(unsigned(ap_const_lv8_7F) - unsigned(loc_V_fu_138_p4));
    tmp_4_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sh_assign_1_cast_fu_202_p1),79));
    tmp_s_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_15_fu_226_p3),31));
end behav;
