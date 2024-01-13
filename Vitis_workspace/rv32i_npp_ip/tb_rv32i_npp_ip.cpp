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
//   printf("%d fetched, decoded and run instructions\n", nbi);
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


// #define PI     3.14159265358979323846
// #define RESULT 0xb18
// unsigned int data_ram[DATA_RAM_SIZE]={
// #include "basicmath_small_no_print_0_data.hex"
// };
// unsigned int code_ram[CODE_RAM_SIZE]={
// #include "basicmath_small_no_print_0_text.hex"
// };
// int main(){
//   unsigned int  nbi, i, gi, solutions;
//   double        d;
//   double        X;
//   int           i3, i4;
//   unsigned long l = 0x3fed0169L, u;
//   rv32i_npp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
//   gi = RESULT/4;
//   printf("********* CUBIC FUNCTIONS ***********\n");
//   printf("Solutions:");
//   memcpy(&solutions, &data_ram[gi], sizeof(int));
//   gi++;
//   for(i=0;i<solutions;i++){
//     memcpy(&d,&data_ram[gi],sizeof(double));
//     gi+=2;
//     printf(" %f",d);
//   }
//   printf("\n");
//   printf("Solutions:");
//   memcpy(&solutions, &data_ram[gi], sizeof(int));
//   gi++;
//   for(i=0;i<solutions;i++){
//     memcpy(&d,&data_ram[gi],sizeof(double));
//     gi+=2;
//     printf(" %f",d);
//   }
//   printf("\n");
//   printf("Solutions:");
//   memcpy(&solutions, &data_ram[gi], sizeof(int));
//   gi++;
//   for(i=0;i<solutions;i++){
//     memcpy(&d,&data_ram[gi],sizeof(double));
//     gi+=2;
//     printf(" %f",d);
//   }
//   printf("\n");
//   printf("Solutions:");
//   memcpy(&solutions, &data_ram[gi], sizeof(int));
//   gi++;
//   for(i=0;i<solutions;i++){
//     memcpy(&d,&data_ram[gi],sizeof(double));
//     gi+=2;
//     printf(" %f",d);
//   }
//   printf("\n");
//   for(i3=0; i3<20; i3++) {
//     for(i4=0; i4<10; i4++) {
//       printf("Solutions:");
//       memcpy(&solutions, &data_ram[gi], sizeof(int));
//       gi++;
//       for(i=0;i<solutions;i++){
//         memcpy(&d,&data_ram[gi],sizeof(double));
//         gi+=2;
//         printf(" %f",d);
//       }
//       printf("\n");
//     }
//   }
//   printf("********* INTEGER SQR ROOTS ***********\n");
//   for (i = 0; i < 100; ++i){
//     memcpy(&u,&data_ram[gi],sizeof(unsigned long));
//     gi+=2;
//     printf("sqrt(%3d) = %2d\n", i, u);
//   }
//   memcpy(&u,&data_ram[gi],sizeof(unsigned long));
//   gi+=2;
//   printf("\nsqrt(%lX) = %X\n", l, u);
//   printf("********* ANGLE CONVERSION ***********\n");
//   for (i=0, X = 0.0; X <= 360.0; i++, X += 1.0){
//     memcpy(&d,&data_ram[gi],sizeof(double));
//     gi+=2;
//     printf("%3.0f degrees = %.12f radians\n", X, d);
//   }
//   puts("");
//   for (i=0, X = 0.0; X <= (2 * PI + 1e-6); i++, X += (PI / 180)){
//     memcpy(&d,&data_ram[gi],sizeof(double));
//     gi+=2;
//     printf("%.12f radians = %3.0f degrees\n", X, d);
//   }
//   printf("%d fetched, decoded and run instructions\n", nbi);
//   return 0;
// }
