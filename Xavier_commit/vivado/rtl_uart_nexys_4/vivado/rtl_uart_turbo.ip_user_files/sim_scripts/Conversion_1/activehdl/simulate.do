onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Conversion_1 -L xil_defaultlib -L secureip -O5 xil_defaultlib.Conversion_1

do {wave.do}

view wave
view structure

do {Conversion_1.udo}

run -all

endsim

quit -force
