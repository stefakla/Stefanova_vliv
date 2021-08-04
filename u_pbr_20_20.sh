#!/bin/bash

#PBS -l select=1:ncpus=1:mem=2gb:scratch_local=4gb
#PBS -l place=exclhost
#PBS -l walltime=08:00:00
#PBS -l matlab=1:distrib_Computing_Toolbox=1
#PBS -j oe

env

module add matlab
trap 'clean_scratch' TERM EXIT
cp /storage/brno3-cerit/home/stefakla/DP_hr_vyhodnoceni/*.m $SCRATCHDIR/ || exit 1
for c in $(seq 100)
do
cp /storage/brno3-cerit/home/stefakla/DP_pBR/pBR322_20_20/${c}/*.dat $SCRATCHDIR/ || exit 1
cp /storage/brno3-cerit/home/stefakla/DP_pBR/pBR322_20_20/${c}/fort.* $SCRATCHDIR/ || exit 1
cd $SCRATCHDIR/ || exit 1
matlab -nosplash -nodesktop -nodisplay -r "vyhodnoceni(20,20,${c})" || exit 1
cp -v *.txt /storage/brno3-cerit/home/stefakla/DP_hr_vyhodnoceni/pBR322_20_20/ || exit 1
rm -r *.txt
rm -r *.dat
rm -r fort.*
done
