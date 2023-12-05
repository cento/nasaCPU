// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module fde_ip_decode (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        instruction,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] instruction;
output  [4:0] ap_return_0;
output  [4:0] ap_return_1;
output  [2:0] ap_return_2;
output  [4:0] ap_return_3;
output  [4:0] ap_return_4;
output  [6:0] ap_return_5;
output  [2:0] ap_return_6;
output  [19:0] ap_return_7;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] instruction_read_reg_411;
reg   [4:0] opc_reg_423;
reg   [4:0] d_i_rd_write_assign_reg_428;
reg   [7:0] d_imm_inst_19_12_reg_434;
reg   [2:0] d_i_func3_write_assign_reg_439;
reg   [4:0] d_i_rs1_write_assign_reg_444;
reg   [4:0] d_i_rs2_write_assign_reg_449;
reg   [6:0] d_i_func7_write_assign_reg_454;
wire   [2:0] ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26;
reg   [2:0] d_i_type_write_assign_reg_98;
wire   [1:0] opch_fu_237_p4;
wire   [2:0] opcl_fu_247_p4;
wire   [19:0] or_ln_fu_357_p5;
reg   [19:0] ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12;
wire    ap_CS_fsm_state2;
wire  signed [19:0] sext_ln34_fu_308_p1;
wire  signed [19:0] sext_ln33_fu_319_p1;
wire  signed [19:0] sext_ln32_fu_333_p1;
wire   [0:0] d_imm_inst_31_fu_257_p3;
wire   [0:0] d_imm_inst_7_fu_280_p3;
wire   [5:0] tmp_3_fu_287_p4;
wire   [3:0] d_imm_inst_11_8_fu_271_p4;
wire   [11:0] or_ln3_fu_296_p5;
wire   [11:0] or_ln2_fu_313_p3;
wire   [11:0] or_ln7_fu_324_p4;
wire   [0:0] d_imm_inst_20_fu_264_p3;
wire   [9:0] tmp_fu_348_p4;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_condition_148;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd0) & (opch_fu_237_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        d_i_type_write_assign_reg_98 <= 3'd3;
    end else if (((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd4) & (opch_fu_237_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        d_i_type_write_assign_reg_98 <= 3'd1;
    end else if ((((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd5) & (opch_fu_237_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd5) & (opch_fu_237_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        d_i_type_write_assign_reg_98 <= 3'd5;
    end else if (((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd0) & (opch_fu_237_p4 == 2'd3) & (1'b1 == ap_CS_fsm_state1))) begin
        d_i_type_write_assign_reg_98 <= 3'd4;
    end else if ((((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd1) & (opch_fu_237_p4 == 2'd3) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd4) & (opch_fu_237_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd0) & (opch_fu_237_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        d_i_type_write_assign_reg_98 <= 3'd2;
    end else if (((ap_start == 1'b1) & (opcl_fu_247_p4 == 3'd3) & (opch_fu_237_p4 == 2'd3) & (1'b1 == ap_CS_fsm_state1))) begin
        d_i_type_write_assign_reg_98 <= 3'd6;
    end else if (((~(opcl_fu_247_p4 == 3'd3) & ~(opcl_fu_247_p4 == 3'd1) & ~(opcl_fu_247_p4 == 3'd0) & (ap_start == 1'b1) & (opch_fu_237_p4 == 2'd3) & (1'b1 == ap_CS_fsm_state1)) | (~(opcl_fu_247_p4 == 3'd4) & ~(opcl_fu_247_p4 == 3'd5) & ~(opcl_fu_247_p4 == 3'd0) & (ap_start == 1'b1) & (opch_fu_237_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state1)) | (~(opcl_fu_247_p4 == 3'd4) & ~(opcl_fu_247_p4 == 3'd5) & ~(opcl_fu_247_p4 == 3'd0) & (ap_start == 1'b1) & (opch_fu_237_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opch_fu_237_p4 == 2'd2) & (1'b1 == ap_CS_fsm_state1)))) begin
        d_i_type_write_assign_reg_98 <= 3'd7;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        d_i_func3_write_assign_reg_439 <= {{instruction[14:12]}};
        d_i_func7_write_assign_reg_454 <= {{instruction[31:25]}};
        d_i_rd_write_assign_reg_428 <= {{instruction[11:7]}};
        d_i_rs1_write_assign_reg_444 <= {{instruction[19:15]}};
        d_i_rs2_write_assign_reg_449 <= {{instruction[24:20]}};
        d_imm_inst_19_12_reg_434 <= {{instruction[19:12]}};
        instruction_read_reg_411 <= instruction;
        opc_reg_423 <= {{instruction[6:2]}};
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((1'b1 == ap_condition_148)) begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = 20'd0;
        end else if ((ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd2)) begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = sext_ln32_fu_333_p1;
        end else if ((ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd3)) begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = sext_ln33_fu_319_p1;
        end else if ((ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd4)) begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = sext_ln34_fu_308_p1;
        end else if ((ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd5)) begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = {{instruction_read_reg_411[31:12]}};
        end else if ((ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd6)) begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = or_ln_fu_357_p5;
        end else begin
            ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = 'bx;
        end
    end else begin
        ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_condition_148 = (~(ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd2) & ~(ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd3) & ~(ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd4) & ~(ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd5) & ~(ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 == 3'd6));
end

assign ap_phi_mux_d_i_type_write_assign_phi_fu_108_p26 = d_i_type_write_assign_reg_98;

assign ap_return_0 = opc_reg_423;

assign ap_return_1 = d_i_rd_write_assign_reg_428;

assign ap_return_2 = d_i_func3_write_assign_reg_439;

assign ap_return_3 = d_i_rs1_write_assign_reg_444;

assign ap_return_4 = d_i_rs2_write_assign_reg_449;

assign ap_return_5 = d_i_func7_write_assign_reg_454;

assign ap_return_6 = d_i_type_write_assign_reg_98;

assign ap_return_7 = ap_phi_mux_d_i_imm_write_assign_phi_fu_152_p12;

assign d_imm_inst_11_8_fu_271_p4 = {{instruction_read_reg_411[11:8]}};

assign d_imm_inst_20_fu_264_p3 = instruction_read_reg_411[32'd20];

assign d_imm_inst_31_fu_257_p3 = instruction_read_reg_411[32'd31];

assign d_imm_inst_7_fu_280_p3 = instruction_read_reg_411[32'd7];

assign opch_fu_237_p4 = {{instruction[6:5]}};

assign opcl_fu_247_p4 = {{instruction[4:2]}};

assign or_ln2_fu_313_p3 = {{d_i_func7_write_assign_reg_454}, {d_i_rd_write_assign_reg_428}};

assign or_ln3_fu_296_p5 = {{{{d_imm_inst_31_fu_257_p3}, {d_imm_inst_7_fu_280_p3}}, {tmp_3_fu_287_p4}}, {d_imm_inst_11_8_fu_271_p4}};

assign or_ln7_fu_324_p4 = {{instruction_read_reg_411[31:20]}};

assign or_ln_fu_357_p5 = {{{{d_imm_inst_31_fu_257_p3}, {d_imm_inst_19_12_reg_434}}, {d_imm_inst_20_fu_264_p3}}, {tmp_fu_348_p4}};

assign sext_ln32_fu_333_p1 = $signed(or_ln7_fu_324_p4);

assign sext_ln33_fu_319_p1 = $signed(or_ln2_fu_313_p3);

assign sext_ln34_fu_308_p1 = $signed(or_ln3_fu_296_p5);

assign tmp_3_fu_287_p4 = {{instruction_read_reg_411[30:25]}};

assign tmp_fu_348_p4 = {{instruction_read_reg_411[30:21]}};

endmodule //fde_ip_decode
