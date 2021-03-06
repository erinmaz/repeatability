MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for run in BH1 BH2 HC1 HC2
do 
#sed 's/RS/'${run}'/g' ${MAINDIR}/R02/sess1/nii/rRS_e2_cropped_nan_bet_bg50.feat/design.fsf > ${MAINDIR}/R02/sess1/nii/r${run}_e2_cropped_nan_bet_bg50.fsf
#feat ${MAINDIR}/R02/sess1/nii/r${run}_e2_cropped_nan_bet_bg50.fsf 
fsleyes ${MAINDIR}/R02/sess1/nii/r${run}_e2_cropped_nan_bet_bg50.feat/example_func ${MAINDIR}/R02/sess1/nii/r${run}_e2_cropped_nan_bet_bg50.feat/mask &
done



for run in BH1 BH2 HC1 HC2 RS
do
fslmaths /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/r${run}_e2_cropped -nan /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/r${run}_e2_cropped_nan
sed 's/sess1/sess2/g' /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/r${run}_e2_cropped_nan_reg.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/r${run}_e2_cropped_nan_reg.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/R02/sess2/nii/r${run}_e2_cropped_nan_reg.fsf 
done

for r in R03 R05 R06 R07 R08 R09 R10
do
for sess in sess1 sess2
do
for run in BH1 BH2 HC1 HC2 RS
do
fslmaths /Users/erin/Desktop/Projects/Repeatability/working/${r}/${sess}/nii/r${run}_e2_cropped -nan /Users/erin/Desktop/Projects/Repeatability/working/${r}/${sess}/nii/r${run}_e2_cropped_nan

sed 's/R02/'${r}'/g' /Users/erin/Desktop/Projects/Repeatability/working/R02/${sess}/nii/r${run}_e2_cropped_nan_reg.feat/design.fsf > /Users/erin/Desktop/Projects/Repeatability/working/${r}/${sess}/nii/r${run}_e2_cropped_nan_reg.fsf
feat /Users/erin/Desktop/Projects/Repeatability/working/${r}/${sess}/nii/r${run}_e2_cropped_nan_reg.fsf &

done
done 
wait
done
