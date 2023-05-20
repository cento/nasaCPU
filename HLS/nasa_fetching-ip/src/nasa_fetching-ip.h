#ifndef __NASA-FETCHING_IP
#define __NASA-FETCHING_IP
#include "ap_int.h"

// n. of instructions: 2^16=65536
#define LOG_CODE_RAM_SIZE 16

// container for the instructions
#define CODE_RAM_SIZE (1<<LOG_CODE_RAM_SIZE)

// instruction that terminate the main loop
#define RET	0x8067
// RET is an alias to:
// jalr x0, x1, 0
// x1 holds the return address

// 32-bit / 1 word
typedef unsigned int instruction_t;
typedef ap_uint<LOG_RAM_SIZE> code_address_t;
typedef ap_uint<1>	bit_t;

void nasa_fetching-ip(
		unsigned int start_pc,
		unsigned int code_ram[CODE_RAM_SIZE]
);

#endif
