// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fetching_decoding_ip_fetching_decoding_ip,hls_ip_2024_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.860600,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=128,HLS_SYN_DSP=0,HLS_SYN_FF=315,HLS_SYN_LUT=641,HLS_VERSION=2024_1}" *)

module fetching_decoding_ip (
        ap_clk,
        ap_rst_n,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 19;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_ready;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] is_running_running_conditional_update_fu_102_ap_return;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] start_pc;
wire   [31:0] code_ram_q0;
reg    nb_instruction_ap_vld;
reg   [15:0] pc_0_load_reg_181;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] is_running_reg_187;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    grp_fetch_fu_89_ap_start;
wire    grp_fetch_fu_89_ap_done;
wire    grp_fetch_fu_89_ap_idle;
wire    grp_fetch_fu_89_ap_ready;
wire   [15:0] grp_fetch_fu_89_code_ram_address0;
wire    grp_fetch_fu_89_code_ram_ce0;
wire   [31:0] grp_fetch_fu_89_ap_return;
wire    grp_decode_fu_96_ap_start;
wire    grp_decode_fu_96_ap_done;
wire    grp_decode_fu_96_ap_idle;
wire    grp_decode_fu_96_ap_ready;
wire   [2:0] grp_decode_fu_96_ap_return_0;
wire   [19:0] grp_decode_fu_96_ap_return_1;
wire    is_running_running_conditional_update_fu_102_ap_ready;
wire    pc_1_execute_fu_108_ap_ready;
wire   [16:0] pc_1_execute_fu_108_d_i_imm;
wire   [15:0] pc_1_execute_fu_108_ap_return;
wire    call_ret3_statistic_update_fu_115_ap_ready;
wire   [31:0] call_ret3_statistic_update_fu_115_ap_return;
reg    grp_fetch_fu_89_ap_start_reg;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_ignoreCallOp27;
wire    ap_block_pp0_stage2_ignoreCallOp28;
reg    grp_decode_fu_96_ap_start_reg;
wire    ap_block_pp0_stage2_ignoreCallOp29;
wire    ap_block_pp0_stage2_ignoreCallOp30;
wire    ap_block_pp0_stage0_ignoreCallOp39;
wire    ap_block_pp0_stage0_ignoreCallOp40;
reg   [15:0] pc_0_fu_68;
wire   [15:0] pc_fu_121_p1;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] phi_ln40_fu_72;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_fetch_fu_89_ap_start_reg = 1'b0;
#0 grp_decode_fu_96_ap_start_reg = 1'b0;
#0 pc_0_fu_68 = 16'd0;
#0 phi_ln40_fu_72 = 32'd0;
#0 ap_done_reg = 1'b0;
end

fetching_decoding_ip_fetch grp_fetch_fu_89(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_fetch_fu_89_ap_start),
    .ap_done(grp_fetch_fu_89_ap_done),
    .ap_idle(grp_fetch_fu_89_ap_idle),
    .ap_ready(grp_fetch_fu_89_ap_ready),
    .pc(pc_0_fu_68),
    .code_ram_address0(grp_fetch_fu_89_code_ram_address0),
    .code_ram_ce0(grp_fetch_fu_89_code_ram_ce0),
    .code_ram_q0(code_ram_q0),
    .ap_return(grp_fetch_fu_89_ap_return)
);

fetching_decoding_ip_decode grp_decode_fu_96(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_decode_fu_96_ap_start),
    .ap_done(grp_decode_fu_96_ap_done),
    .ap_idle(grp_decode_fu_96_ap_idle),
    .ap_ready(grp_decode_fu_96_ap_ready),
    .instruction(grp_fetch_fu_89_ap_return),
    .ap_return_0(grp_decode_fu_96_ap_return_0),
    .ap_return_1(grp_decode_fu_96_ap_return_1)
);

fetching_decoding_ip_running_conditional_update is_running_running_conditional_update_fu_102(
    .ap_ready(is_running_running_conditional_update_fu_102_ap_ready),
    .instruction(grp_fetch_fu_89_ap_return),
    .ap_return(is_running_running_conditional_update_fu_102_ap_return),
    .ap_rst(ap_rst_n_inv)
);

fetching_decoding_ip_execute pc_1_execute_fu_108(
    .ap_ready(pc_1_execute_fu_108_ap_ready),
    .pc(pc_0_load_reg_181),
    .d_i_type(grp_decode_fu_96_ap_return_0),
    .d_i_imm(pc_1_execute_fu_108_d_i_imm),
    .ap_return(pc_1_execute_fu_108_ap_return),
    .ap_rst(ap_rst_n_inv)
);

fetching_decoding_ip_statistic_update call_ret3_statistic_update_fu_115(
    .ap_ready(call_ret3_statistic_update_fu_115_ap_ready),
    .nbi_read(phi_ln40_fu_72),
    .ap_return(call_ret3_statistic_update_fu_115_ap_return),
    .ap_rst(ap_rst_n_inv)
);

fetching_decoding_ip_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .start_pc(start_pc),
    .nb_instruction(call_ret3_statistic_update_fu_115_ap_return),
    .nb_instruction_ap_vld(nb_instruction_ap_vld),
    .code_ram_address0(grp_fetch_fu_89_code_ram_address0),
    .code_ram_ce0(grp_fetch_fu_89_code_ram_ce0),
    .code_ram_q0(code_ram_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

fetching_decoding_ip_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1),
    .ap_loop_exit_ready_delayed(ap_loop_exit_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_decode_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_decode_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_decode_fu_96_ap_ready == 1'b1)) begin
            grp_decode_fu_96_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_fetch_fu_89_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fetch_fu_89_ap_start_reg <= 1'b1;
        end else if ((grp_fetch_fu_89_ap_ready == 1'b1)) begin
            grp_fetch_fu_89_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
            pc_0_fu_68 <= pc_fu_121_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pc_0_fu_68 <= pc_1_execute_fu_108_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
            phi_ln40_fu_72 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            phi_ln40_fu_72 <= call_ret3_statistic_update_fu_115_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        is_running_reg_187 <= is_running_running_conditional_update_fu_102_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pc_0_load_reg_181 <= pc_0_fu_68;
    end
end

always @ (*) begin
    if (((is_running_running_conditional_update_fu_102_ap_return == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((is_running_reg_187 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_done_int = 1'b1;
    end else begin
        ap_loop_exit_done_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((is_running_reg_187 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nb_instruction_ap_vld = 1'b1;
    end else begin
        nb_instruction_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp39 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp40 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_ignoreCallOp27 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_ignoreCallOp28 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_ignoreCallOp29 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_ignoreCallOp30 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;

assign ap_ready = ap_ready_sig;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_decode_fu_96_ap_start = grp_decode_fu_96_ap_start_reg;

assign grp_fetch_fu_89_ap_start = grp_fetch_fu_89_ap_start_reg;

assign pc_1_execute_fu_108_d_i_imm = grp_decode_fu_96_ap_return_1[16:0];

assign pc_fu_121_p1 = start_pc[15:0];

endmodule //fetching_decoding_ip