-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filtre1_do_filtre is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    filtre1_y0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    filtre1_y0_ap_vld : OUT STD_LOGIC;
    filtre1_x0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    filtre1_x0_ap_vld : OUT STD_LOGIC;
    filtre1_mem_x_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    filtre1_mem_x_ce0 : OUT STD_LOGIC;
    filtre1_mem_x_we0 : OUT STD_LOGIC;
    filtre1_mem_x_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    filtre1_mem_x_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    filtre1_mem_x_address1 : OUT STD_LOGIC_VECTOR (0 downto 0);
    filtre1_mem_x_ce1 : OUT STD_LOGIC;
    filtre1_mem_x_we1 : OUT STD_LOGIC;
    filtre1_mem_x_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    filtre1_mem_y_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    filtre1_mem_y_ce0 : OUT STD_LOGIC;
    filtre1_mem_y_we0 : OUT STD_LOGIC;
    filtre1_mem_y_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    filtre1_mem_y_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    filtre1_mem_y_address1 : OUT STD_LOGIC_VECTOR (0 downto 0);
    filtre1_mem_y_ce1 : OUT STD_LOGIC;
    filtre1_mem_y_we1 : OUT STD_LOGIC;
    filtre1_mem_y_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    e_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_full_n : IN STD_LOGIC;
    s_write : OUT STD_LOGIC );
end;


architecture behav of filtre1_do_filtre is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (23 downto 0) := "000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (23 downto 0) := "000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (23 downto 0) := "000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (23 downto 0) := "000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (23 downto 0) := "000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (23 downto 0) := "000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (23 downto 0) := "000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (23 downto 0) := "000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (23 downto 0) := "000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (23 downto 0) := "001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (23 downto 0) := "010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (23 downto 0) := "100000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv64_3FEF800000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111101111100000000000000000000000000000000000000000000000";
    constant ap_const_lv64_3FEF000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111101111000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal e_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exitcond_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal s_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state24 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state24 : signal is "none";
    signal grp_fu_195_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal reg_218 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_fu_207_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal reg_223 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal grp_fu_203_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal reg_229 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal i_fu_241_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_256 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal val_reg_261 : STD_LOGIC_VECTOR (31 downto 0);
    signal filtre1_mem_y_addr_1_reg_268 : STD_LOGIC_VECTOR (0 downto 0);
    signal filtre1_mem_x_addr_1_reg_274 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_198_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_reg_280 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_212_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_reg_285 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_191_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal y_reg_290 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal i1_reg_180 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal filtre1_mem_x_addr_gep_fu_111_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal filtre1_mem_y_addr_gep_fu_125_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal filtre1_mem_x_addr_2_gep_fu_139_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal filtre1_mem_y_addr_2_gep_fu_152_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_247_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_fu_195_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_203_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_203_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal grp_fu_207_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_203_opcode : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (23 downto 0);

    component filtre1_fptrunc_6eOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component filtre1_fpext_32nfYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component filtre1_dadddsub_g8j IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        opcode : IN STD_LOGIC_VECTOR (1 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component filtre1_dmul_64nshbi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    filtre1_fptrunc_6eOg_U36 : component filtre1_fptrunc_6eOg
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => reg_229,
        dout => y_fu_191_p1);

    filtre1_fpext_32nfYi_U37 : component filtre1_fpext_32nfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        din0 => grp_fu_195_p0,
        dout => grp_fu_195_p1);

    filtre1_fpext_32nfYi_U38 : component filtre1_fpext_32nfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        din0 => filtre1_mem_x_q0,
        dout => tmp_4_fu_198_p1);

    filtre1_dadddsub_g8j_U39 : component filtre1_dadddsub_g8j
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_203_p0,
        din1 => grp_fu_203_p1,
        opcode => grp_fu_203_opcode,
        ce => ap_const_logic_1,
        dout => grp_fu_203_p2);

    filtre1_dmul_64nshbi_U40 : component filtre1_dmul_64nshbi
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => reg_218,
        din1 => grp_fu_207_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_207_p2);

    filtre1_dmul_64nshbi_U41 : component filtre1_dmul_64nshbi
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_4_reg_280,
        din1 => ap_const_lv64_3FEF800000000000,
        ce => ap_const_logic_1,
        dout => grp_fu_212_p2);





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


    i1_reg_180_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((s_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state24))) then 
                i1_reg_180 <= i_reg_256;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i1_reg_180 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n))) and (exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                filtre1_mem_x_addr_1_reg_274 <= tmp_s_fu_247_p1(1 - 1 downto 0);
                filtre1_mem_y_addr_1_reg_268 <= tmp_s_fu_247_p1(1 - 1 downto 0);
                val_reg_261 <= e_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n))) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                i_reg_256 <= i_fu_241_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state4))) then
                reg_218 <= grp_fu_195_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state16))) then
                reg_223 <= grp_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state22) or (ap_const_logic_1 = ap_CS_fsm_state16))) then
                reg_229 <= grp_fu_203_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                tmp_4_reg_280 <= tmp_4_fu_198_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                tmp_5_reg_285 <= grp_fu_212_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then
                y_reg_290 <= y_fu_191_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (e_empty_n, s_full_n, ap_CS_fsm, ap_CS_fsm_state3, exitcond_fu_235_p2, ap_CS_fsm_state24)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if ((not(((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n))) and (exitcond_fu_235_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n))) and (exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
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
                if (((s_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state24))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state24;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state24 <= ap_CS_fsm(23);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state3_assign_proc : process(e_empty_n, exitcond_fu_235_p2)
    begin
                ap_block_state3 <= ((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n));
    end process;


    e_blk_n_assign_proc : process(e_empty_n, ap_CS_fsm_state3, exitcond_fu_235_p2)
    begin
        if (((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            e_blk_n <= e_empty_n;
        else 
            e_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    e_read_assign_proc : process(e_empty_n, ap_CS_fsm_state3, exitcond_fu_235_p2)
    begin
        if ((not(((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n))) and (exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            e_read <= ap_const_logic_1;
        else 
            e_read <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_235_p2 <= "1" when (i1_reg_180 = ap_const_lv2_2) else "0";
    filtre1_mem_x_addr_2_gep_fu_139_p3 <= ap_const_lv64_1(1 - 1 downto 0);
    filtre1_mem_x_addr_gep_fu_111_p3 <= ap_const_lv64_0(1 - 1 downto 0);

    filtre1_mem_x_address0_assign_proc : process(ap_rst, ap_CS_fsm_state3, filtre1_mem_x_addr_gep_fu_111_p3, tmp_s_fu_247_p1)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_address0 <= filtre1_mem_x_addr_gep_fu_111_p3;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                filtre1_mem_x_address0 <= tmp_s_fu_247_p1(1 - 1 downto 0);
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_x_address0 <= ap_const_lv64_0(1 - 1 downto 0);
            else 
                filtre1_mem_x_address0 <= "X";
            end if; 
        end if;
    end process;


    filtre1_mem_x_address1_assign_proc : process(ap_rst, ap_CS_fsm_state4, filtre1_mem_x_addr_1_reg_274, filtre1_mem_x_addr_2_gep_fu_139_p3)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_address1 <= filtre1_mem_x_addr_2_gep_fu_139_p3;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                filtre1_mem_x_address1 <= filtre1_mem_x_addr_1_reg_274;
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_x_address1 <= ap_const_lv64_1(1 - 1 downto 0);
            else 
                filtre1_mem_x_address1 <= "X";
            end if; 
        end if;
    end process;


    filtre1_mem_x_ce0_assign_proc : process(ap_rst, e_empty_n, ap_CS_fsm_state3, exitcond_fu_235_p2)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_ce0 <= ap_const_logic_1;
        else
            if ((not(((exitcond_fu_235_p2 = ap_const_lv1_0) and (ap_const_logic_0 = e_empty_n))) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                filtre1_mem_x_ce0 <= ap_const_logic_1;
            else 
                filtre1_mem_x_ce0 <= ap_const_logic_0;
            end if; 
        end if;
    end process;


    filtre1_mem_x_ce1_assign_proc : process(ap_rst, ap_CS_fsm_state4)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_ce1 <= ap_const_logic_1;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                filtre1_mem_x_ce1 <= ap_const_logic_1;
            else 
                filtre1_mem_x_ce1 <= ap_const_logic_0;
            end if; 
        end if;
    end process;

    filtre1_mem_x_d0 <= ap_const_lv32_0;

    filtre1_mem_x_d1_assign_proc : process(ap_rst, ap_CS_fsm_state4, val_reg_261)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_d1 <= ap_const_lv32_0;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                filtre1_mem_x_d1 <= val_reg_261;
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_x_d1 <= ap_const_lv32_0;
            else 
                filtre1_mem_x_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if; 
        end if;
    end process;


    filtre1_mem_x_we0_assign_proc : process(ap_rst)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_we0 <= ap_const_logic_1;
        else
            if (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_x_we0 <= ap_const_logic_1;
            else 
                filtre1_mem_x_we0 <= ap_const_logic_0;
            end if; 
        end if;
    end process;


    filtre1_mem_x_we1_assign_proc : process(ap_rst, ap_CS_fsm_state4)
    begin
        if (ap_rst = '1') then
            filtre1_mem_x_we1 <= ap_const_logic_1;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                filtre1_mem_x_we1 <= ap_const_logic_1;
            else 
                filtre1_mem_x_we1 <= ap_const_logic_0;
            end if; 
        end if;
    end process;

    filtre1_mem_y_addr_2_gep_fu_152_p3 <= ap_const_lv64_1(1 - 1 downto 0);
    filtre1_mem_y_addr_gep_fu_125_p3 <= ap_const_lv64_0(1 - 1 downto 0);

    filtre1_mem_y_address0_assign_proc : process(ap_rst, filtre1_mem_y_addr_1_reg_268, filtre1_mem_y_addr_gep_fu_125_p3, ap_CS_fsm_state9)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_address0 <= filtre1_mem_y_addr_gep_fu_125_p3;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                filtre1_mem_y_address0 <= filtre1_mem_y_addr_1_reg_268;
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_y_address0 <= ap_const_lv64_0(1 - 1 downto 0);
            else 
                filtre1_mem_y_address0 <= "X";
            end if; 
        end if;
    end process;


    filtre1_mem_y_address1_assign_proc : process(ap_rst, filtre1_mem_y_addr_1_reg_268, ap_CS_fsm_state23, filtre1_mem_y_addr_2_gep_fu_152_p3)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_address1 <= filtre1_mem_y_addr_2_gep_fu_152_p3;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
                filtre1_mem_y_address1 <= filtre1_mem_y_addr_1_reg_268;
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_y_address1 <= ap_const_lv64_1(1 - 1 downto 0);
            else 
                filtre1_mem_y_address1 <= "X";
            end if; 
        end if;
    end process;


    filtre1_mem_y_ce0_assign_proc : process(ap_rst, ap_CS_fsm_state9)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_ce0 <= ap_const_logic_1;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                filtre1_mem_y_ce0 <= ap_const_logic_1;
            else 
                filtre1_mem_y_ce0 <= ap_const_logic_0;
            end if; 
        end if;
    end process;


    filtre1_mem_y_ce1_assign_proc : process(ap_rst, ap_CS_fsm_state23)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_ce1 <= ap_const_logic_1;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
                filtre1_mem_y_ce1 <= ap_const_logic_1;
            else 
                filtre1_mem_y_ce1 <= ap_const_logic_0;
            end if; 
        end if;
    end process;

    filtre1_mem_y_d0 <= ap_const_lv32_0;

    filtre1_mem_y_d1_assign_proc : process(ap_rst, y_fu_191_p1, ap_CS_fsm_state23)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_d1 <= ap_const_lv32_0;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
                filtre1_mem_y_d1 <= y_fu_191_p1;
            elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_y_d1 <= ap_const_lv32_0;
            else 
                filtre1_mem_y_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if; 
        end if;
    end process;


    filtre1_mem_y_we0_assign_proc : process(ap_rst)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_we0 <= ap_const_logic_1;
        else
            if (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                filtre1_mem_y_we0 <= ap_const_logic_1;
            else 
                filtre1_mem_y_we0 <= ap_const_logic_0;
            end if; 
        end if;
    end process;


    filtre1_mem_y_we1_assign_proc : process(ap_rst, ap_CS_fsm_state23)
    begin
        if (ap_rst = '1') then
            filtre1_mem_y_we1 <= ap_const_logic_1;
        else
            if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
                filtre1_mem_y_we1 <= ap_const_logic_1;
            else 
                filtre1_mem_y_we1 <= ap_const_logic_0;
            end if; 
        end if;
    end process;

    filtre1_x0 <= val_reg_261;

    filtre1_x0_ap_vld_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            filtre1_x0_ap_vld <= ap_const_logic_1;
        else 
            filtre1_x0_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    filtre1_y0 <= y_reg_290;

    filtre1_y0_ap_vld_assign_proc : process(s_full_n, ap_CS_fsm_state24)
    begin
        if (((s_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state24))) then 
            filtre1_y0_ap_vld <= ap_const_logic_1;
        else 
            filtre1_y0_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_195_p0_assign_proc : process(filtre1_mem_y_q0, ap_CS_fsm_state4, ap_CS_fsm_state10, val_reg_261)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            grp_fu_195_p0 <= filtre1_mem_y_q0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_195_p0 <= val_reg_261;
        else 
            grp_fu_195_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_203_opcode_assign_proc : process(ap_CS_fsm_state11, ap_CS_fsm_state17)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            grp_fu_203_opcode <= ap_const_lv2_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
            grp_fu_203_opcode <= ap_const_lv2_0;
        else 
            grp_fu_203_opcode <= "XX";
        end if; 
    end process;


    grp_fu_203_p0_assign_proc : process(reg_223, reg_229, ap_CS_fsm_state11, ap_CS_fsm_state17)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
            grp_fu_203_p0 <= reg_229;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            grp_fu_203_p0 <= reg_223;
        else 
            grp_fu_203_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_203_p1_assign_proc : process(reg_223, tmp_5_reg_285, ap_CS_fsm_state11, ap_CS_fsm_state17)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
            grp_fu_203_p1 <= reg_223;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            grp_fu_203_p1 <= tmp_5_reg_285;
        else 
            grp_fu_203_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_207_p1_assign_proc : process(ap_CS_fsm_state11, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            grp_fu_207_p1 <= ap_const_lv64_3FEF000000000000;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_207_p1 <= ap_const_lv64_3FEF800000000000;
        else 
            grp_fu_207_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_fu_241_p2 <= std_logic_vector(unsigned(i1_reg_180) + unsigned(ap_const_lv2_1));

    s_blk_n_assign_proc : process(s_full_n, ap_CS_fsm_state24)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state24)) then 
            s_blk_n <= s_full_n;
        else 
            s_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s_din <= y_reg_290;

    s_write_assign_proc : process(s_full_n, ap_CS_fsm_state24)
    begin
        if (((s_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state24))) then 
            s_write <= ap_const_logic_1;
        else 
            s_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_s_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_reg_180),64));
end behav;