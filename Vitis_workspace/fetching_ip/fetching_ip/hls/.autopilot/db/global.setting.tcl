
set TopModule "fetching_ip"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix fetching_ip_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c {C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/running_cond_update.cpp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/fetching_ip.cpp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/fetch.cpp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/execute.cpp}}
set SourceFlags {sc {} c {{} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/tb_fetching_ip.cpp bc C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/tb_fetching_ip.cpp vhdl C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/tb_fetching_ip.cpp sc C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/tb_fetching_ip.cpp cas C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/fetching_ip/tb_fetching_ip.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
