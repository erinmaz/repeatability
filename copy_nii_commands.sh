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

#For R03 session 1, use 2nd and 3rd HC runs. The first HC e1 data has a lot of negative activation according to my notes, and we acquired a third because we were worried the first one wouldn't look right (maybe because participant reported not following instructions?)
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R03/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R03/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s18_e2 ${MAINDIR}/R03/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_BH_s18_e1 ${MAINDIR}/R03/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R03/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R03/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_2_s12_e2 ${MAINDIR}/R03/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_HC_2_s12_e1 ${MAINDIR}/R03/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R03/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R03/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R03/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R03/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R03/sess1/T1

#For R03 sess2, the 3rd HC run was for Clarisse, not for us.
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R03/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R03/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_BH_s18_e2 ${MAINDIR}/R03/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_BH_s18_e1 ${MAINDIR}/R03/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_HC_s8_e2 ${MAINDIR}/R03/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_HC_s8_e1 ${MAINDIR}/R03/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_HC_s12_e2 ${MAINDIR}/R03/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_HC_s12_e1 ${MAINDIR}/R03/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_RS_s6_e2 ${MAINDIR}/R03/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R03/sess2/ep2d_DE_pcasl_RS_s6_e1 ${MAINDIR}/R03/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R03/sess2/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R03/sess2/T1

fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R05/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R05/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R05/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R05/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R05/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R05/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R05/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R05/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R05/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R05/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R05/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R05/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R05/sess1/T1

fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R05/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R05/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R05/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R05/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R05/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R05/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R05/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R05/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R05/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R05/sess2/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R05/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R05/sess2/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R05/sess2/T1

fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_BH_s12_e2 ${MAINDIR}/R06/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_BH_s12_e1 ${MAINDIR}/R06/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_BH_s18_e2 ${MAINDIR}/R06/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_BH_s18_e1 ${MAINDIR}/R06/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R06/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R06/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_HC_s14_e2 ${MAINDIR}/R06/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_HC_s14_e1 ${MAINDIR}/R06/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R06/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R06/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R06/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R06/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R06/sess1/T1

fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_BH_s17_e2 ${MAINDIR}/R06/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_BH_s17_e1 ${MAINDIR}/R06/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_BH_s19_e2 ${MAINDIR}/R06/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_BH_s19_e1 ${MAINDIR}/R06/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_HC_s7_e2 ${MAINDIR}/R06/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_HC_s7_e1 ${MAINDIR}/R06/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_HC_s13_e2 ${MAINDIR}/R06/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_HC_s13_e1 ${MAINDIR}/R06/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_RS_s5_e2 ${MAINDIR}/R06/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R06/sess2/ep2d_DE_pcasl_RS_s5_e1 ${MAINDIR}/R06/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R06/sess2/MPRAGE_ADNI_Ipat2_s3_e1 ${MAINDIR}/R06/sess2/T1

fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R07/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R07/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R07/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R07/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R07/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R07/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R07/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R07/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R07/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R07/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R07/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R07/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R07/sess1/T1

fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_BH_s18_e2 ${MAINDIR}/R07/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_BH_s18_e1 ${MAINDIR}/R07/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_BH_s20_e2 ${MAINDIR}/R07/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_BH_s20_e1 ${MAINDIR}/R07/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R07/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R07/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_HC_s14_e2 ${MAINDIR}/R07/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_HC_s14_e1 ${MAINDIR}/R07/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_RS_s8_e2 ${MAINDIR}/R07/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R07/sess2/ep2d_DE_pcasl_RS_s8_e1 ${MAINDIR}/R07/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R07/sess2/MPRAGE_ADNI_Ipat2_s6_e1 ${MAINDIR}/R07/sess2/T1

fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R08/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R08/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R08/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R08/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R08/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R08/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R08/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R08/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R08/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R08/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R08/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R08/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R08/sess1/T1

fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R08/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R08/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R08/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R08/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R08/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R08/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R08/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R08/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R08/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R08/sess2/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R08/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R08/sess2/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R08/sess2/T1

fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R09/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R09/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R09/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R09/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R09/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R09/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R09/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R09/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R09/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R09/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R09/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R09/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R09/sess1/T1

fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R09/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R09/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R09/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R09/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R09/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R09/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R09/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R09/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R09/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R09/sess2/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R09/sess2/nii/RS_e1
fslmaths ${NIIDIR}/R09/sess2/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R09/sess2/T1

fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_BH_s14_e2 ${MAINDIR}/R10/sess1/nii/BH1_e2
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_BH_s14_e1 ${MAINDIR}/R10/sess1/nii/BH1_e1
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_BH_s16_e2 ${MAINDIR}/R10/sess1/nii/BH2_e2
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_BH_s16_e1 ${MAINDIR}/R10/sess1/nii/BH2_e1
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_HC_s6_e2 ${MAINDIR}/R10/sess1/nii/HC1_e2
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_HC_s6_e1 ${MAINDIR}/R10/sess1/nii/HC1_e1
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_HC_s10_e2 ${MAINDIR}/R10/sess1/nii/HC2_e2
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_HC_s10_e1 ${MAINDIR}/R10/sess1/nii/HC2_e1
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_RS_s4_e2 ${MAINDIR}/R10/sess1/nii/RS_e2
fslmaths ${NIIDIR}/R10/sess1/ep2d_DE_pcasl_RS_s4_e1 ${MAINDIR}/R10/sess1/nii/RS_e1
fslmaths ${NIIDIR}/R10/sess1/MPRAGE_ADNI_Ipat2_s2_e1 ${MAINDIR}/R10/sess1/T1

fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_BH_s15_e2 ${MAINDIR}/R10/sess2/nii/BH1_e2
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_BH_s15_e1 ${MAINDIR}/R10/sess2/nii/BH1_e1
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_BH_s17_e2 ${MAINDIR}/R10/sess2/nii/BH2_e2
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_BH_s17_e1 ${MAINDIR}/R10/sess2/nii/BH2_e1
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_HC_s7_e2 ${MAINDIR}/R10/sess2/nii/HC1_e2
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_HC_s7_e1 ${MAINDIR}/R10/sess2/nii/HC1_e1
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_HC_s11_e2 ${MAINDIR}/R10/sess2/nii/HC2_e2
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_HC_s11_e1 ${MAINDIR}/R10/sess2/nii/HC2_e1
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_RS_s5_e2 ${MAINDIR}/R10/sess2/nii/RS_e2
fslmaths ${NIIDIR}/R10/sess2/ep2d_DE_pcasl_RS_s5_e1 ${MAINDIR}/R10/sess2/nii/RS_e1
#series 3 MPRAGE has motion
fslmaths ${NIIDIR}/R10/sess2/MPRAGE_ADNI_Ipat2_s20_e1 ${MAINDIR}/R10/sess2/T1



