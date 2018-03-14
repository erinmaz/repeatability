cd /Users/erin/Desktop/Projects/Repeatability/working/R02/sess1/respiract/intervals_1s
for run in bh1_1 bh2_1
do
sed 's/ //g' ${MAINDIR}/${r}/${s}/respiract/${run}.txt > ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt

#scale such that min=0
min=`awk '{m=$1;for(i=1;i<=NF;i++)if($i<m)m=$i;print m}' ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt`
awk -v min=$min '{for(i=1;i<=NF;i++)print $i-min}' ${MAINDIR}/${r}/${s}/respiract/${run}_sed.txt > ${MAINDIR}/${r}/${s}/respiract/${run}_sed_0.txt
done