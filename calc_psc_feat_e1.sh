#!/bin/bash
# Input 1: feat directory
# output: cope1_baseline and cope1_psc (in stats_rawfile_nothr dir of input feat dir)

# We want the mean value of the regressor (uses the 1st regressor)
# Assumes the regressor has been zero-meaned and has a range of 1 *** don't need range of 1, still works fine. Just keep in mind your PSC is scaled.
# (using -(min) of the zero-meaned regressor to equal the mean of the regressor when scaled 0-1) 

avgReg=`awk 'NR == 6 || $1 < min { line = $0; min = $1}; END {print -line}' ${1}/design.mat`

fslmaths ${1}/stats_rawfile_nothr/cope1 -mul $avgReg -mul -1 -add ${1}/mean_func ${1}/stats_rawfile_nothr/cope1_baseline
fslmaths ${1}/stats_rawfile_nothr/cope1 -div ${1}/stats_rawfile_nothr/cope1_baseline ${1}/stats_rawfile_nothr/cope1_psc
