# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\monde\Documents\GitHub\nasa-CPU\vitis_workspace_z2_fetching_ip\z2_fetching_ip_00_system\_ide\scripts\systemdebugger_z2_fetching_ip_00_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\monde\Documents\GitHub\nasa-CPU\vitis_workspace_z2_fetching_ip\z2_fetching_ip_00_system\_ide\scripts\systemdebugger_z2_fetching_ip_00_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file C:/Users/monde/Documents/GitHub/nasa-CPU/vitis_workspace_z2_fetching_ip/z2_fetching_ip_00/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/monde/Documents/GitHub/nasa-CPU/vitis_workspace_z2_fetching_ip/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/monde/Documents/GitHub/nasa-CPU/vitis_workspace_z2_fetching_ip/z2_fetching_ip_00/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/monde/Documents/GitHub/nasa-CPU/vitis_workspace_z2_fetching_ip/z2_fetching_ip_00/Debug/z2_fetching_ip_00.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
