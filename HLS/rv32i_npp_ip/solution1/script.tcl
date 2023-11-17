############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project rv32i_npp_ip
set_top rv32i_npp_ip
add_files rv32i_npp_ip/decode.cpp
add_files rv32i_npp_ip/decode.h
add_files rv32i_npp_ip/emulate.cpp
add_files rv32i_npp_ip/emulate.h
add_files rv32i_npp_ip/execute.cpp
add_files rv32i_npp_ip/execute.h
add_files rv32i_npp_ip/fetch.cpp
add_files rv32i_npp_ip/fetch.h
add_files rv32i_npp_ip/print.cpp
add_files rv32i_npp_ip/print.h
add_files rv32i_npp_ip/rv32i_npp_ip.cpp
add_files rv32i_npp_ip/rv32i_npp_ip.h
add_files -tb rv32i_npp_ip/tb_rv32i_npp_ip.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb rv32i_npp_ip/test_load_store_0_text.hex -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_cosim -tool xsim
config_export -format ip_catalog -rtl verilog -vivado_clock 10
#source "./rv32i_npp_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
