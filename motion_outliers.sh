#!/bin/bash
in=${1}
outdir=`dirname ${1}`
outpre=`basename ${1} .txt`
#vols=`wc -l ${in} | cut -f 1 -d " "`
#Above line gets confused by leading whitespace in wc output on mac. see revised line below.
vols=`wc -l ${in} | sed 's/^ *//g' | cut -d " " -f 1`
thresh=${2}
#get framewise displacement. Assumes 1st three params are translations in mm and 2nd three are rotations in radians. Assumes head radius is 50mm (Power et al., 2012, also from fsl_motion_outliers)
awk '{ temp1 = $7 - prev1; prev1 = $7; temp2 = $8 - prev2; prev2= $8; temp3 = $9 - prev3; prev3= $9; temp4 = $10 - prev4; prev4= $10; temp5 = $11 - prev5; prev5= $11; temp6 = $12 - prev6; prev6= $12; FD = (sqrt(temp1*temp1) + sqrt(temp2*temp2) + sqrt(temp3*temp3) + 50*(sqrt(temp4*temp4) + sqrt(temp5*temp5) + sqrt(temp6*temp6)));print FD;}' $in > ${outdir}/${outpre}_FD.txt

# now use the threshold and create outlier EV file
#identify outliers
awk -v thresh=$thresh '{if($1>thresh){cols+=1; print "1"}else{print "0"} } END {print cols}' ${outdir}/${outpre}_FD.txt > ${outdir}/${outpre}_FD_vols.txt
cols=`tail -1 ${outdir}/${outpre}_FD_vols.txt`
#write them in separate columns
if [ "$cols" > "0" ] ; then
	awk -v cols=$cols ' 
	{ data[i++]=$1; } 
	END { 
		mycols=0
		for(i=0; i<NR-1; i++) {
			if (data[i]=="1") {
				mycols++
				print "1"
				if(mycols<cols) {
					for(j=i+1; j<NR-1; j++) {
						print "0"
					}
					for(k=0; k<i+1; k++) {
						print "0"
					}
				}
			}
			else { print "0" }
		}
	}' ${outdir}/${outpre}_FD_vols.txt > ${outdir}/${outpre}_FD_vols_tosplit.txt 
	split -l $vols ${outdir}/${outpre}_FD_vols_tosplit.txt  ${outdir}/${outpre}_FD_vols_split
	paste `ls  ${outdir}/${outpre}_FD_vols_split*` > ${outdir}/${outpre}_FD_confoundEV_file.txt
	echo ${in}: ${cols} motion outliers
else
	echo ${in}: No motion outliers
fi
