# User config
set ::env(DESIGN_NAME) inverter

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]


# Fill this
set ::env(CLOCK_PERIOD) 0
set ::env(CLOCK_TREE_SYNTH) 0
#set ::env(PL_SKIP_INITIAL_PLACEMENT) 1

#set ::env(PL_TARGET_DENSITY) 0.9
#set ::env(FP_CORE_UTIL) 10; # 10 % utilization

#set ::env(FP_PDN_VOFFSET) 15
#set ::env(FP_PDN_VPITCH) 5
#set ::env(FP_PDN_HOFFSET) 15 
#set ::env(FP_PDN_HPITCH) 5
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 160 160"
set ::env(PL_TARGET_DENSITY) 0.20
set ::env(PL_SKIP_INITIAL_PLACEMENT) 1


set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


