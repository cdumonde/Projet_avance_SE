// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _comparateur_do_comp_HH_
#define _comparateur_do_comp_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "comparateur_sitofcud.h"
#include "comparateur_fcmp_dEe.h"

namespace ap_rtl {

struct comparateur_do_comp : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_lv<32> > comparateur_in1;
    sc_out< sc_logic > comparateur_in1_ap_vld;
    sc_out< sc_lv<32> > comparateur_seuil;
    sc_out< sc_logic > comparateur_seuil_ap_vld;
    sc_out< sc_lv<32> > comparateur_result;
    sc_out< sc_logic > comparateur_result_ap_vld;
    sc_in< sc_lv<32> > e1_dout;
    sc_in< sc_logic > e1_empty_n;
    sc_out< sc_logic > e1_read;
    sc_in< sc_lv<32> > e2_dout;
    sc_in< sc_logic > e2_empty_n;
    sc_out< sc_logic > e2_read;
    sc_out< sc_lv<32> > s_din;
    sc_in< sc_logic > s_full_n;
    sc_out< sc_logic > s_write;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<5> > ap_var_for_const1;


    // Module declarations
    comparateur_do_comp(sc_module_name name);
    SC_HAS_PROCESS(comparateur_do_comp);

    ~comparateur_do_comp();

    sc_trace_file* mVcdFile;

    comparateur_sitofcud<1,6,32,32>* comparateur_sitofcud_U8;
    comparateur_fcmp_dEe<1,1,32,32,1>* comparateur_fcmp_dEe_U9;
    sc_signal< sc_logic > e1_blk_n;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > e2_blk_n;
    sc_signal< sc_logic > s_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > val_reg_411;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<32> > val_1_reg_416;
    sc_signal< sc_lv<1> > p_Result_s_reg_423;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<31> > p_Val2_6_fu_272_p3;
    sc_signal< sc_lv<31> > p_Val2_6_reg_428;
    sc_signal< sc_lv<31> > abs_fu_312_p3;
    sc_signal< sc_lv<31> > abs_reg_433;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > grp_fu_144_p1;
    sc_signal< sc_lv<32> > tmp_9_reg_443;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > notlhs_fu_358_p2;
    sc_signal< sc_lv<1> > notlhs_reg_450;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > notrhs_fu_364_p2;
    sc_signal< sc_lv<1> > notrhs_reg_455;
    sc_signal< sc_lv<1> > notlhs3_fu_370_p2;
    sc_signal< sc_lv<1> > notlhs3_reg_460;
    sc_signal< sc_lv<1> > notrhs4_fu_376_p2;
    sc_signal< sc_lv<1> > notrhs4_reg_465;
    sc_signal< sc_lv<1> > tmp_14_fu_147_p2;
    sc_signal< sc_lv<1> > tmp_14_reg_470;
    sc_signal< sc_lv<32> > tmp_10_fu_401_p3;
    sc_signal< sc_lv<32> > grp_fu_144_p0;
    sc_signal< sc_lv<32> > p_Val2_s_fu_151_p1;
    sc_signal< sc_lv<23> > loc_V_2_fu_172_p1;
    sc_signal< sc_lv<25> > tmp_s_fu_176_p4;
    sc_signal< sc_lv<8> > loc_V_fu_162_p4;
    sc_signal< sc_lv<9> > tmp_16_cast1_fu_190_p1;
    sc_signal< sc_lv<9> > sh_assign_fu_194_p2;
    sc_signal< sc_lv<8> > tmp_6_fu_208_p2;
    sc_signal< sc_lv<1> > isNeg_fu_200_p3;
    sc_signal< sc_lv<9> > tmp_17_cast_fu_214_p1;
    sc_signal< sc_lv<9> > sh_assign_2_fu_218_p3;
    sc_signal< sc_lv<32> > sh_assign_2_cast_fu_226_p1;
    sc_signal< sc_lv<25> > sh_assign_2_cast_cas_fu_230_p1;
    sc_signal< sc_lv<79> > tmp_15_cast2_fu_186_p1;
    sc_signal< sc_lv<79> > tmp_7_fu_234_p1;
    sc_signal< sc_lv<25> > r_V_fu_238_p2;
    sc_signal< sc_lv<1> > tmp_27_fu_250_p3;
    sc_signal< sc_lv<79> > r_V_2_fu_244_p2;
    sc_signal< sc_lv<31> > tmp_3_fu_258_p1;
    sc_signal< sc_lv<31> > tmp_4_fu_262_p4;
    sc_signal< sc_lv<32> > result_V_fu_280_p1;
    sc_signal< sc_lv<32> > result_V_2_fu_283_p2;
    sc_signal< sc_lv<32> > result_V_5_fu_289_p3;
    sc_signal< sc_lv<31> > tmp_28_fu_296_p1;
    sc_signal< sc_lv<1> > abscond_fu_306_p2;
    sc_signal< sc_lv<31> > neg_cast_fu_300_p2;
    sc_signal< sc_lv<32> > tmp_21_to_int_fu_324_p1;
    sc_signal< sc_lv<32> > tmp_20_to_int_fu_341_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_327_p4;
    sc_signal< sc_lv<23> > tmp_30_fu_337_p1;
    sc_signal< sc_lv<8> > tmp_8_fu_344_p4;
    sc_signal< sc_lv<23> > tmp_31_fu_354_p1;
    sc_signal< sc_lv<1> > tmp_11_fu_382_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_386_p2;
    sc_signal< sc_lv<1> > tmp_13_fu_390_p2;
    sc_signal< sc_lv<1> > tmp_15_fu_396_p2;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<9> ap_const_lv9_181;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<5> ap_const_lv5_5;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_abs_fu_312_p3();
    void thread_abscond_fu_306_p2();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state2();
    void thread_comparateur_in1();
    void thread_comparateur_in1_ap_vld();
    void thread_comparateur_result();
    void thread_comparateur_result_ap_vld();
    void thread_comparateur_seuil();
    void thread_comparateur_seuil_ap_vld();
    void thread_e1_blk_n();
    void thread_e1_read();
    void thread_e2_blk_n();
    void thread_e2_read();
    void thread_grp_fu_144_p0();
    void thread_isNeg_fu_200_p3();
    void thread_loc_V_2_fu_172_p1();
    void thread_loc_V_fu_162_p4();
    void thread_neg_cast_fu_300_p2();
    void thread_notlhs3_fu_370_p2();
    void thread_notlhs_fu_358_p2();
    void thread_notrhs4_fu_376_p2();
    void thread_notrhs_fu_364_p2();
    void thread_p_Val2_6_fu_272_p3();
    void thread_p_Val2_s_fu_151_p1();
    void thread_r_V_2_fu_244_p2();
    void thread_r_V_fu_238_p2();
    void thread_result_V_2_fu_283_p2();
    void thread_result_V_5_fu_289_p3();
    void thread_result_V_fu_280_p1();
    void thread_s_blk_n();
    void thread_s_din();
    void thread_s_write();
    void thread_sh_assign_2_cast_cas_fu_230_p1();
    void thread_sh_assign_2_cast_fu_226_p1();
    void thread_sh_assign_2_fu_218_p3();
    void thread_sh_assign_fu_194_p2();
    void thread_tmp_10_fu_401_p3();
    void thread_tmp_11_fu_382_p2();
    void thread_tmp_12_fu_386_p2();
    void thread_tmp_13_fu_390_p2();
    void thread_tmp_15_cast2_fu_186_p1();
    void thread_tmp_15_fu_396_p2();
    void thread_tmp_16_cast1_fu_190_p1();
    void thread_tmp_17_cast_fu_214_p1();
    void thread_tmp_20_to_int_fu_341_p1();
    void thread_tmp_21_to_int_fu_324_p1();
    void thread_tmp_27_fu_250_p3();
    void thread_tmp_28_fu_296_p1();
    void thread_tmp_30_fu_337_p1();
    void thread_tmp_31_fu_354_p1();
    void thread_tmp_3_fu_258_p1();
    void thread_tmp_4_fu_262_p4();
    void thread_tmp_5_fu_327_p4();
    void thread_tmp_6_fu_208_p2();
    void thread_tmp_7_fu_234_p1();
    void thread_tmp_8_fu_344_p4();
    void thread_tmp_s_fu_176_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif