
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set start_pc__code_ram__nb_instruction__return_group [add_wave_group start_pc__code_ram__nb_instruction__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/interrupt -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_BRESP -into $start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_BREADY -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_BVALID -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_RRESP -into $start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_RDATA -into $start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_RREADY -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_RVALID -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_ARREADY -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_ARVALID -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_ARADDR -into $start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_WSTRB -into $start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_WDATA -into $start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_WREADY -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_WVALID -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_AWREADY -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_AWVALID -into $start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/s_axi_control_AWADDR -into $start_pc__code_ram__nb_instruction__return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_clk -into $clockgroup
save_wave_config fetching_decoding_ip.wcfg
run all
quit

