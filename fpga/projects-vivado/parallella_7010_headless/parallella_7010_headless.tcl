#
# Vivado (TM) v2014.2 (64-bit)
#
# parallella_7010_headless.tcl: Tcl script for re-creating project 'parallella_7010_headless'
#
# Generated by Vivado on Mon Jul 28 15:38:11 EDT 2014
# IP Build 924643 on Fri May 30 09:20:16 MDT 2014
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (parallella_7010_headless.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    "../../hdl/parallella-I/fpga_constants.v"
#    "./version.v"
#    "../../hdl/fifos/fifo_mem.v"
#    "../../hdl/fifos/fifo_full_block.v"
#    "../../hdl/fifos/fifo_empty_block.v"
#    "../../hdl/common/synchronizer.v"
#    "../../hdl/fifos/fifo.v"
#    "../../hdl/common/toggle2pulse.v"
#    "../../hdl/common/pulse2toggle.v"
#    "../../hdl/elink/ewrapper_link_txo.v"
#    "../../hdl/elink/ewrapper_link_rxi.v"
#    "../../hdl/common/pulse2pulse.v"
#    "../../hdl/common/mux4.v"
#    "../../hdl/axi/axi_slave_addrch.v"
#    "../../hdl/parallella-I/fpgacfg.v"
#    "../../hdl/elink/ewrapper_link_transmitter.v"
#    "../../hdl/elink/ewrapper_link_receiver.v"
#    "../../hdl/elink/ewrapper_io_tx_slow.v"
#    "../../hdl/elink/ewrapper_io_rx_slow.v"
#    "../../hdl/clocks/io_clock_gen_600mhz.v"
#    "../../hdl/axi/axi_slave_wr.v"
#    "../../hdl/axi/axi_slave_rd.v"
#    "../../hdl/axi/axi_master_wr.v"
#    "../../hdl/axi/axi_master_rd.v"
#    "../../hdl/elink/ewrapper_link_top.v"
#    "../../hdl/axi/axi_slave.v"
#    "../../hdl/axi/axi_master.v"
#    "../../hdl/axi/axi_elink_if.v"
#    "../../hdl/parallella-I/parallella.v"
#    "../../hdl/gpio/parallella_gpio_emio.v"
#    "../../hdl/parallella-I/parallella_z7_top.v"
#    "../../edk-vivado/parallella_7010_headless/parallella_7010_headless/parallella_7010_headless.xci"
#    "../../edk-vivado/parallella_7010_headless/processing_system7_0.xci"
#    "../../../boards/parallella-I/constraints/parallella_timing.xdc"
#    "../../../boards/parallella-I/constraints/parallella_z70x0_loc.xdc"
#
# 3. The following remote source files that were added to the original project:-
#
#    <none>
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/"]"

# Create project
create_project parallella_7010_headless .

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects parallella_7010_headless]
set_property "compxlib.overwrite_libs" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "part" "xc7z020clg400-1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_simulator" "ISim" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../../hdl/parallella-I/fpga_constants.v"]"\
 "[file normalize "$origin_dir/version.v"]"\
 "[file normalize "$origin_dir/../../hdl/fifos/fifo_mem.v"]"\
 "[file normalize "$origin_dir/../../hdl/fifos/fifo_full_block.v"]"\
 "[file normalize "$origin_dir/../../hdl/fifos/fifo_empty_block.v"]"\
 "[file normalize "$origin_dir/../../hdl/common/synchronizer.v"]"\
 "[file normalize "$origin_dir/../../hdl/fifos/fifo.v"]"\
 "[file normalize "$origin_dir/../../hdl/common/toggle2pulse.v"]"\
 "[file normalize "$origin_dir/../../hdl/common/pulse2toggle.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_link_txo.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_link_rxi.v"]"\
 "[file normalize "$origin_dir/../../hdl/common/pulse2pulse.v"]"\
 "[file normalize "$origin_dir/../../hdl/common/mux4.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_slave_addrch.v"]"\
 "[file normalize "$origin_dir/../../hdl/parallella-I/fpgacfg.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_link_transmitter.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_link_receiver.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_io_tx_slow.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_io_rx_slow.v"]"\
 "[file normalize "$origin_dir/../../hdl/clocks/io_clock_gen_600mhz.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_slave_wr.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_slave_rd.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_master_wr.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_master_rd.v"]"\
 "[file normalize "$origin_dir/../../hdl/elink/ewrapper_link_top.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_slave.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_master.v"]"\
 "[file normalize "$origin_dir/../../hdl/axi/axi_elink_if.v"]"\
 "[file normalize "$origin_dir/../../hdl/parallella-I/parallella.v"]"\
 "[file normalize "$origin_dir/../../hdl/gpio/parallella_gpio_emio.v"]"\
 "[file normalize "$origin_dir/../../hdl/parallella-I/parallella_z7_top.v"]"\

]
add_files -norecurse -fileset $obj $files

## Don't import the files, just add them as above (FH)

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
set file "parallella-I/fpga_constants.v"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj
set_property "is_global_include" "1" $file_obj

set file "parallella_7010_headless/version.v"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj
set_property "is_global_include" "1" $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "parallella_z7_top" $obj

# Create 'processing_system7_0' fileset (if not found)
if {[string equal [get_filesets -quiet processing_system7_0] ""]} {
  create_fileset -blockset processing_system7_0
}

# Set 'processing_system7_0' fileset object
set obj [get_filesets processing_system7_0]
set files [list \
 "[file normalize "$origin_dir/../../edk-vivado/parallella_7010_headless/processing_system7_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Don't Import local files from the original project, just add them (FH)

# Set 'processing_system7_0' fileset file properties for remote files
# None

# Set 'processing_system7_0' fileset file properties for local files
# None

# Set 'processing_system7_0' fileset properties
set obj [get_filesets processing_system7_0]
set_property "top" "processing_system7_0" $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

### This gets added below as the target... (FH)
# Add/Import constrs file and set constrs file properties
#set file "[file normalize "$origin_dir/../../../boards/parallella-I/constraints/parallella_timing.xdc"]"
#set file_imported [import_files -fileset constrs_1 $file]
#set file "constraints/parallella_timing.xdc"
#set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
#set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../../../boards/parallella-I/constraints/parallella_z7020_loc.xdc"]"
set file_added [add_files -fileset constrs_1 $file]
set file "constraints/parallella_z7020_loc.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../../../boards/parallella-I/constraints/parallella_z70x0_loc.xdc"]"
set file_added [add_files -fileset constrs_1 $file]
set file "constraints/parallella_z70x0_loc.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "target_constrs_file" "[file normalize "$origin_dir/../../../boards/parallella-I/constraints/parallella_timing.xdc"]" $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "parallella_z7_top" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7z020clg400-1 -flow {Vivado Synthesis 2014} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2014" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "part" "xc7z020clg400-1" $obj

# Create 'processing_system7_0_synth_1' run (if not found)
if {[string equal [get_runs -quiet processing_system7_0_synth_1] ""]} {
  create_run -name processing_system7_0_synth_1 -part xc7z020clg400-1 -flow {Vivado Synthesis 2014} -strategy "Vivado Synthesis Defaults" -constrset processing_system7_0
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs processing_system7_0_synth_1]
  set_property flow "Vivado Synthesis 2014" [get_runs processing_system7_0_synth_1]
}
set obj [get_runs processing_system7_0_synth_1]
set_property "constrset" "processing_system7_0" $obj
set_property "part" "xc7z020clg400-1" $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7z020clg400-1 -flow {Vivado Implementation 2014} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2014" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "part" "xc7z020clg400-1" $obj
set_property "steps.phys_opt_design.is_enabled" "1" $obj
set_property "steps.post_route_phys_opt_design.is_enabled" "1" $obj
set_property "steps.write_bitstream.args.bin_file" "1" $obj

# Create 'processing_system7_0_impl_1' run (if not found)
if {[string equal [get_runs -quiet processing_system7_0_impl_1] ""]} {
  create_run -name processing_system7_0_impl_1 -part xc7z020clg400-1 -flow {Vivado Implementation 2014} -strategy "Vivado Implementation Defaults" -constrset processing_system7_0 -parent_run processing_system7_0_synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs processing_system7_0_impl_1]
  set_property flow "Vivado Implementation 2014" [get_runs processing_system7_0_impl_1]
}
set obj [get_runs processing_system7_0_impl_1]
set_property "constrset" "processing_system7_0" $obj
set_property "part" "xc7z020clg400-1" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:parallella_7010_headless"
