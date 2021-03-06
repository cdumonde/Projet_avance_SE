onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Conversion_1

do {wave.do}

view wave
view structure
view signals

do {Conversion_1.udo}

run -all

quit -force
