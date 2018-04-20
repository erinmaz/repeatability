for f in `find . -name *.nii`
do
fslchfiletype NIFTI_GZ $f
done
