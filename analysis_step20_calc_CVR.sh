#!/bin/bash

MAINDIR=/Users/erin/Desktop/Projects/Repeatability/working

for f in `find $MAINDIR -name "*.feat" -not -name "*reg.feat"`
do
  calc_psc_feat.sh $f
done