#include "ap_int.h"
#include "debug_rv32i_npp_ip.h"
#include "rv32i_npp_ip.h"

#ifndef __SYNTHESIS__
#ifdef DEBUG_EMULATE
#include "emulate.h"
#endif
#endif

static void read_reg(
  int      *reg_file,
  reg_num_t rs1,
  reg_num_t rs2,
  int      *rv1,
  int      *rv2){
  *rv1 = reg_file[rs1];
  *rv2 = reg_file[rs2];
}

static void write_reg(
  int                  *reg_file,
  decoded_instruction_t d_i,
  int                   result){
  if (d_i.rd != 0   &&
     !d_i.is_branch &&
     !d_i.is_store)
    reg_file[d_i.rd] = result;
}

static bit_t compute_branch_result(
  int     rv1,
  int     rv2,
  func3_t func3){
  switch(func3){
    case BEQ : return (rv1 == rv2);
    case BNE : return (rv1 != rv2);
    case 2   :
    case 3   : return 0;
    case BLT : return (rv1 <  rv2);
    case BGE : return (rv1 >= rv2);
    case BLTU: return (unsigned int)rv1 <  (unsigned int)rv2;
    case BGEU: return (unsigned int)rv1 >= (unsigned int)rv2;
  }
  return 0;
}

static int compute_op_result(
  int                   rv1,
  int                   rv2,
  decoded_instruction_t d_i){
  bit_t      f7_6 = d_i.func7>>5;
  ap_uint<5> shift;
  int        result;
  if (d_i.is_r_type)
    shift = rv2;
  else//I_TYPE
    shift = d_i.rs2;
  switch(d_i.func3){
    case ADD : if (d_i.is_r_type && f7_6)
                 result = rv1 - rv2;//SUB
               else
                 result = rv1 + rv2;
               break;
    case SLL : result = rv1 << shift;
               break;
    case SLT : result = rv1 < rv2;
               break;
    case SLTU: result = (unsigned int)rv1 < (unsigned int)rv2;
               break;
    case XOR : result = rv1 ^ rv2;
               break;
    case SRL : if (f7_6)
                 result = rv1 >> shift;//SRA
               else
                 result = (unsigned int)rv1 >> shift;
               break;
    case OR  : result = rv1 | rv2;
               break;
    case AND : result = rv1 & rv2;
               break;
  }
  return result;
}

static int compute_result(
  int                   rv1,
  int                   rv2,
  decoded_instruction_t d_i,
  code_address_t        pc){
  int            imm12 = ((int)d_i.imm)<<12;
  code_address_t pc4   = pc<<2;
  code_address_t npc4  = pc4 + 4;
  int            result;
  switch(d_i.type){
    case R_TYPE:
      result = compute_op_result(rv1, rv2, d_i);
      break;
    case I_TYPE:
      if (d_i.is_jalr)
        result = npc4;
      else if (d_i.is_load)
        result = rv1 + (int)d_i.imm;
      else if (d_i.is_op_imm)
        result = compute_op_result(rv1, (int)d_i.imm, d_i);
      else
        result = 0;//(d_i.opcode == SYSTEM)
      break;
    case S_TYPE:
      result = rv1 + (int)d_i.imm;
      break;
    case B_TYPE:
      result = (unsigned int)
               compute_branch_result(rv1, rv2, d_i.func3);
      break;
    case U_TYPE:
      if (d_i.is_lui)
        result = imm12;
      else//d_i.opcode == AUIPC
        result = pc4 + imm12;
      break;
    case J_TYPE:
      result = npc4;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}

static code_address_t compute_next_pc(
  code_address_t        pc,
  int                   rv1,
  decoded_instruction_t d_i,
  bit_t                 cond){
  code_address_t next_pc;
  switch(d_i.type){
    case R_TYPE:
      next_pc = (code_address_t)(pc+1);
      break;
    case I_TYPE:
      next_pc = (d_i.is_jalr)?
                (code_address_t)
                ((rv1 + ((int)d_i.imm)&0xfffffffe)>>2):
                (code_address_t)(pc+1);
      break;
    case S_TYPE:
      next_pc = (code_address_t)(pc+1);
      break;
    case B_TYPE:
      next_pc = (cond)?
                (code_address_t)(pc+(d_i.imm>>1)):
                (code_address_t)(pc+1);
      break;
    case U_TYPE:
      next_pc = (code_address_t)(pc+1);
      break;
    case J_TYPE:
      next_pc = (code_address_t)(pc+(d_i.imm>>1));
      break;
    default:
      next_pc = (code_address_t)(pc+1);
      break;
  }
  return next_pc;
}

static int mem_load(
  int             *data_ram,
  b_data_address_t address,
  func3_t          msize){
  ap_uint<2>       a01 =  address;
  bit_t            a1  = (address >> 1);
  w_data_address_t a2  = (address >> 2);
  int              result;
  char             b, b0, b1, b2, b3;
  unsigned char    ub, ub0, ub1, ub2, ub3;
  short            h, h0, h1;
  unsigned short   uh, uh0, uh1;
  int              w, ib, ih;
  unsigned int     iub, iuh;
  w   = data_ram[a2];
  b0  = w;
  ub0 = b0;
  b1  = w>>8;
  ub1 = b1;
  h0  = ((ap_uint<16>)ub1<<8) | (ap_uint<16>)ub0;
  uh0 = h0;
  b2  = w>>16;
  ub2 = b2;
  b3  = w>>24;
  ub3 = b3;
  h1  = ((ap_uint<16>)ub3<<8) | (ap_uint<16>)ub2;
  uh1 = h1;
  switch(a01){
    case 0b00: b = b0; break;
    case 0b01: b = b1; break;
    case 0b10: b = b2; break;
    case 0b11: b = b3; break;
  }
  ub  = b;
  ib  = (int)b;
  iub = (unsigned int)ub;
  h   = (a1)?h1:h0;
  uh  = h;
  ih  = (int)h;
  iuh = (unsigned int)uh;
  switch(msize){
    case LB:
      result = ib;  break;
    case LH:
      result = ih;  break;
    case LW:
      result = w;   break;
    case 3:
      result = 0;   break;
    case LBU:
      result = iub; break;
    case LHU:
      result = iuh; break;
    case 6:
    case 7:
      result = 0;   break;
  }
  return result;
}

static void mem_store(
  int             *data_ram,
  b_data_address_t address,
  int              rv2,
  ap_uint<2>       msize){
  h_data_address_t a1 = (address >> 1);
  w_data_address_t a2 = (address >> 2);
  char             rv2_0;
  short            rv2_01;
  rv2_0  = rv2;
  rv2_01 = rv2;
  switch(msize){
    case SB:
      *((char*) (data_ram) + address) = rv2_0;
      break;
    case SH:
      *((short*)(data_ram) + a1)      = rv2_01;
      break;
    case SW:
      data_ram[a2]                    = rv2;
      break;
    case 3:
      break;
  }
}

void execute(
  code_address_t        pc,
  int                  *reg_file,
  int                  *data_ram,
  decoded_instruction_t d_i,
  code_address_t       *next_pc){
  int              rv1, rv2, result;
  b_data_address_t address;
  read_reg(reg_file, d_i.rs1, d_i.rs2, &rv1, &rv2);
  result  = compute_result(rv1, rv2, d_i, pc);
  address = result;
  if (d_i.is_store)
    mem_store(data_ram, address, rv2, (ap_uint<2>)d_i.func3);
  if (d_i.is_load)
    result = mem_load(data_ram, address, d_i.func3);
  write_reg(reg_file, d_i, result);
  *next_pc = compute_next_pc(pc, rv1, d_i, (bit_t)result);

#ifndef __SYNTHESIS__
#ifdef DEBUG_EMULATE
  emulate(reg_file, d_i, *next_pc);
#endif
#endif

}
