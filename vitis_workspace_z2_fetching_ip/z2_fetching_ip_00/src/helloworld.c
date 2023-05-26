#include <stdio.h>
#include "xfetching_ip.h"
#include "xparameters.h"

#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)

XFetching_ip_Config *cfg_ptr;
XFetching_ip         ip;

// instead of inclusion, copy/paste the program to load here
word_type code_ram[CODE_RAM_SIZE]={
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

int main(){
  cfg_ptr = XFetching_ip_LookupConfig(XPAR_XFETCHING_IP_0_DEVICE_ID);
  XFetching_ip_CfgInitialize(&ip, cfg_ptr);
  XFetching_ip_Set_start_pc(&ip, 0);
  XFetching_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XFetching_ip_Start(&ip);
  while (!XFetching_ip_IsDone(&ip));
  printf("done\n");
}
