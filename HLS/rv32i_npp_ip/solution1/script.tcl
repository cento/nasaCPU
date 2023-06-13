############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project rv32i_npp_ip
set_top rv32i_npp_ip
add_files rv32i_npp_ip/src/debug_rv32i_npp_ip.h
add_files rv32i_npp_ip/src/decode.cpp
add_files rv32i_npp_ip/src/decode.h
add_files rv32i_npp_ip/src/disassemble.cpp
add_files rv32i_npp_ip/src/disassemble.h
add_files rv32i_npp_ip/src/emulate.cpp
add_files rv32i_npp_ip/src/emulate.h
add_files rv32i_npp_ip/src/execute.cpp
add_files rv32i_npp_ip/src/execute.h
add_files rv32i_npp_ip/src/fetch.cpp
add_files rv32i_npp_ip/src/fetch.h
add_files rv32i_npp_ip/src/immediate.cpp
add_files rv32i_npp_ip/src/immediate.h
add_files rv32i_npp_ip/src/print.cpp
add_files rv32i_npp_ip/src/print.h
add_files rv32i_npp_ip/src/rv32i_npp_ip.cpp
add_files rv32i_npp_ip/src/rv32i_npp_ip.h
add_files rv32i_npp_ip/src/type.cpp
add_files rv32i_npp_ip/src/type.h
add_files -tb rv32i_npp_ip/src/testbench_rv32i_npp_ip.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_cosim -tool xsim
#source "./rv32i_npp_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
