
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set a__b__c__return_group [add_wave_group a__b__c__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/interrupt -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_BRESP -into $a__b__c__return_group -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_BREADY -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_BVALID -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_RRESP -into $a__b__c__return_group -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_RDATA -into $a__b__c__return_group -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_RREADY -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_RVALID -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_ARREADY -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_ARVALID -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_ARADDR -into $a__b__c__return_group -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_WSTRB -into $a__b__c__return_group -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_WDATA -into $a__b__c__return_group -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_WREADY -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_WVALID -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_AWREADY -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_AWVALID -into $a__b__c__return_group -color #ffff00 -radix hex
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/s_axi_control_AWADDR -into $a__b__c__return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_my_adder_ip_top/AESL_inst_my_adder_ip/ap_clk -into $clockgroup
save_wave_config my_adder_ip.wcfg
run all
quit

