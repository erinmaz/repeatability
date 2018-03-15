#don't actually need this anymore, did it in matlab
cd /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/respiract/intervals_1s

for f in `ls -d *.txt`
do
run=`basename $f .txt`
#get rid of spaces
sed 's/ //g' ${f} > ${run}_sed.txt
#scale such that min=0
min=`awk '{m=$1;for(i=1;i<=NF;i++)if($i<m)m=$i;print m}' ${run}_sed.txt`
awk -v min=$min '{for(i=1;i<=NF;i++)print $i-min}' ${run}_sed.txt > ${run}_sed_0.txt
done