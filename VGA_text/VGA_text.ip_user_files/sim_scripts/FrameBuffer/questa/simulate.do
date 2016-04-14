onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FrameBuffer_opt

do {wave.do}

view wave
view structure
view signals

do {FrameBuffer.udo}

run -all

quit -force
