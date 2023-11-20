#include "rv32i_npp_ip.h"

type_t type(opcode_t opcode);
i_immediate_t i_immediate(decoded_immediate_t d_imm);
s_immediate_t s_immediate(decoded_immediate_t d_imm);
b_immediate_t b_immediate(decoded_immediate_t d_imm);
u_immediate_t u_immediate(decoded_immediate_t d_imm);
j_immediate_t j_immediate(decoded_immediate_t d_imm);

static type_t type_00(ap_uint<3> opcl){
  switch(opcl){
    case 0b000: return I_TYPE;     //LOAD
    case 0b001: return OTHER_TYPE; //LOAD-FP
    case 0b010: return OTHER_TYPE; //CUSTOM-0
    case 0b011: return OTHER_TYPE; //MISC-MEM
    case 0b100: return I_TYPE;     //OP-IMM
    case 0b101: return U_TYPE;     //AUIPC
    case 0b110: return OTHER_TYPE; //OP-IMM-32
    case 0b111: return OTHER_TYPE; //RV48-0
  }
  return UNDEFINED_TYPE;
}
static type_t type_01(ap_uint<3> opcl){
  switch(opcl){
    case 0b000: return S_TYPE;     //STORE
    case 0b001: return OTHER_TYPE; //STORE-FP
    case 0b010: return OTHER_TYPE; //CUSTOM-1
    case 0b011: return OTHER_TYPE; //AMO
    case 0b100: return R_TYPE;     //OP
    case 0b101: return U_TYPE;     //LUI
    case 0b110: return OTHER_TYPE; //OP-32
    case 0b111: return OTHER_TYPE; //RV64
  }
  return UNDEFINED_TYPE;
}
static type_t type_10(ap_uint<3> opcl){
  switch(opcl){
    case 0b000: return OTHER_TYPE; //MADD
    case 0b001: return OTHER_TYPE; //MSUB
    case 0b010: return OTHER_TYPE; //NMSUB
    case 0b011: return OTHER_TYPE; //NMADD
    case 0b100: return OTHER_TYPE; //OP-FP
    case 0b101: return OTHER_TYPE; //RESERVED-0
    case 0b110: return OTHER_TYPE; //CUSTOM-2-RV128
    case 0b111: return OTHER_TYPE; //RV48-1
  }
  return UNDEFINED_TYPE;
}
static type_t type_11(ap_uint<3> opcl){
  switch(opcl){
    case 0b000: return B_TYPE;     //BRANCH
    case 0b001: return I_TYPE;     //JALR
    case 0b010: return OTHER_TYPE; //RESERVED-1
    case 0b011: return J_TYPE;     //JAL
    case 0b100: return OTHER_TYPE; //SYSTEM
    case 0b101: return OTHER_TYPE; //RESERVED-2
    case 0b110: return OTHER_TYPE; //CUSTOM-3-RV128
    case 0b111: return OTHER_TYPE; //RV80
  }
  return UNDEFINED_TYPE;
}
type_t type(opcode_t opcode){
  ap_uint<2> opch = opcode >> 3;
  ap_uint<3> opcl = opcode;
  switch(opch){
    case 0b00: return type_00(opcl);
    case 0b01: return type_01(opcl);
    case 0b10: return type_10(opcl);
    case 0b11: return type_11(opcl);
  }
  return UNDEFINED_TYPE;
}

i_immediate_t i_immediate(decoded_immediate_t d_imm){
 return (((i_immediate_t)d_imm.inst_31   <<11) |
         ((i_immediate_t)d_imm.inst_30_25<< 5) |
         ((i_immediate_t)d_imm.inst_24_21<< 1) |
         ((i_immediate_t)d_imm.inst_20       ));
}
s_immediate_t s_immediate(decoded_immediate_t d_imm){
 return (((s_immediate_t)d_imm.inst_31   <<11) |
         ((s_immediate_t)d_imm.inst_30_25<< 5) |
         ((s_immediate_t)d_imm.inst_11_8 << 1) |
         ((s_immediate_t)d_imm.inst_7        ));
}
b_immediate_t b_immediate(decoded_immediate_t d_imm){
 return (((b_immediate_t)d_imm.inst_31   <<11) |
         ((b_immediate_t)d_imm.inst_7    <<10) |
         ((b_immediate_t)d_imm.inst_30_25<< 4) |
         ((b_immediate_t)d_imm.inst_11_8     ));
}
u_immediate_t u_immediate(decoded_immediate_t d_imm){
 return (((u_immediate_t)d_imm.inst_31   <<19) |
         ((u_immediate_t)d_imm.inst_30_25<<13) |
         ((u_immediate_t)d_imm.inst_24_21<< 9) |
         ((u_immediate_t)d_imm.inst_20   << 8) |
         ((u_immediate_t)d_imm.inst_19_12    ));
}
j_immediate_t j_immediate(decoded_immediate_t d_imm){
 return (((j_immediate_t)d_imm.inst_31   <<19) |
         ((j_immediate_t)d_imm.inst_19_12<<11) |
         ((j_immediate_t)d_imm.inst_20   <<10) |
         ((j_immediate_t)d_imm.inst_30_25<< 4) |
         ((j_immediate_t)d_imm.inst_24_21    ));
}

static void decode_instruction(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
  d_i->opcode     = (instruction >>  2);
  d_i->rd         = (instruction >>  7);
  d_i->func3      = (instruction >> 12);
  d_i->rs1        = (instruction >> 15);
  d_i->rs2        = (instruction >> 20);
  d_i->func7      = (instruction >> 25);
  d_i->is_load    = (d_i->opcode == LOAD);
  d_i->is_store   = (d_i->opcode == STORE);
  d_i->is_branch  = (d_i->opcode == BRANCH);
  d_i->is_jalr    = (d_i->opcode == JALR);
  d_i->is_ret     = (instruction == RET);
  d_i->is_lui     = (d_i->opcode == LUI);
  d_i->is_op_imm  = (d_i->opcode == OP_IMM);
  d_i->type       = type(d_i->opcode);
  d_i->is_r_type  = (d_i->type   == R_TYPE);
}

static void decode_immediate(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
  decoded_immediate_t d_imm;
  d_imm.inst_31    = (instruction >> 31);
  d_imm.inst_30_25 = (instruction >> 25);
  d_imm.inst_24_21 = (instruction >> 21);
  d_imm.inst_20    = (instruction >> 20);
  d_imm.inst_19_12 = (instruction >> 12);
  d_imm.inst_11_8  = (instruction >>  8);
  d_imm.inst_7     = (instruction >>  7);
  switch(d_i->type){
    case UNDEFINED_TYPE: d_i->imm = 0; break;
    case R_TYPE:         d_i->imm = 0; break;
    case I_TYPE:         d_i->imm = i_immediate(d_imm); break;
    case S_TYPE:         d_i->imm = s_immediate(d_imm); break;
    case B_TYPE:         d_i->imm = b_immediate(d_imm); break;
    case U_TYPE:         d_i->imm = u_immediate(d_imm); break;
    case J_TYPE:         d_i->imm = j_immediate(d_imm); break;
    case OTHER_TYPE:     d_i->imm = 0; break;
  }
}

void decode(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
  decode_instruction(instruction, d_i);
  decode_immediate  (instruction, d_i);
}
