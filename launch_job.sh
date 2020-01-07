#!/bin/bash

#PBS -N PcSTRIPE_job
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=32gb
#PBS -l walltime=24:00:00

myDir=/N/dc2/scratch/rtraborn/GoSTRIPES_test_Pc/STRIPES/Pc_STRIPE

module load singularity

source /N/dc2/scratch/rtraborn/mydevel/GoSTRIPES/bin/xworkStripes -b /N/dc2/scratch/rtraborn/GoSTRIPES_test_Pc/STRIPES -i /N/dc2/scratch/rtraborn/GoSTRIPES_test_Pc/STRIPES/gostripes.simg

echo "Launching job"

cd $myDir

$rws make -n

$rws make

make $

echo "Job complete"
