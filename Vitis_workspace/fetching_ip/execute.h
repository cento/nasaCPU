#ifndef __EXECUTE
#define __EXECUTE

#include "fetching_ip.h"

// execute + calculate the next PC
void execute(
  code_address_t  pc,
  code_address_t *next_pc);

#endif
