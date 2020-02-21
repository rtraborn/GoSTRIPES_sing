#!/bin/bash

#SBATCH -n 1
#SBATCH -t 0-8:00
#SBATCH -A rraborn
#SBATCH -o slurm.%j.out
#SBATCH -e slurm.%j.err

myDir=/home/rraborn/scratch/rraborn/STRIPEseq_files/GoSTRIPES_sing/STRIPES #update this
sampleFolder=Pcaud_rep2 #update this

module load singularity/3.3.0-1

source /home/rraborn/scratch/rtraborn/myDevel/GoSTRIPES/bin/xworkStripes -b /home/rraborn/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES -i /home/rraborn/scratch/STRIPEseq_files/GoSTRIPES_Czo/STRIPES/gostripes.simg #update this


echo "Launching job"

cd $myDir/$sampleFolder

$rws make -n

$rws make

make $

echo "Job complete"
