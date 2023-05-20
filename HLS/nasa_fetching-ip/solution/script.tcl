############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nasa_fetching-ip
set_top nasa_fetching-ip
add_files nasa_fetching-ip/src/nasa_fetching-ip.cpp
add_files nasa_fetching-ip/src/nasa_fetching-ip.h
open_solution "solution" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./nasa_fetching-ip/solution/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
