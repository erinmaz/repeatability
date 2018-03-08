#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

#higher numbered series=prescan normalized
NIIDIR=/Users/erin/Desktop/Projects/Repeatability/fresh_nii_March2018

for r in R02 R03 R05 R06 R07 R08 R09 R10
do 
for s in sess1 sess2
do 
rm -rf ${MAINDIR}/${r}/${s}/nii/*
done
done

fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R02/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R02/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_BH_s18_e2 ${MAINDIR}/R02/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_BH_s18_e1 ${MAINDIR}/R02/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_HC_s8_e2 ${MAINDIR}/R02/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_HC_s8_e1 ${MAINDIR}/R02/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_HC_s12_e2 ${MAINDIR}/R02/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_HC_s12_e1 ${MAINDIR}/R02/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_RS_s6_e2 ${MAINDIR}/R02/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R02/sess1/ep2d_DE_pcasl_RS_s6_e1 ${MAINDIR}/R02/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R02/sess1/MPRAGE_ADNI_Ipat2_s4_e1 ${MAINDIR}/R02/sess1/T1

fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R02/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R02/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R02/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R02/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R02/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R02/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R02/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R02/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R02/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R02/sess2/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R02/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R02/sess2/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R02/sess2/T1

#check which HC runs I should use (and which ones I used for the ET data!!!!)
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R03/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R03/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s18_e2 ${MAINDIR}/R03/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s18_e1 ${MAINDIR}/R03/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_s8_e2 ${MAINDIR}/R03/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_s8_e1 ${MAINDIR}/R03/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_s12_e2 ${MAINDIR}/R03/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_s12_e1 ${MAINDIR}/R03/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_RS_s6_e2 ${MAINDIR}/R03/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_RS_s6_e1 ${MAINDIR}/R03/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R03/sess1/MPRAGE_ADNI_Ipat2_s4_e1 ${MAINDIR}/R03/sess1/T1

fslroi ${NIIDIR}/${r}/${s}/nii/${h}/srHC_e1_norm.nii ${r}/${s}/nii/${h}/BH_analysis/cropped/srHC_e1_norm_cropped 13 76
fslroi ${r}/${s}/nii/${h}/srHC_e2_norm.nii ${r}/${s}/nii/${h}/BH_analysis/cropped/srHC_e2_norm_cropped 13 76