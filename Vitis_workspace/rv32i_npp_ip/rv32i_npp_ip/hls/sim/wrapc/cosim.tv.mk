# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
# Tool Version Limit: 2023.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

DIRECTORY := $(shell basename $(CURDIR))
ifeq ($(DIRECTORY), wrapc_pc)
  override TARGET := cosim.pc.exe
  WFLAG += -DPOST_CHECK
else
  override TARGET := cosim.tv.exe
endif
IRWRAPPER  := $(basename $(wildcard *.ll))
CPPWRAPPER := $(IRWRAPPER:_ir=)
APATB_UTIL := $(basename $(wildcard $(IRWRAPPER:_ir=_util).cpp))

AUTOPILOT_ROOT := C:/Xilinx/Vitis_HLS/2023.2
AUTOPILOT_MACH := win64

ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
CCFLAG += -Werror=return-type
TOOLCHAIN += 

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__VITIS_HLS__
IFLAG += -D__HLS_COSIM__
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E1__
WFLAG += -DUSE_BINARY_TV_FILE
IFLAG += -DNT
LFLAG += -Wl,--stack,0x40000000
LFLAG += -lpthread
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/clang-3.9-csynth/lib/clang/7.0.0/lib/windows" -lhls_half2float
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
DFLAG += -DAESL_PIPELINE
LFLAG += -Wl,--enable-auto-import

include ./Makefile.rules

APATB_OBJECTS := $(addprefix $(ObjDir)/, $(addsuffix .o, $(CPPWRAPPER) $(IRWRAPPER) $(APATB_UTIL)))
OBJECTS := $(filter-out $(APATB_OBJECTS), $(OBJECTS)) $(APATB_OBJECTS)

all : $(TARGET)

$(ObjDir)/$(CPPWRAPPER).o: $(CPPWRAPPER).cpp
	$(Echo) "   Compiling $<" $(AVE_DIR_DLOG)
	$(Verb) $(CXX) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(WFLAG) $< -o $@

$(ObjDir)/tb_rv32i_npp_ip.cpp_pre.cpp.tb.o : tb_rv32i_npp_ip.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling tb_rv32i_npp_ip.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c -Wno-unknown-pragmas -Wno-unknown-pragmas $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/rv32i_npp_ip.cpp_pre.cpp.tb.o : rv32i_npp_ip.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling rv32i_npp_ip.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/print.cpp_pre.cpp.tb.o : print.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling print.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/fetch.cpp_pre.cpp.tb.o : fetch.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling fetch.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/execute.cpp_pre.cpp.tb.o : execute.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling execute.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/emulate.cpp_pre.cpp.tb.o : emulate.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling emulate.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/decode.cpp_pre.cpp.tb.o : decode.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling decode.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \