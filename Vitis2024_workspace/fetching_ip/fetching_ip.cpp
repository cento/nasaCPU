#include "fetching_ip.h"
#include "fetch.h"
#include "execute.h"

static void running_conditional_update(
    instruction_t instruction,
    bit_t *is_running
) {
#pragma HLS INLINE off
    *is_running = (instruction != RET);
}

void fetching_ip(
    unsigned int start_pc,
    unsigned int code_ram[CODE_RAM_SIZE]
) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=code_ram
#pragma HLS INTERFACE mode=s_axilite port=start_pc
    code_address_t pc;
    instruction_t instruction;
    bit_t is_running;
    pc = start_pc;
    do {
#pragma HLS PIPELINE off
        fetch(pc, code_ram, &instruction);
        execute(pc, &pc);
        running_conditional_update(instruction, &is_running);
    } while (is_running);
    start_pc = 1;
} 