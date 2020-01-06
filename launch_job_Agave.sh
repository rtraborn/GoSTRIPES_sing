#!/bin/bash

#SBATCH -n 1
#SBATCH -t 0-8:00
#SBATCH -A rraborn
#SBATCH -o slurm.%j.out
#SBATCH -e slurm.%j.err

myDir=/home/rraborn/scratch/GoSTRIPES_test_Pc/STRIPES_sing/Pc_STRIPE

module load singularity/2.6.0

source /home/rraborn/mydevel/GoSTRIPES/bin/xworkStripes -b /home/rraborn/scratch/GoSTRIPES_test_Pc/STRIPES -i /home/rraborn/scratch/GoSTRIPES_test_Pc/STRIPES/gostripes.simg

echo "Launching job"

cd $myDir

$rws make -n

$rws make

make $

echo "Job complete"
