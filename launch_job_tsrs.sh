#!/bin/bash

#PBS -N CzSTRIPE_job_tsrs
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=32gb
#PBS -l walltime=1:00:00
#PBS -q debug

myDir=/N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES/tsr

echo "Launching job"

cd $myDir

./xrunSwf > err

echo "Job complete"
