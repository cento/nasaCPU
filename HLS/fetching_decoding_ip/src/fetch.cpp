#include "debug_fetching_decoding_ip.h"
#include "fetching_decoding_ip.h"

#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
#include <stdio.h>
#endif
#endif

void fetch(
  code_address_t pc,
  instruction_t *code_ram,
  instruction_t *instruction){

#pragma HLS INLINE off
  *instruction = code_ram[pc];

#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
  printf("PC: %d , realPC: %04d , instruction: %08x\n",pc, (int)(pc<<2), *instruction);
#endif
#endif

}
