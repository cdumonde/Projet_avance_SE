# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2017.3
# Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../src/analyseur/analyseur.cpp ../../../../src/gene/carre_soft.cpp ../../../../src/gene/gene.cpp ../../../../src/analyseur/sc_store.cpp ../../../../src/tb/tb_carre.cpp ../../../../src/modules/carre.cpp ../../../../src/modules/filtre1.cpp ../../../../src/modules/filtre2.cpp ../../../../src/modules/oled_process.cpp ../../../../src/modules/uart_wrapper.cpp ../../../../src/modules/uart_wrapper_oled.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vivado/2017.3
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vivado/2017.3/msys/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/msys32/mingw32/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -L$(AUTOPILOT_TOOL)/systemc/lib -lsystemc_debug
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/analyseur.o: ../../../../src/analyseur/analyseur.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/analyseur/analyseur.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/analyseur.d

$(ObjDir)/carre_soft.o: ../../../../src/gene/carre_soft.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/gene/carre_soft.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/carre_soft.d

$(ObjDir)/gene.o: ../../../../src/gene/gene.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/gene/gene.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/gene.d

$(ObjDir)/sc_store.o: ../../../../src/analyseur/sc_store.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/analyseur/sc_store.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sc_store.d

$(ObjDir)/tb_carre.o: ../../../../src/tb/tb_carre.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/tb/tb_carre.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_carre.d

$(ObjDir)/carre.o: ../../../../src/modules/carre.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/modules/carre.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/carre.d

$(ObjDir)/filtre1.o: ../../../../src/modules/filtre1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/modules/filtre1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/filtre1.d

$(ObjDir)/filtre2.o: ../../../../src/modules/filtre2.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/modules/filtre2.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/filtre2.d

$(ObjDir)/oled_process.o: ../../../../src/modules/oled_process.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/modules/oled_process.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/oled_process.d

$(ObjDir)/uart_wrapper.o: ../../../../src/modules/uart_wrapper.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/modules/uart_wrapper.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/uart_wrapper.d

$(ObjDir)/uart_wrapper_oled.o: ../../../../src/modules/uart_wrapper_oled.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/modules/uart_wrapper_oled.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/uart_wrapper_oled.d