# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7a100tcsg324-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/vivado/rtl_uart.cache/wt [current_project]
  set_property parent.project_path /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/vivado/rtl_uart.xpr [current_project]
  set_property ip_repo_paths {
  /home/lucas/Documents/Projet_avance_SE/Lucas_commit/hls_turbo_simd/hls_turbo_simd/nexys_4/impl/ip
  /home/lucas/Documents/Projet_avance_SE/Lucas_commit/hls_turbo_simd/hls_turbo_simd/nexys_4_200MHz/impl/ip
  /home/lucas/Documents/Projet_avance_SE/Lucas_commit/HLS/sc_loop
} [current_project]
  set_property ip_output_repo /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/vivado/rtl_uart.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/vivado/rtl_uart.runs/synth_1/turbo_uart.dcp
  read_ip -quiet /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/vivado/rtl_uart.srcs/sources_1/ip/Conversion_0/Conversion_0.xci
  read_xdc /home/lucas/Documents/Projet_avance_SE/Lucas_commit/rtl_uart_nexys_4/xdc/Nexys4_Master.xdc
  link_design -top turbo_uart -part xc7a100tcsg324-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force turbo_uart_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file turbo_uart_drc_opted.rpt -pb turbo_uart_drc_opted.pb -rpx turbo_uart_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force turbo_uart_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file turbo_uart_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file turbo_uart_utilization_placed.rpt -pb turbo_uart_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -file turbo_uart_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force turbo_uart_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file turbo_uart_drc_routed.rpt -pb turbo_uart_drc_routed.pb -rpx turbo_uart_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file turbo_uart_methodology_drc_routed.rpt -pb turbo_uart_methodology_drc_routed.pb -rpx turbo_uart_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file turbo_uart_power_routed.rpt -pb turbo_uart_power_summary_routed.pb -rpx turbo_uart_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file turbo_uart_route_status.rpt -pb turbo_uart_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -file turbo_uart_timing_summary_routed.rpt -warn_on_violation  -rpx turbo_uart_timing_summary_routed.rpx"
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file turbo_uart_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file turbo_uart_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force turbo_uart_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force turbo_uart.mmi }
  write_bitstream -force turbo_uart.bit 
  catch {write_debug_probes -quiet -force turbo_uart}
  catch {file copy -force turbo_uart.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}
