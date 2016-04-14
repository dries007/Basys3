onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FiFo_opt

do {wave.do}

view wave
view structure
view signals

do {FiFo.udo}

run -all

quit -force
