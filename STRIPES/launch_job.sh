#!/bin/bash

#PBS -N CzSTRIPE_job
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=64gb
#PBS -l walltime=8:00:00

myDir=/N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_sing/STRIPES #update this
sampleFolder=Pcaud_rep2 #update this

module load singularity

source /N/dc2/scratch/rtraborn/myDevel/GoSTRIPES/bin/xworkStripes -b /N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES -i /N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES/gostripes.simg #update this

echo "Launching job"

cd $myDir/$sampleFolder

$rws make -n

$rws make

echo "Job complete"
