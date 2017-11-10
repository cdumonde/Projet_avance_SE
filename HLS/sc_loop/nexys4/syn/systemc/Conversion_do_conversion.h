// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conversion_do_conversion_HH_
#define _Conversion_do_conversion_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Conversion_do_conversion : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<8> > s_din;
    sc_in< sc_logic > s_full_n;
    sc_out< sc_logic > s_write;


    // Module declarations
    Conversion_do_conversion(sc_module_name name);
    SC_HAS_PROCESS(Conversion_do_conversion);

    ~Conversion_do_conversion();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > e_blk_n;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > s_blk_n;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<7> > tmp_fu_73_p4;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state2();
    void thread_e_blk_n();
    void thread_e_read();
    void thread_s_blk_n();
    void thread_s_din();
    void thread_s_write();
    void thread_tmp_fu_73_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
