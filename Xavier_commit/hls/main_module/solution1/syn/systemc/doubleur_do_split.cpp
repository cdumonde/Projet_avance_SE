// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "doubleur_do_split.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic doubleur_do_split::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic doubleur_do_split::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> doubleur_do_split::ap_ST_fsm_state2 = "10";
const sc_lv<32> doubleur_do_split::ap_const_lv32_1 = "1";
const bool doubleur_do_split::ap_const_boolean_1 = true;

doubleur_do_split::doubleur_do_split(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );

    SC_METHOD(thread_doubleur_to_split);
    sensitive << ( e_dout );
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_doubleur_to_split_ap_vld);
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_e_blk_n);
    sensitive << ( e_empty_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_e_read);
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_s1_blk_n);
    sensitive << ( s1_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_s1_din);
    sensitive << ( e_dout );
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_s1_write);
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_s2_blk_n);
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_s2_din);
    sensitive << ( e_dout );
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_s2_write);
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( e_empty_n );
    sensitive << ( s1_full_n );
    sensitive << ( s2_full_n );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state2 );

    ap_CS_fsm = "10";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "doubleur_do_split_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, doubleur_to_split, "(port)doubleur_to_split");
    sc_trace(mVcdFile, doubleur_to_split_ap_vld, "(port)doubleur_to_split_ap_vld");
    sc_trace(mVcdFile, e_dout, "(port)e_dout");
    sc_trace(mVcdFile, e_empty_n, "(port)e_empty_n");
    sc_trace(mVcdFile, e_read, "(port)e_read");
    sc_trace(mVcdFile, s1_din, "(port)s1_din");
    sc_trace(mVcdFile, s1_full_n, "(port)s1_full_n");
    sc_trace(mVcdFile, s1_write, "(port)s1_write");
    sc_trace(mVcdFile, s2_din, "(port)s2_din");
    sc_trace(mVcdFile, s2_full_n, "(port)s2_full_n");
    sc_trace(mVcdFile, s2_write, "(port)s2_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, e_blk_n, "e_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, s1_blk_n, "s1_blk_n");
    sc_trace(mVcdFile, s2_blk_n, "s2_blk_n");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

doubleur_do_split::~doubleur_do_split() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void doubleur_do_split::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state2;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
}

void doubleur_do_split::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void doubleur_do_split::thread_ap_block_state2() {
    ap_block_state2 = (esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s2_full_n.read()));
}

void doubleur_do_split::thread_doubleur_to_split() {
    doubleur_to_split = e_dout.read();
}

void doubleur_do_split::thread_doubleur_to_split_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s2_full_n.read())))) {
        doubleur_to_split_ap_vld = ap_const_logic_1;
    } else {
        doubleur_to_split_ap_vld = ap_const_logic_0;
    }
}

void doubleur_do_split::thread_e_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        e_blk_n = e_empty_n.read();
    } else {
        e_blk_n = ap_const_logic_1;
    }
}

void doubleur_do_split::thread_e_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s2_full_n.read())))) {
        e_read = ap_const_logic_1;
    } else {
        e_read = ap_const_logic_0;
    }
}

void doubleur_do_split::thread_s1_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        s1_blk_n = s1_full_n.read();
    } else {
        s1_blk_n = ap_const_logic_1;
    }
}

void doubleur_do_split::thread_s1_din() {
    s1_din = e_dout.read();
}

void doubleur_do_split::thread_s1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s2_full_n.read())))) {
        s1_write = ap_const_logic_1;
    } else {
        s1_write = ap_const_logic_0;
    }
}

void doubleur_do_split::thread_s2_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        s2_blk_n = s2_full_n.read();
    } else {
        s2_blk_n = ap_const_logic_1;
    }
}

void doubleur_do_split::thread_s2_din() {
    s2_din = e_dout.read();
}

void doubleur_do_split::thread_s2_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s2_full_n.read())))) {
        s2_write = ap_const_logic_1;
    } else {
        s2_write = ap_const_logic_0;
    }
}

void doubleur_do_split::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state2;
break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}
