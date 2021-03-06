#!/bin/bash 
#PBS -M ammorse@ufl.edu
#PBS -N sas
#PBS -m n
#PBS -r n
#PBS -j oe
#PBS -o /scratch/lfs/mcintyre/trago/scripts/PBS_LOGS/
#PBS -l walltime=15:00:00
#PBS -l nodes=1:ppn=1
#PBS -l pmem=1G

module load sas/9.3

PROJ=/scratch/lfs/mcintyre/trago
LOGS=${PROJ}/sas_programs/logs
OUTPUT=${PROJ}/sas_programs/output

cd $PBS_O_WORKDIR

## add commonID to sam files
sas -log ${LOGS}/add_commonID_to_sam_files_HPC.log \
    -print ${OUTPUT}/add_commonID_to_sam_files_HPC.prt \
    -work $TMPDIR \
    -sysin ${PROJ}/sas_programs/add_commonID_to_sam_files_HPC.sas
