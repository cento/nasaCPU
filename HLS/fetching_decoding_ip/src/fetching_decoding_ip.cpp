#include "fetching_decoding_ip.h"
#include "fetch.h"
#include "decode.h"
#include "execute.h"
#include "running_cond_update.h"
#include "statistic_update.h"

void fetching_decoding_ip(
  unsigned int  start_pc,
  unsigned int  code_ram[CODE_RAM_SIZE],
  unsigned int *nb_instruction){

#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=code_ram
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=return

  code_address_t        pc;
  instruction_t         instruction;
  bit_t                 is_running;

// counter for the num of insts fetched+decoded
  unsigned int          nbi;

  decoded_instruction_t d_i;
  pc  = start_pc;
  nbi = 0;

  do{

#pragma HLS PIPELINE II=3

    fetch(pc, code_ram, &instruction);
    decode(instruction, &d_i);
    execute(pc, d_i, &pc);
    statistic_update(&nbi);
    running_cond_update(instruction, &is_running);
  } while (is_running);

  *nb_instruction = nbi;
}
