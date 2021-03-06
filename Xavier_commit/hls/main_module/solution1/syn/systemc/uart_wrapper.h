// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _uart_wrapper_HH_
#define _uart_wrapper_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "top_level.h"
#include "uart_wrapper_do_action2.h"
#include "uart_wrapper_do_action1.h"
#include "fifo_w32_d192_A.h"

namespace ap_rtl {

struct uart_wrapper : public sc_module {
    // Port declarations 8
    sc_in_clk clk;
    sc_in< sc_logic > reset;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<8> > s_din;
    sc_in< sc_logic > s_full_n;
    sc_out< sc_logic > s_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    uart_wrapper(sc_module_name name);
    SC_HAS_PROCESS(uart_wrapper);

    ~uart_wrapper();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    top_level* grp_top_level_fu_190;
    uart_wrapper_do_action2* grp_uart_wrapper_do_action2_fu_306;
    uart_wrapper_do_action1* grp_uart_wrapper_do_action1_fu_422;
    fifo_w32_d192_A* FIFO_I_1_fifo_U;
    fifo_w32_d192_A* FIFO_O_1_fifo_U;
    sc_signal< sc_logic > grp_top_level_fu_190_e_read;
    sc_signal< sc_lv<32> > grp_top_level_fu_190_s_din;
    sc_signal< sc_logic > grp_top_level_fu_190_s_write;
    sc_signal< sc_lv<8> > grp_uart_wrapper_do_action2_fu_306_s_din;
    sc_signal< sc_logic > grp_uart_wrapper_do_action2_fu_306_s_write;
    sc_signal< sc_logic > grp_uart_wrapper_do_action2_fu_306_FIFO_O_1_read;
    sc_signal< sc_logic > grp_uart_wrapper_do_action1_fu_422_e_read;
    sc_signal< sc_lv<32> > grp_uart_wrapper_do_action1_fu_422_FIFO_I_1_din;
    sc_signal< sc_logic > grp_uart_wrapper_do_action1_fu_422_FIFO_I_1_write;
    sc_signal< sc_lv<32> > FIFO_O_1_dout;
    sc_signal< sc_logic > FIFO_O_1_empty_n;
    sc_signal< sc_logic > FIFO_I_1_full_n;
    sc_signal< sc_lv<32> > FIFO_I_1_dout;
    sc_signal< sc_logic > FIFO_I_1_empty_n;
    sc_signal< sc_logic > FIFO_O_1_full_n;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_e_read();
    void thread_s_din();
    void thread_s_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
