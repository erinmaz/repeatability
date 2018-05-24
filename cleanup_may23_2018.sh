cd /Users/erin/Desktop/Projects/Repeatability/working

rm `find . -name c*T1.8*`
rm `find . -name gm_mask.nii.gz`
rm `find . -name *mip*`
rm `find . -name *delay*`
rm -r `find . -name "*feat" -not -name "*reg.feat"`

find . -name "*feat" -not -name "*reg.feat" -delete

rm `find . -name "*movie*"`
find . -name "meanCBF*_cropped_*" -delete
find . -name "*feat" -not -name "*reg.feat"  | xargs -0 rm -rf 

rm `find . -name "*.fsf" -not -name "design.fsf"`
find . -name "*.fsf" -not -name "design.fsf" -delete
find . -name "*_sub*" -delete
find . -name "sr*" -delete
find . -name "c*to*" -delete
find . -name "*gamma*nii*" -delete
find . -name "cbf*" -delete
find . -name "meanCBF*" -delete
find . -name "meanPERF*" -delete