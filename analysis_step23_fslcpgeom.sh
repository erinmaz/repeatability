cd /Users/erin/Desktop/Projects/Repeatability/working
for f in `find . -name "*mip*"`
do
fslcpgeom /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanBH1_e1_cropped_brain_mask $f
fslchfiletype NIFTI_GZ $f
done

for f in `find . -name "*delay*"`
do
fslcpgeom /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/nii/meanBH1_e1_cropped_brain_mask $f
fslchfiletype NIFTI_GZ $f
done
