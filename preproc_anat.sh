#!/bin/bash

#subject T1 as input

T1=`imglob $1`
MAINDIR=/Users/erin/Desktop/Projects/Repeatability
SCRIPTSDIR=${MAINDIR}/code_2018
SPMDIR=/Users/erin/Documents/MATLAB/spm12
T1DIR=`dirname $T1`
fslchfiletype NIFTI $T1
export MATLABPATH="${SPMDIR}:${SCRIPTSDIR}"
nice matlab -nosplash -nodesktop -r "segment_job({'${T1}.nii,1'}) ; quit"

fslchfiletype NIFTI_GZ $T1
fslchfiletype NIFTI_GZ ${T1DIR}/mT1
fslmaths ${T1DIR}/c1T1 -add ${T1DIR}/c2T1 -add ${T1DIR}/c3T1 -bin -fillh ${T1DIR}/spm_mask
fslmaths ${T1DIR}/T1 -mas ${T1DIR}/spm_mask ${T1DIR}/T1_brain
fsleyes ${T1DIR}/T1 ${T1DIR}/spm_mask &

fslmaths ${T1DIR}/c1T1 -thr 0.5 -bin ${T1DIR}/spm_gm_mask