#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working
q=0.05
#manually run for bh1_09
for run in bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 
do
sed 's:bh1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_bh1_09.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait
cp /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_bh1_09.feat/design.fsf /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_bh1_09.fsf

sed 's:BH1:BH2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_bh1_09.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e2_cropped_nan_gm_sm_bh1_09.fsf

for run in bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 
do
sed 's:bh1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e2_cropped_nan_gm_sm_bh1_09.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait
rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e2_cropped_nan_gm_sm_bh1_09.fsf

for run in bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 
do
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

for run in bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 
do
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

sed 's:BH1:HC1:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e2_cropped_nan_gm_sm_bh1_09.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_bh1_09.fsf

for run in hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 
do
sed 's:bh1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_bh1_09.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait
rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_bh1_09.fsf

sed 's:HC1:HC2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_hc1_09.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e2_cropped_nan_gm_sm_hc1_09.fsf 

for run in hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 
do
sed 's:hc1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e2_cropped_nan_gm_sm_hc1_09.fsf  > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf 
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait
rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e2_cropped_nan_gm_sm_hc1_09.fsf

for run in hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 
do 
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

for run in hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 
do 
sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait


for r in R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
for run in hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 
do 
sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

for run in hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 
do 
sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

for run in bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 
do
sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

for run in bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 
do
sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e2_cropped_nan_gm_sm_${run}.fsf &
done
wait

done
done


#HERE (but need to run FDR on e2 feats run above. Maybe I should re run everything just in case? I don't know what happened to step 18)

run=bh1_09 #feat run manually

film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 

dof=`cat ${MAINDIR}/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats/dof`
e1dof=$(expr $dof - 1)
fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof

for run in bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 
do
  sed 's:bh1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

#HERE

cp /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.feat/design.fsf /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf

sed 's:BH1:BH2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf

for run in bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 
do
  sed 's:bh1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf

for run in bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 
do
  sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done


for run in bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 
do
  sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

sed 's:BH1:HC1:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf

for run in hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 
do
  sed 's:bh1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_bh1_09.fsf

sed 's:HC1:HC2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc1_09.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc1_09.fsf 

for run in hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 
do
  sed 's:hc1_09:'${run}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc1_09.fsf  > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

rm /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_hc1_09.fsf

for run in hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 
do 
  sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done


for run in hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 
do 
  sed 's:sess1:sess2:g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

for r in R03 R05 R06 R07 R08 R09 R10
do
for s in sess1 sess2
do
for run in hc1_09 hc1_10 hc1_11 hc1_12 hc1_13 hc1_14 hc1_15 hc1_16 hc1_17 hc1_18 hc1_19 hc1_20 
do 
  sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

for run in hc2_09 hc2_10 hc2_11 hc2_12 hc2_13 hc2_14 hc2_15 hc2_16 hc2_17 hc2_18 hc2_19 hc2_20 
do 
  sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
    film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rHC2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

for run in bh1_09 bh1_10 bh1_11 bh1_12 bh1_13 bh1_14 bh1_15 bh1_16 bh1_17 bh1_18 bh1_19 bh1_20 
do
  sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf 
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH1_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

for run in bh2_09 bh2_10 bh2_11 bh2_12 bh2_13 bh2_14 bh2_15 bh2_16 bh2_17 bh2_18 bh2_19 bh2_20 
do
  sed 's:R02:'${r}':g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.fsf
  film_gls --in=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf --rn=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr --pd=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.mat --con=/Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/design.con 
  fdr_cor.sh /Users/erin/Desktop/Projects/Repeatability/working/${r}/${s}/nii/rBH2_e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf_${run}.feat/stats_rawfile_nothr $q $e1dof
done

done

done
