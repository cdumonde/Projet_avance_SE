// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _oled_process_HH_
#define _oled_process_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "oled_process_do_oled_process.h"

namespace ap_rtl {

struct oled_process : public sc_module {
    // Port declarations 10
    sc_in_clk clk;
    sc_in< sc_logic > reset;
    sc_out< sc_logic > en;
    sc_out< sc_lv<6> > s;
    sc_in< sc_lv<32> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<32> > s_f_din;
    sc_in< sc_logic > s_f_full_n;
    sc_out< sc_logic > s_f_write;


    // Module declarations
    oled_process(sc_module_name name);
    SC_HAS_PROCESS(oled_process);

    ~oled_process();

    sc_trace_file* mVcdFile;

    oled_process_do_oled_process* grp_oled_process_do_oled_process_fu_70;
    sc_signal< sc_lv<32> > grp_oled_process_do_oled_process_fu_70_oled_process_sum;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_oled_process_sum_ap_vld;
    sc_signal< sc_lv<32> > grp_oled_process_do_oled_process_fu_70_oled_process_save;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_oled_process_save_ap_vld;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_en;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_en_ap_vld;
    sc_signal< sc_lv<6> > grp_oled_process_do_oled_process_fu_70_s;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_s_ap_vld;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_e_read;
    sc_signal< sc_lv<32> > grp_oled_process_do_oled_process_fu_70_s_f_din;
    sc_signal< sc_logic > grp_oled_process_do_oled_process_fu_70_s_f_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_en();
    void thread_s();
    void thread_e_read();
    void thread_s_f_din();
    void thread_s_f_write();
};

}

using namespace ap_rtl;

#endif
