// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _filtre1_HH_
#define _filtre1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "filtre1_do_filtre.h"
#include "filtre1_filtre1_mibs.h"

namespace ap_rtl {

struct filtre1 : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in_clk clk;
    sc_in< sc_logic > reset;
    sc_in< sc_lv<32> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<32> > s_din;
    sc_in< sc_logic > s_full_n;
    sc_out< sc_logic > s_write;


    // Module declarations
    filtre1(sc_module_name name);
    SC_HAS_PROCESS(filtre1);

    ~filtre1();

    sc_trace_file* mVcdFile;

    filtre1_filtre1_mibs* filtre1_mem_x_U;
    filtre1_filtre1_mibs* filtre1_mem_y_U;
    filtre1_do_filtre* grp_filtre1_do_filtre_fu_64;
    sc_signal< sc_lv<32> > grp_filtre1_do_filtre_fu_64_filtre1_y0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_filtre1_y0_ap_vld;
    sc_signal< sc_lv<32> > grp_filtre1_do_filtre_fu_64_filtre1_x0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_filtre1_x0_ap_vld;
    sc_signal< sc_lv<1> > grp_filtre1_do_filtre_fu_64_filtre1_mem_x_address0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_filtre1_mem_x_ce0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_filtre1_mem_x_we0;
    sc_signal< sc_lv<32> > grp_filtre1_do_filtre_fu_64_filtre1_mem_x_d0;
    sc_signal< sc_lv<1> > grp_filtre1_do_filtre_fu_64_filtre1_mem_y_address0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_filtre1_mem_y_ce0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_filtre1_mem_y_we0;
    sc_signal< sc_lv<32> > grp_filtre1_do_filtre_fu_64_filtre1_mem_y_d0;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_e_read;
    sc_signal< sc_lv<32> > grp_filtre1_do_filtre_fu_64_s_din;
    sc_signal< sc_logic > grp_filtre1_do_filtre_fu_64_s_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_e_read();
    void thread_s_din();
    void thread_s_write();
};

}

using namespace ap_rtl;

#endif