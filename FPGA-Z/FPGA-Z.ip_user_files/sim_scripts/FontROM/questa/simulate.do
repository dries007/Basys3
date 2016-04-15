onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FontROM_opt

do {wave.do}

view wave
view structure
view signals

do {FontROM.udo}

run -all

quit -force
