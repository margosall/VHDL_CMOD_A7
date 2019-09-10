onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_main -L xil_defaultlib -L secureip -O5 xil_defaultlib.design_main

do {wave.do}

view wave
view structure

do {design_main.udo}

run -all

endsim

quit -force
