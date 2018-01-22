// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "filtre1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic filtre1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic filtre1::ap_const_logic_0 = sc_dt::Log_0;
const bool filtre1::ap_const_boolean_1 = true;

filtre1::filtre1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    filtre1_mem_x_U = new filtre1_filtre1_mibs("filtre1_mem_x_U");
    filtre1_mem_x_U->clk(ap_clk);
    filtre1_mem_x_U->reset(ap_rst);
    filtre1_mem_x_U->address0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_address0);
    filtre1_mem_x_U->ce0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_ce0);
    filtre1_mem_x_U->we0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_we0);
    filtre1_mem_x_U->d0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_d0);
    filtre1_mem_y_U = new filtre1_filtre1_mibs("filtre1_mem_y_U");
    filtre1_mem_y_U->clk(ap_clk);
    filtre1_mem_y_U->reset(ap_rst);
    filtre1_mem_y_U->address0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_address0);
    filtre1_mem_y_U->ce0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_ce0);
    filtre1_mem_y_U->we0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_we0);
    filtre1_mem_y_U->d0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_d0);
    grp_filtre1_do_filtre_fu_64 = new filtre1_do_filtre("grp_filtre1_do_filtre_fu_64");
    grp_filtre1_do_filtre_fu_64->ap_clk(clk);
    grp_filtre1_do_filtre_fu_64->ap_rst(reset);
    grp_filtre1_do_filtre_fu_64->filtre1_y0(grp_filtre1_do_filtre_fu_64_filtre1_y0);
    grp_filtre1_do_filtre_fu_64->filtre1_y0_ap_vld(grp_filtre1_do_filtre_fu_64_filtre1_y0_ap_vld);
    grp_filtre1_do_filtre_fu_64->filtre1_x0(grp_filtre1_do_filtre_fu_64_filtre1_x0);
    grp_filtre1_do_filtre_fu_64->filtre1_x0_ap_vld(grp_filtre1_do_filtre_fu_64_filtre1_x0_ap_vld);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_x_address0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_address0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_x_ce0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_ce0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_x_we0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_we0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_x_d0(grp_filtre1_do_filtre_fu_64_filtre1_mem_x_d0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_y_address0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_address0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_y_ce0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_ce0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_y_we0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_we0);
    grp_filtre1_do_filtre_fu_64->filtre1_mem_y_d0(grp_filtre1_do_filtre_fu_64_filtre1_mem_y_d0);
    grp_filtre1_do_filtre_fu_64->e_dout(e_dout);
    grp_filtre1_do_filtre_fu_64->e_empty_n(e_empty_n);
    grp_filtre1_do_filtre_fu_64->e_read(grp_filtre1_do_filtre_fu_64_e_read);
    grp_filtre1_do_filtre_fu_64->s_din(grp_filtre1_do_filtre_fu_64_s_din);
    grp_filtre1_do_filtre_fu_64->s_full_n(s_full_n);
    grp_filtre1_do_filtre_fu_64->s_write(grp_filtre1_do_filtre_fu_64_s_write);

    SC_METHOD(thread_e_read);
    sensitive << ( grp_filtre1_do_filtre_fu_64_e_read );

    SC_METHOD(thread_s_din);
    sensitive << ( grp_filtre1_do_filtre_fu_64_s_din );
    sensitive << ( grp_filtre1_do_filtre_fu_64_s_write );

    SC_METHOD(thread_s_write);
    sensitive << ( grp_filtre1_do_filtre_fu_64_s_write );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "filtre1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
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
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_y0, "grp_filtre1_do_filtre_fu_64_filtre1_y0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_y0_ap_vld, "grp_filtre1_do_filtre_fu_64_filtre1_y0_ap_vld");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_x0, "grp_filtre1_do_filtre_fu_64_filtre1_x0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_x0_ap_vld, "grp_filtre1_do_filtre_fu_64_filtre1_x0_ap_vld");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_x_address0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_x_address0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_x_ce0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_x_ce0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_x_we0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_x_we0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_x_d0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_x_d0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_y_address0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_y_address0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_y_ce0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_y_ce0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_y_we0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_y_we0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_filtre1_mem_y_d0, "grp_filtre1_do_filtre_fu_64_filtre1_mem_y_d0");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_e_read, "grp_filtre1_do_filtre_fu_64_e_read");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_s_din, "grp_filtre1_do_filtre_fu_64_s_din");
    sc_trace(mVcdFile, grp_filtre1_do_filtre_fu_64_s_write, "grp_filtre1_do_filtre_fu_64_s_write");
#endif

    }
}

filtre1::~filtre1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete filtre1_mem_x_U;
    delete filtre1_mem_y_U;
    delete grp_filtre1_do_filtre_fu_64;
}

void filtre1::thread_e_read() {
    e_read = grp_filtre1_do_filtre_fu_64_e_read.read();
}

void filtre1::thread_s_din() {
    s_din = grp_filtre1_do_filtre_fu_64_s_din.read();
}

void filtre1::thread_s_write() {
    s_write = grp_filtre1_do_filtre_fu_64_s_write.read();
}

}
