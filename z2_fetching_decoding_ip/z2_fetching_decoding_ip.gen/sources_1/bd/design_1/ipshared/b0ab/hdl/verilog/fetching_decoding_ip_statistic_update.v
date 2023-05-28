// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fetching_decoding_ip_statistic_update (
        ap_ready,
        nbi_read,
        ap_return
);


output   ap_ready;
input  [31:0] nbi_read;
output  [31:0] ap_return;

assign ap_ready = 1'b1;

assign ap_return = (nbi_read + 32'd1);

endmodule //fetching_decoding_ip_statistic_update
