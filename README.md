### Instructions for setting up GoSTRIPEs analysis using Singularity

0. Follow instructions on GoSTRIPEs: https://github.com/BrendelGroup/GoSTRIPES/blob/master/HOWTO.md
1. Clone GoSTRIPEs to your system: git clone https://github.com/BrendelGroup/GoSTRIPES
2. Put fastqs and genome directory in your analysis directory as described in the above HOWTO.md. Specifically, add the fastq files (with the .fq suffix) to the downloads folder, and create a new genome folder inside the STRIPES/ directory.
3. Clone the Singularity image in your STRIPES/ directory as follows: `singularity pull --name gostripes.simg shub://BrendelGroup/GoSTRIPES`. 
4. Edit makefile (in STRIPES) as needed to run the analysis.
5. Submit the job script launch_job.sh (edit the `source` line as needed and change headers if using non-TORQUE submission system.)
