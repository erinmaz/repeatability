cd /Users/erin/Desktop/Projects/Repeatability/working

for f in `find . -name "*gamma*.feat"`
do
/Users/erin/Desktop/Projects/Repeatability/code_2018/calc_psc_feat.sh $f
done
 