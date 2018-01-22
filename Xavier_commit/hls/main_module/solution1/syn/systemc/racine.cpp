// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "racine.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic racine::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic racine::ap_const_logic_0 = sc_dt::Log_0;
const bool racine::ap_const_boolean_1 = true;

racine::racine(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_racine_do_racine_fu_58 = new racine_do_racine("grp_racine_do_racine_fu_58");
    grp_racine_do_racine_fu_58->ap_clk(clk);
    grp_racine_do_racine_fu_58->ap_rst(reset);
    grp_racine_do_racine_fu_58->racine_x(grp_racine_do_racine_fu_58_racine_x);
    grp_racine_do_racine_fu_58->racine_x_ap_vld(grp_racine_do_racine_fu_58_racine_x_ap_vld);
    grp_racine_do_racine_fu_58->e_dout(e_dout);
    grp_racine_do_racine_fu_58->e_empty_n(e_empty_n);
    grp_racine_do_racine_fu_58->e_read(grp_racine_do_racine_fu_58_e_read);
    grp_racine_do_racine_fu_58->s_din(grp_racine_do_racine_fu_58_s_din);
    grp_racine_do_racine_fu_58->s_full_n(s_full_n);
    grp_racine_do_racine_fu_58->s_write(grp_racine_do_racine_fu_58_s_write);

    SC_METHOD(thread_e_read);
    sensitive << ( grp_racine_do_racine_fu_58_e_read );

    SC_METHOD(thread_s_din);
    sensitive << ( grp_racine_do_racine_fu_58_s_din );
    sensitive << ( grp_racine_do_racine_fu_58_s_write );

    SC_METHOD(thread_s_write);
    sensitive << ( grp_racine_do_racine_fu_58_s_write );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "racine_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, clk, "(port)clk");
    sc_trace(mVcdFile, reset, "(port)reset");
    sc_trace(mVcdFile, e_dout, "(port)e_dout");
    sc_trace(mVcdFile, e_empty_n, "(port)e_empty_n");
    sc_trace(mVcdFile, e_read, "(port)e_read");
    sc_trace(mVcdFile, s_din, "(port)s_din");
    sc_trace(mVcdFile, s_full_n, "(port)s_full_n");
    sc_trace(mVcdFile, s_write, "(port)s_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, grp_racine_do_racine_fu_58_racine_x, "grp_racine_do_racine_fu_58_racine_x");
    sc_trace(mVcdFile, grp_racine_do_racine_fu_58_racine_x_ap_vld, "grp_racine_do_racine_fu_58_racine_x_ap_vld");
    sc_trace(mVcdFile, grp_racine_do_racine_fu_58_e_read, "grp_racine_do_racine_fu_58_e_read");
    sc_trace(mVcdFile, grp_racine_do_racine_fu_58_s_din, "grp_racine_do_racine_fu_58_s_din");
    sc_trace(mVcdFile, grp_racine_do_racine_fu_58_s_write, "grp_racine_do_racine_fu_58_s_write");
#endif

    }
}

racine::~racine() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_racine_do_racine_fu_58;
}

void racine::thread_e_read() {
    e_read = grp_racine_do_racine_fu_58_e_read.read();
}

void racine::thread_s_din() {
    s_din = grp_racine_do_racine_fu_58_s_din.read();
}

void racine::thread_s_write() {
    s_write = grp_racine_do_racine_fu_58_s_write.read();
}

}
