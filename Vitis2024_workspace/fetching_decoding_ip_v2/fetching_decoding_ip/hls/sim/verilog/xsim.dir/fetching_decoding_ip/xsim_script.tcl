set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {fetching_decoding_ip} -view {{fetching_decoding_ip_dataflow_ana.wcfg}} -tclbatch {fetching_decoding_ip.tcl} -protoinst {fetching_decoding_ip.protoinst}
