# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/testbench_fetching_decoding_ip.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/type.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/print.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/immediate.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/fetching_decoding_ip.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/fetch.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/execute.cpp ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/decode.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := C:/Xilinx/Vitis_HLS/2024.1
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vitis_HLS/2024.1/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${XILINX_VCXX}/libexec
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
LFLAG += -Wl,--stack,0x40000000
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --sysroot=C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --sysroot=C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/testbench_fetching_decoding_ip.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/testbench_fetching_decoding_ip.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/testbench_fetching_decoding_ip.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/testbench_fetching_decoding_ip.d

$(ObjDir)/type.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/type.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/type.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/type.d

$(ObjDir)/print.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/print.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/print.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/print.d

$(ObjDir)/immediate.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/immediate.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/immediate.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/immediate.d

$(ObjDir)/fetching_decoding_ip.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/fetching_decoding_ip.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/fetching_decoding_ip.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fetching_decoding_ip.d

$(ObjDir)/fetch.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/fetch.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/fetch.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fetch.d

$(ObjDir)/execute.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/execute.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/execute.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/execute.d

$(ObjDir)/decode.o: ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/decode.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../../goossens-book-ip-projects/2022.1/fetching_decoding_ip/decode.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/decode.d
