#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Sep 10 18:26:50 EEST 2019
# SW Build 2615518 on Fri Aug  9 15:53:29 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim main_func_synth -key {Post-Synthesis:sim_1:Functional:main} -tclbatch main.tcl -log simulate.log"
xsim main_func_synth -key {Post-Synthesis:sim_1:Functional:main} -tclbatch main.tcl -log simulate.log

