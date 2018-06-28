#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for f in `find $MAINDIR -name "*.feat" -not -name "*reg.feat"`
do
  calc_psc_feat.sh $f
done

for f in `find $MAINDIR -name "*e1_cropped_nan_gm_sm_sub_clt-tagmask_bptf*.feat" -not -name "*reg.feat"` 
do
  calc_psc_feat_e1.sh $f
done