#!/bin/bash
NII=$1
ETCO2=$2
MASK=$3
FEAT_TEMPLATE=$4
OUTDIR=`dirname $NII`
OUTFILE=`basename $NII .nii.gz`
OUT=`echo $OUTDIR/${OUTFILE}.fsf`

#fix TR (SPM seems to set it to 1)
sed 's:INPUT_NII:'${NII}':g' ${FEAT_TEMPLATE} > ${OUT}.tmp
sed 's:INPUT_ETCO2:'${ETCO2}':g' ${OUT}.tmp > ${OUT}.tmp2
sed 's:INPUT_MASK:'${MASK}':g' ${OUT}.tmp2 > ${OUT}
rm ${OUT}.tmp
rm ${OUT}.tmp2

feat ${OUT}