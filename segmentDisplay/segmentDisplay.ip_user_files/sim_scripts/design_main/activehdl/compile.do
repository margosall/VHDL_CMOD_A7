vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../bd/design_main/ip/design_main_timer_0_0/sim/design_main_timer_0_0.vhd" \
"../../../bd/design_main/ip/design_main_segmentDisplay_0_0/sim/design_main_segmentDisplay_0_0.vhd" \
"../../../bd/design_main/ip/design_main_mux_0_0/sim/design_main_mux_0_0.vhd" \
"../../../bd/design_main/ip/design_main_binary_bcd_0_0/sim/design_main_binary_bcd_0_0.vhd" \
"../../../bd/design_main/ip/design_main_mux4_1_0_0/sim/design_main_mux4_1_0_0.vhd" \
"../../../bd/design_main/ip/design_main_uint16_seg_coder_0_1/sim/design_main_uint16_seg_coder_0_1.vhd" \
"../../../bd/design_main/sim/design_main.vhd" \


