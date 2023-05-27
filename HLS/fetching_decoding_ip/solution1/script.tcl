############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fetching_decoding_ip
set_top fetching_decoding_ip
add_files fetching_decoding_ip/src/debug_fetching_decoding_ip.h
add_files fetching_decoding_ip/src/decode.cpp
add_files fetching_decoding_ip/src/decode.h
add_files fetching_decoding_ip/src/execute.cpp
add_files fetching_decoding_ip/src/execute.h
add_files fetching_decoding_ip/src/fetch.cpp
add_files fetching_decoding_ip/src/fetch.h
add_files fetching_decoding_ip/src/fetching_decoding_ip.cpp
add_files fetching_decoding_ip/src/immediate.cpp
add_files fetching_decoding_ip/src/immediate.h
add_files fetching_decoding_ip/src/print.cpp
add_files fetching_decoding_ip/src/print.h
add_files fetching_decoding_ip/src/running_cond_update.cpp
add_files fetching_decoding_ip/src/running_cond_update.h
add_files fetching_decoding_ip/src/statistic_update.cpp
add_files fetching_decoding_ip/src/statistic_update.h
add_files fetching_decoding_ip/src/type.cpp
add_files fetching_decoding_ip/src/type.h
add_files -tb fetching_decoding_ip/src/testbench_fetching_decoding_ip.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -flow syn -format ip_catalog -rtl verilog -vivado_clock 10
#source "./fetching_decoding_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
