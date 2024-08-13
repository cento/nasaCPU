#include "xmy_adder_ip.h"

XMy_adder_ip_Config XMy_adder_ip_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,my-adder-ip-1.0", /* compatible */
		0x40000000 /* reg */
	},
	 {
		 NULL
	}
};