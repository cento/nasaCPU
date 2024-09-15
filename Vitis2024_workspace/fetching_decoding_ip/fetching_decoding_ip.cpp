#include "fetching_decoding_ip.h"
#include "fetch.h"
#include "decode.h"
#include "execute.h"
#include "hls_print.h"

static void running_conditional_update(
    instruction_t instruction,
    bit_t *is_running
) {
#pragma HLS INLINE off
    *is_running = (instruction != RET);
}

static void statistic_update(
    unsigned int *nbi
) {
#pragma HLS INLINE off
        *nbi = *nbi + 1;
}

void fetching_decoding_ip(
    unsigned int start_pc,
    unsigned int code_ram[CODE_RAM_SIZE],
    unsigned int *nb_instruction
) {
#pragma HLS INTERFACE mode=s_axilite port=nb_instruction
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=code_ram
#pragma HLS INTERFACE mode=s_axilite port=start_pc
    code_address_t pc;
    instruction_t instruction;
    bit_t is_running;
    unsigned int nbi;
    decoded_instruction_t d_i;
    pc = start_pc;
    // nbi = 0;
    *nb_instruction = 0;
    do {
#pragma HLS PIPELINE II=3
        fetch(pc, code_ram, &instruction);
        decode(instruction, &d_i);
        execute(pc, d_i, &pc);
        // statistic_update(&nbi);
        statistic_update(nb_instruction);
        running_conditional_update(instruction, &is_running);
    } while (is_running);
    // *nb_instruction = nbi;
} 