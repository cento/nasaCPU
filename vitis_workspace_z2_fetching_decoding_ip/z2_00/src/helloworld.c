#include <stdio.h>
#include "xfetching_decoding_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
XFetching_decoding_ip_Config *cfg_ptr;
XFetching_decoding_ip         ip;
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
  cfg_ptr = XFetching_decoding_ip_LookupConfig(XPAR_XFETCHING_DECODING_IP_0_DEVICE_ID);
  XFetching_decoding_ip_CfgInitialize(&ip, cfg_ptr);
  XFetching_decoding_ip_Set_start_pc(&ip, 0);
  XFetching_decoding_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XFetching_decoding_ip_Start(&ip);
  while (!XFetching_decoding_ip_IsDone(&ip));
  printf("%d fetched and decoded instructions\n",
    (int)XFetching_decoding_ip_Get_nb_instruction(&ip));
}
