# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../src/testbench_fetching_decoding_ip.cpp ../../../src/type.cpp ../../../src/statistic_update.cpp ../../../src/running_cond_update.cpp ../../../src/print.cpp ../../../src/immediate.cpp ../../../src/fetching_decoding_ip.cpp ../../../src/fetch.cpp ../../../src/execute.cpp ../../../src/decode.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vitis_HLS/2022.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vitis_HLS/2022.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/testbench_fetching_decoding_ip.o: ../../../src/testbench_fetching_decoding_ip.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/testbench_fetching_decoding_ip.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/testbench_fetching_decoding_ip.d

$(ObjDir)/type.o: ../../../src/type.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/type.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/type.d

$(ObjDir)/statistic_update.o: ../../../src/statistic_update.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/statistic_update.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/statistic_update.d

$(ObjDir)/running_cond_update.o: ../../../src/running_cond_update.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/running_cond_update.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/running_cond_update.d

$(ObjDir)/print.o: ../../../src/print.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/print.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/print.d

$(ObjDir)/immediate.o: ../../../src/immediate.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/immediate.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/immediate.d

$(ObjDir)/fetching_decoding_ip.o: ../../../src/fetching_decoding_ip.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/fetching_decoding_ip.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fetching_decoding_ip.d

$(ObjDir)/fetch.o: ../../../src/fetch.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/fetch.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fetch.d

$(ObjDir)/execute.o: ../../../src/execute.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/execute.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/execute.d

$(ObjDir)/decode.o: ../../../src/decode.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/decode.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/decode.d
