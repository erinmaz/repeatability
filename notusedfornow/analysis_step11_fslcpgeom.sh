cd /Users/erin/Desktop/Projects/Repeatability/working
for f in `find . -name "*mip*"`
do
fslcpgeom /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanBH1_e1_cropped_brain_mask.nii $f
done

cd /Users/erin/Desktop/Projects/Repeatability/working
for f in `find . -name "*delay*"`
do
fslcpgeom /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanBH1_e1_cropped_brain_mask.nii $f
done

cd /Users/erin/Desktop/Projects/Repeatability/working
for f in `find . -name "*e1_less_than_0.25_movie_cropped_mip.nii"`
do
fslcpgeom /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanBH1_e1_cropped_brain_mask.nii $f
done


cd /Users/erin/Desktop/Projects/Repeatability/working
for f in `find . -name "*e1_less_than_0.25_movie_cropped_delay.nii"`
do
fslcpgeom /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanBH1_e1_cropped_brain_mask.nii $f
done