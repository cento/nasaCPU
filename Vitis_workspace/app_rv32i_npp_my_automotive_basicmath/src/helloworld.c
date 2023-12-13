/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xrv32i_npp_ip.h"

#define PI 3.14159265358979323846
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
XRv32i_npp_ip_Config *cfg_ptr;
XRv32i_npp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "basicmath_small_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "basicmath_small_no_print_0_text.hex"
};
int main(){
  unsigned int  i, gi, solutions;
  double        d;
  double        X;
  int           i3, i4;
  unsigned long l = 0x3fed0169L, u;
  cfg_ptr = XRv32i_npp_ip_LookupConfig(0);
  XRv32i_npp_ip_CfgInitialize(&ip, cfg_ptr);
  XRv32i_npp_ip_Set_start_pc(&ip, 0);
  XRv32i_npp_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XRv32i_npp_ip_Write_data_ram_Words(&ip, 0, data_ram, DATA_RAM_SIZE);
  XRv32i_npp_ip_Start(&ip);
  while (!XRv32i_npp_ip_IsDone(&ip));
  gi = 0xb18/4;
  printf("********* CUBIC FUNCTIONS ***********\n");
  printf("Solutions:");
  XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  for(i3=0; i3<20; i3++) {
    for(i4=0; i4<10; i4++) {
      printf("Solutions:");
      XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
      gi++;
      for(i=0;i<solutions;i++){
   	    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
        gi+=2;
        printf(" %f",d);
      }
      printf("\n");
    }
  }
  printf("********* INTEGER SQR ROOTS ***********\n");
  for (i = 0; i < 100; ++i)
  //for (i = 0; i < 1001; ++i)
    {
     XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&u, 2);
     gi+=2;
     printf("sqrt(%3d) = %2ld\n", i, u);
    }
  XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&u, 2);
  gi+=2;
  printf("\nsqrt(%lX) = %lX\n", l, u);
  printf("********* ANGLE CONVERSION ***********\n");
  for (i=0, X = 0.0; X <= 360.0; i++, X += 1.0){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf("%3.0f degrees = %.12f radians\n", X, d);
  }
  puts("");
  for (i=0, X = 0.0; X <= (2 * PI + 1e-6); i++, X += (PI / 180)){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf("%.12f radians = %3.0f degrees\n", X, d);
  }
  printf("%d fetched, decoded and run instructions\n",
        (int)XRv32i_npp_ip_Get_nb_instruction(&ip));
  return 0;
}
