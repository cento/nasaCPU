############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project rv32i_npp_ip
add_files rv32i_npp_ip/decode.cpp
add_files rv32i_npp_ip/execute.cpp
add_files rv32i_npp_ip/fetch.cpp
add_files rv32i_npp_ip/rv32i_npp_ip.cpp
add_files rv32i_npp_ip/rv32i_npp_ip.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./rv32i_npp_ip/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
