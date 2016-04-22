set_property SRC_FILE_INFO {cfile:/home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/ClockDivider/ClockDivider.xdc rfile:../../../FPGA-Z.srcs/sources_1/ip/ClockDivider/ClockDivider.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clkIn]] 0.1
