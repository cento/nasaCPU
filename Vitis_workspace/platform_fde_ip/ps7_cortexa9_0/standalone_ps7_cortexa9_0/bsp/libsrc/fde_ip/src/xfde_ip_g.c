#include "xfde_ip.h"

XFde_ip_Config XFde_ip_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,fde-ip-1.0", /* compatible */
		0x40000000 /* reg */
	},
	 {
		 NULL
	}
};