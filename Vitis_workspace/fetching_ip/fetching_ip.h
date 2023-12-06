#ifndef __FETCHING_IP
#define __FETCHING_IP

#include "ap_int.h"

// 16 bits  (2^16 instructions/words in RAM)
#define LOG_CODE_RAM_SIZE 16

//size in words (2^16=65536)
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)


// pseudo for jalr x0, x1, 0
#define RET               0x8067

// 32-bit word
typedef unsigned int               instruction_t;

// 16-bit address (one address per instruction - in words)
typedef ap_uint<LOG_CODE_RAM_SIZE> code_address_t;
// 1-bit
typedef ap_uint<1>                 bit_t;

void fetching_ip(
  unsigned int start_pc,
  unsigned int code_ram[CODE_RAM_SIZE]);

#endif
