
log_wave -r /
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
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_done -into $blocksiggroup
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_idle -into $blocksiggroup
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_ready -into $blocksiggroup
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_fetching_decoding_ip_top/AESL_inst_fetching_decoding_ip/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_fetching_decoding_ip_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/LENGTH_code_ram -into $tb_portdepth_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/LENGTH_nb_instruction -into $tb_portdepth_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/LENGTH_start_pc -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_start_pc__code_ram__nb_instruction__return_group [add_wave_group start_pc__code_ram__nb_instruction__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_fetching_decoding_ip_top/control_INTERRUPT -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_BRESP -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_BREADY -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_BVALID -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_RRESP -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_RDATA -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_RREADY -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_RVALID -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_ARREADY -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_ARVALID -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_ARADDR -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_WSTRB -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_WDATA -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_WREADY -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_WVALID -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_AWREADY -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_AWVALID -into $tb_start_pc__code_ram__nb_instruction__return_group -color #ffff00 -radix hex
add_wave /apatb_fetching_decoding_ip_top/control_AWADDR -into $tb_start_pc__code_ram__nb_instruction__return_group -radix hex
save_wave_config fetching_decoding_ip.wcfg
run all

