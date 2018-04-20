cd /Users/erin/Desktop/Projects/Repeatability/working

for f in `find . -name "*gamma3_6.feat" -not -name "*block*"`
do
mydir=`echo $f | sed 's/_gamma3_6.feat/.feat/g'`
cp ${mydir}/mean_func.nii.gz ${f}/.
/Users/erin/Desktop/Projects/Repeatability/code_2018/calc_psc_feat.sh $f
done
 
for f in `find . -name "*gamma7.5_15.feat" -not -name "*block*"`
do
mydir=`echo $f | sed 's/_gamma7.5_15.feat/.feat/g'`
cp ${mydir}/mean_func.nii.gz ${f}/.
/Users/erin/Desktop/Projects/Repeatability/code_2018/calc_psc_feat.sh $f
done

for f in `find . -name "*gamma15_30.feat" -not -name "*block*"`
do
mydir=`echo $f | sed 's/_gamma15_30.feat/.feat/g'`
cp ${mydir}/mean_func.nii.gz ${f}/.
/Users/erin/Desktop/Projects/Repeatability/code_2018/calc_psc_feat.sh $f
done