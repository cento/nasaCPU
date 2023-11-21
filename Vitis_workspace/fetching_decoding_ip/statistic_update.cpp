#include "statistic_update.h"

// why static here? advantages?
//static
void statistic_update(
		unsigned int *nbi){

#pragma HLS INLINE off
	*nbi = *nbi + 1;
}
