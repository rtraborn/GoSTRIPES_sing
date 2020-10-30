#!/bin/bash

#SBATCH -n 1
#SBATCH -t 0-8:00
#SBATCH -A tswenty
#SBATCH -o slurm.%j.out
#SBATCH -e slurm.%j.err

myDir=/home/tswenty/scratch/GoSTRIPES_sing/STRIPES/ #update this
sampleFolder=antennae_1 #update this

module load singularity/3.6.3

source /home/tswenty/genome_analysis/GoSTRIPES/bin/xworkStripes -b /home/tswenty/scratch/GoSTRIPES_sing/STRIPES -i /home/tswenty/scratch/GoSTRIPES_sing/STRIPES/gostripes.simg  #update this


echo "Launching job"

cd $myDir/$sampleFolder

$rws make -n

$rws make

echo "Job complete"
