#include "xrv32i_npp_ip.h"

XRv32i_npp_ip_Config XRv32i_npp_ip_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,rv32i-npp-ip-1.0", /* compatible */
		0x40000000 /* reg */
	},
	 {
		 NULL
	}
};