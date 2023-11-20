#include "running_cond_update.h"

//static
void running_cond_update(
  instruction_t instruction,
  bit_t        *is_running){

#pragma HLS INLINE off
  *is_running = (instruction != RET);

}
