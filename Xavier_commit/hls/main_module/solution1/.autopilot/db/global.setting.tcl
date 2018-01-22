
set TopModule "uart_wrapper"
set ClockPeriod "10.000000"
set ClockList {clk}
set multiClockList {}
set PortClockMap {reset clk e clk s clk}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7a100t:csg324:-1"
set SourceFiles {sc {../../src/modules/uart_wrapper_oled.cpp ../../src/modules/uart_wrapper.cpp ../../src/modules/top_level.cpp ../../src/modules/racine.cpp ../../src/modules/oled_process.cpp ../../src/modules/filtre2.cpp ../../src/modules/filtre1.cpp ../../src/modules/doubleur.cpp ../../src/modules/comparateur.cpp ../../src/modules/carre.cpp ../../src/modules/UartModOut.cpp ../../src/modules/UartModIn.cpp} c {}}
set SourceFlags {sc {{} {} {} {} {} {} {} {} {} {} {} {}} c {}}
set DirectiveFile {Y:/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/git/Xavier_commit/hls/main_module/solution1/solution1.directive}
set TBFiles {verilog {../../src/analyseur/analyseur.cpp ../../src/analyseur/analyseur.h ../../src/gene/carre_soft.cpp ../../src/gene/carre_soft.h ../../src/gene/gene.cpp ../../src/gene/gene.h ../../src/analyseur/sc_store.cpp ../../src/analyseur/sc_store.h ../../src/tb/tb_carre.cpp} bc {../../src/analyseur/analyseur.cpp ../../src/analyseur/analyseur.h ../../src/gene/carre_soft.cpp ../../src/gene/carre_soft.h ../../src/gene/gene.cpp ../../src/gene/gene.h ../../src/analyseur/sc_store.cpp ../../src/analyseur/sc_store.h ../../src/tb/tb_carre.cpp} vhdl {../../src/analyseur/analyseur.cpp ../../src/analyseur/analyseur.h ../../src/gene/carre_soft.cpp ../../src/gene/carre_soft.h ../../src/gene/gene.cpp ../../src/gene/gene.h ../../src/analyseur/sc_store.cpp ../../src/analyseur/sc_store.h ../../src/tb/tb_carre.cpp} sc {../../src/analyseur/analyseur.cpp ../../src/analyseur/analyseur.h ../../src/gene/carre_soft.cpp ../../src/gene/carre_soft.h ../../src/gene/gene.cpp ../../src/gene/gene.h ../../src/analyseur/sc_store.cpp ../../src/analyseur/sc_store.h ../../src/tb/tb_carre.cpp} cas {../../src/analyseur/analyseur.cpp ../../src/analyseur/analyseur.h ../../src/gene/carre_soft.cpp ../../src/gene/carre_soft.h ../../src/gene/gene.cpp ../../src/gene/gene.h ../../src/analyseur/sc_store.cpp ../../src/analyseur/sc_store.h ../../src/tb/tb_carre.cpp} c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/artix7/artix7 xilinx/artix7/artix7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."
set HPFPO "0"
