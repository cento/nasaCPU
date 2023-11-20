#include <stdio.h>
#include "fetching_decoding_ip.h"

unsigned int code_ram[CODE_RAM_SIZE]={
		0x00500593,
		0x00158613,
		0x00c67693,
		0xfff68713,
		0x00576793,
		0x00c7c813,
		0x00d83893,
		0x00b83293,
		0x01c81313,
		0xff632393,
		0x7e633e13,
		0x01c35e93,
		0x41c35f13,
		0x00008067,
};

int main() {
  unsigned int nbi;
  fetching_decoding_ip(0, code_ram, &nbi);
  printf("%d fetched and decoded instructions\n", nbi);
  return 0;
}
