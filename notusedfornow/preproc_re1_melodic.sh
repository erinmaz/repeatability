#!/bin/bash

in=`imglob $1` #realigned E1 data from asltbx
mask=`imglob $2` #mean mask
fslmaths $in -nan ${in}_nan
perfusion_subtract ${in}_nan ${in}_nan_sub -m

tsnr_calc.sh ${in}_nan_sub $mask

sed 's:INPUT:'${in}'_nan:g' /Users/erin/Desktop/Projects/Repeatability/code_2018/linear.fsf > ${in}_nan_linear.fsf
feat ${in}_nan_linear.fsf

fsl_regfilt -i ${in}_nan.feat/filtered_func_data.nii.gz -d ${in}_nan.feat/design.mat -f "1" -o ${in}_nan.feat/filtered_func_data_nolinear

sed 's:INPUT:'${in}'_nan.feat/filtered_func_data_nolinear:g' /Users/erin/Desktop/Projects/Repeatability/code_2018/melodic.fsf > ${in}_nan_nolinear_melodic.fsf
feat ${in}_nan_nolinear_melodic.fsf
fsleyes ${in}_nan.feat/filtered_func_data_nolinear.feat/filtered_func_data.ica/melodic_IC

