#include <stdio.h>

#include "rv32i_npp_ip.h"

int          data_ram[DATA_RAM_SIZE];
unsigned int code_ram[CODE_RAM_SIZE]={
		0x00100293,
		0x00200313,
		0xffd00393,
		0xffc00e13,
		0x00000513,
		0x00552023,
		0x00450513,
		0x00651023,
		0x00551123,
		0x00450513,
		0x01c50023,
		0x007500a3,
		0x00650123,
		0x005501a3,
		0x00050583,
		0x00150603,
		0x00250683,
		0x00350703,
		0x00054783,
		0x00154803,
		0x00254883,
		0xffc50513,
		0x00251403,
		0x00051483,
		0x00455903,
		0x00655983,
		0xffc50513,
		0x00852a03,
		0x00008067,

};

int main(){
  unsigned int nbi;
  int          w;
  rv32i_npp_ip(0, code_ram, data_ram, &nbi);
  printf("%d fetched and decoded instructions\n", nbi);
  printf("data memory dump (non null words)\n");
  for (int i=0; i<DATA_RAM_SIZE; i++){
    w = data_ram[i];
    if (w != 0)
      printf("m[%5x] = %16d (%8x)\n", 4*i, w,
            (unsigned int)w);
  }
  return 0;
}
