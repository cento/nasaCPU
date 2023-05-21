############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fetching_ip
set_top fetching_ip
add_files src/debug_fetch.h
add_files src/execute.cpp
add_files src/execute.h
add_files src/fetch.cpp
add_files src/fetch.h
add_files src/fetching_ip.cpp
add_files src/fetching_ip.h
add_files src/running_cond_update.cpp
add_files src/running_cond_update.h
add_files -tb src/tb_fetching_ip.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -output C:/Users/monde/Documents/GitHub/nasa-CPU/HLS/exported_rtl
#source "./fetching_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/monde/Documents/GitHub/nasa-CPU/HLS/exported_rtl
