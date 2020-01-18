# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
set_param xicom.use_bs_reader 1
set_param chipscope.maxJobs 2
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.cache/wt [current_project]
set_property parent.project_path /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/new.dat
read_verilog -library xil_defaultlib {
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/factorial/CMP.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/factorial/CNT.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/CU.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/DP.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/Pipeline_MIPS/D_Stage_Reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/Pipeline_MIPS/E_Stage_Reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/FSMmult.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/HiLo_reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/Pipeline_MIPS/M_Stage_Reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/factorial/Multiplexer.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/factorial/Multiplier.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/factorial/Register.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/Pipeline_MIPS/W_Stage_Reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/datapath/adder.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/datapath/alu.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/and_fact.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/control_unit/auxdec.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/button_debouncer.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/clk_gen.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/control_unit/controlunit.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/dmem.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/datapath/dreg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/fact_ad.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/fact_res_done_reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/fact_res_err_reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/fact_top.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/gpio_ad.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/gpio_reg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/gpio_top.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/hex_to_7seg.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/imem.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/led_mux.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/control_unit/maindec.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/Pipeline_MIPS/mips_pipelined.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/mult_inf.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/datapath/mux2.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fact/mux4.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/datapath/regfile.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/MIPS/datapath/signext.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/system.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/System/system_AD.v
  /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/sources_1/new/FPGA/fpga_top.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/constrs_1/new/FPGA_top.xdc
set_property used_in_implementation false [get_files /home/amer/Downloads/CMPE-140-master/CMPE-140-master/A8_Pipelined_MIPS_Processor/Pipelined_MIPS_SoC/Pipelined_MIPS_SoC.srcs/constrs_1/new/FPGA_top.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top fpga_top -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef fpga_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file fpga_top_utilization_synth.rpt -pb fpga_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]