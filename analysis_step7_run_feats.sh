#!/bin/bash

#fix TR (SPM seems to set it to 1)
fslmerge -tr srHC1_e2_cropped.nii srHC1_e2_cropped 4
rm srHC1_e2_cropped.nii

INPUT_NII
INPUT_ETCO2