vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_main/ip/design_main_timer_0_0/sim/design_main_timer_0_0.vhd" \
"../../../bd/design_main/ip/design_main_uint16_seg_coder_0_0/sim/design_main_uint16_seg_coder_0_0.vhd" \
"../../../bd/design_main/ip/design_main_segmentDisplay_0_0/sim/design_main_segmentDisplay_0_0.vhd" \
"../../../bd/design_main/ip/design_main_mux_0_0/sim/design_main_mux_0_0.vhd" \
"../../../bd/design_main/sim/design_main.vhd" \


