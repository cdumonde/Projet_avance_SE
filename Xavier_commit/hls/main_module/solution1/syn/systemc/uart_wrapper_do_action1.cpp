// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "uart_wrapper_do_action1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic uart_wrapper_do_action1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic uart_wrapper_do_action1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> uart_wrapper_do_action1::ap_ST_fsm_state2 = "10";
const sc_lv<5> uart_wrapper_do_action1::ap_ST_fsm_state3 = "100";
const sc_lv<5> uart_wrapper_do_action1::ap_ST_fsm_state4 = "1000";
const sc_lv<5> uart_wrapper_do_action1::ap_ST_fsm_state5 = "10000";
const sc_lv<32> uart_wrapper_do_action1::ap_const_lv32_1 = "1";
const sc_lv<32> uart_wrapper_do_action1::ap_const_lv32_2 = "10";
const sc_lv<32> uart_wrapper_do_action1::ap_const_lv32_3 = "11";
const sc_lv<32> uart_wrapper_do_action1::ap_const_lv32_4 = "100";
const bool uart_wrapper_do_action1::ap_const_boolean_1 = true;

uart_wrapper_do_action1::uart_wrapper_do_action1(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_FIFO_I_1_blk_n);
    sensitive << ( FIFO_I_1_full_n );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_FIFO_I_1_din);
    sensitive << ( e_empty_n );
    sensitive << ( FIFO_I_1_full_n );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( buffer_fu_171_p5 );

    SC_METHOD(thread_FIFO_I_1_write);
    sensitive << ( e_empty_n );
    sensitive << ( FIFO_I_1_full_n );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state5);
    sensitive << ( e_empty_n );
    sensitive << ( FIFO_I_1_full_n );

    SC_METHOD(thread_buffer_fu_171_p5);
    sensitive << ( e_dout );
    sensitive << ( tmp_reg_185 );
    sensitive << ( tmp_4_reg_190 );
    sensitive << ( tmp_6_reg_195 );

    SC_METHOD(thread_e_blk_n);
    sensitive << ( e_empty_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_e_read);
    sensitive << ( e_empty_n );
    sensitive << ( FIFO_I_1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( e_empty_n );
    sensitive << ( FIFO_I_1_full_n );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    ap_CS_fsm = "00010";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "uart_wrapper_do_action1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, e_dout, "(port)e_dout");
    sc_trace(mVcdFile, e_empty_n, "(port)e_empty_n");
    sc_trace(mVcdFile, e_read, "(port)e_read");
    sc_trace(mVcdFile, FIFO_I_1_din, "(port)FIFO_I_1_din");
    sc_trace(mVcdFile, FIFO_I_1_full_n, "(port)FIFO_I_1_full_n");
    sc_trace(mVcdFile, FIFO_I_1_write, "(port)FIFO_I_1_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, e_blk_n, "e_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, FIFO_I_1_blk_n, "FIFO_I_1_blk_n");
    sc_trace(mVcdFile, tmp_reg_185, "tmp_reg_185");
    sc_trace(mVcdFile, tmp_4_reg_190, "tmp_4_reg_190");
    sc_trace(mVcdFile, tmp_6_reg_195, "tmp_6_reg_195");
    sc_trace(mVcdFile, ap_block_state5, "ap_block_state5");
    sc_trace(mVcdFile, buffer_fu_171_p5, "buffer_fu_171_p5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

uart_wrapper_do_action1::~uart_wrapper_do_action1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void uart_wrapper_do_action1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state2;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1))) {
        tmp_4_reg_190 = e_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1))) {
        tmp_6_reg_195 = e_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1))) {
        tmp_reg_185 = e_dout.read();
    }
}

void uart_wrapper_do_action1::thread_FIFO_I_1_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        FIFO_I_1_blk_n = FIFO_I_1_full_n.read();
    } else {
        FIFO_I_1_blk_n = ap_const_logic_1;
    }
}

void uart_wrapper_do_action1::thread_FIFO_I_1_din() {
    FIFO_I_1_din = buffer_fu_171_p5.read();
}

void uart_wrapper_do_action1::thread_FIFO_I_1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, FIFO_I_1_full_n.read())))) {
        FIFO_I_1_write = ap_const_logic_1;
    } else {
        FIFO_I_1_write = ap_const_logic_0;
    }
}

void uart_wrapper_do_action1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void uart_wrapper_do_action1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void uart_wrapper_do_action1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void uart_wrapper_do_action1::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void uart_wrapper_do_action1::thread_ap_block_state5() {
    ap_block_state5 = (esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, FIFO_I_1_full_n.read()));
}

void uart_wrapper_do_action1::thread_buffer_fu_171_p5() {
    buffer_fu_171_p5 = esl_concat<24,8>(esl_concat<16,8>(esl_concat<8,8>(e_dout.read(), tmp_6_reg_195.read()), tmp_4_reg_190.read()), tmp_reg_185.read());
}

void uart_wrapper_do_action1::thread_e_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        e_blk_n = e_empty_n.read();
    } else {
        e_blk_n = ap_const_logic_1;
    }
}

void uart_wrapper_do_action1::thread_e_read() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, FIFO_I_1_full_n.read()))))) {
        e_read = ap_const_logic_1;
    } else {
        e_read = ap_const_logic_0;
    }
}

void uart_wrapper_do_action1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(e_empty_n.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, FIFO_I_1_full_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}

