#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Sep 10 18:26:33 EEST 2019
# SW Build 2615518 on Fri Aug  9 15:53:29 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 14ccaad188b44019bdbd8e0faafd6646 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot main_func_synth xil_defaultlib.main -log elaborate.log"
xelab -wto 14ccaad188b44019bdbd8e0faafd6646 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot main_func_synth xil_defaultlib.main -log elaborate.log

