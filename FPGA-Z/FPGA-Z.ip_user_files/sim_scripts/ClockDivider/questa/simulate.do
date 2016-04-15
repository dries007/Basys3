onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ClockDivider_opt

do {wave.do}

view wave
view structure
view signals

do {ClockDivider.udo}

run -all

quit -force
