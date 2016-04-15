vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../FPGA-Z.srcs/sources_1/ip/ClockDivider/ClockDivider_clk_wiz.v" \
"../../../../FPGA-Z.srcs/sources_1/ip/ClockDivider/ClockDivider.v" \


vlog -work xil_defaultlib "glbl.v"

