#include <stdio.h>
#include "rv32i_npp_ip.h"

// int          data_ram[DATA_RAM_SIZE];
// unsigned int code_ram[CODE_RAM_SIZE]={
// #include "test_load_store_0_text.hex"
// };
// int main(){
//   unsigned int nbi;
//   int          w;
//   rv32i_npp_ip(0, code_ram, data_ram, &nbi);
//   printf("%d fetched and decoded instructions\n", nbi);
//   printf("data memory dump (non null words)\n");
//   for (int i=0; i<DATA_RAM_SIZE; i++){
//     w = data_ram[i];
//     if (w != 0)
//       printf("m[%5x] = %16d (%8x)\n", 4*i, w,
//             (unsigned int)w);
//   }
//   return 0;
// }

unsigned int data_ram[DATA_RAM_SIZE]={
#include "test_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_0_text.hex"
};
char        *name[38] = {
  "addi  ", "add   ", "andi  ", "and   ", "auipc ",
  "beq   ", "bge   ", "bgeu  ", "blt   ", "bltu  ", "bne   ",
  "jalr  ", "jal   ",
  "lb    ", "lbu   ", "lh    ", "lhu   ", "lui   ", "lw    ",
  "ori   ", "or    ",
  "sb    ", "sh    ", "simple",
  "slli  ", "sll   ", "slti  ", "sltiu ", "slt   ", "sltu  ",
  "srai  ", "sra   ", "srli  ", "srl   ", "sub   ", "sw    ",
  "xori  ", "xor   "
};
int main(){
  unsigned int nbi;
  int          w;
  rv32i_npp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  for (int i=0; i<38; i++){
    printf("%s:",name[i]);
    if (data_ram[0x801+i]==0)
      printf(" all tests passed\n");
    else
      printf(" test %d failed\n",data_ram[0x801+i]);
  }
  return 0;
}
