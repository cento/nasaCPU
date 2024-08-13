// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "E:/nasaCPU/Vitis2024_workspace/my_adder_ip/my_adder_ip.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 420 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/nasaCPU/Vitis2024_workspace/my_adder_ip/my_adder_ip.cpp" 2
void my_adder_ip(unsigned int a,
                 unsigned int b,
                 unsigned int *c){
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=c
#pragma HLS INTERFACE mode=s_axilite port=b
#pragma HLS INTERFACE mode=s_axilite port=a
  *c = a + b;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_my_adder_ip_ir(unsigned int, unsigned int, unsigned int *);
#ifdef __cplusplus
extern "C"
#endif
void my_adder_ip_hw_stub(unsigned int a, unsigned int b, unsigned int *c){
my_adder_ip(a, b, c);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_my_adder_ip_sw(unsigned int a, unsigned int b, unsigned int *c){
refine_signal_handler();
apatb_my_adder_ip_ir(a, b, c);
return ;
}
#endif
# 9 "E:/nasaCPU/Vitis2024_workspace/my_adder_ip/my_adder_ip.cpp"

