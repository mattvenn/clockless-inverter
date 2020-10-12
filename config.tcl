# User config
set ::env(DESIGN_NAME) inverter

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]


# Fill this
set ::env(CLOCK_PERIOD) "10.000"
set ::env(CLOCK_PORT) "clk"

set ::env(PL_TARGET_DENSITY) 0.9
set ::env(FP_CORE_UTIL) 10; # 10 % utilization
set ::env(FP_PDN_VOFFSET) 15
set ::env(FP_PDN_VPITCH) 5
set ::env(FP_PDN_HOFFSET) 15 
set ::env(FP_PDN_HPITCH) 5

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


