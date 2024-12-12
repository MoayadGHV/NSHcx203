#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Dec 12 23:25:53 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim tb_k2_behav -key {Behavioral:sim_1:Functional:tb_k2} -tclbatch tb_k2.tcl -view /home/nsh1/k2UARTProject/tb_k2_behav.wcfg -log simulate.log"
xsim tb_k2_behav -key {Behavioral:sim_1:Functional:tb_k2} -tclbatch tb_k2.tcl -view /home/nsh1/k2UARTProject/tb_k2_behav.wcfg -log simulate.log

