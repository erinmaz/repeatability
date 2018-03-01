#!/bin/bash

#subject ID, session as input

MYSUB=$1
MYSESS=$2
MAINDIR=/Users/erin/Desktop/Projects/Repeatability
ANALYSISDIR=${MAINDIR}/working/${MYSUB}/${MYSESS}
NIIDIR=${MAINDIR}/working/${MYSUB}/${MYSESS}/nii
SCRIPTSDIR=${MAINDIR}/code_2018
SPMDIR=/Users/erin/Documents/MATLAB/spm12

T1=`ls ${NIIDIR}/*MPRAGE*`
fslmaths $T1 ${NIIDIR}/T1
fslchfiletype NIFTI ${NIIDIR}/T1
export MATLABPATH="${SPMDIR}:${SCRIPTSDIR}"
nice matlab -nosplash -nodesktop -r "segment_job({'${NIIDIR}/T1.nii,1'}) ; quit"

fslchfiletype NIFTI_GZ ${NIIDIR}/T1
fslchfiletype NIFTI_GZ ${NIIDIR}/mT1
fslmaths ${NIIDIR}/c1T1 -add ${NIIDIR}/c2T1 -add ${NIIDIR}/c3T1 -bin -fillh ${NIIDIR}/spm_mask
fslmaths ${NIIDIR}/T1 -mas ${NIIDIR}/spm_mask ${NIIDIR}/T1_brain
fsleyes ${NIIDIR}/T1 ${NIIDIR}/spm_mask &


#Done for R01 sess1