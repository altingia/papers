#!/bin/bash

module load sas/9.4

PROJ=/ufrc/barbazuk/lboat/Old_World_New_BED
LOGS=${PROJ}/sas_data/logs
OUTPUT=${PROJ}/sas_data/output

#cd $SLURM_SUBMIT_DIR

## fix bed file coordinates
sas -log ${LOGS}/bayesian_make_sbys_reps_parents.log \
    -print ${OUTPUT}/bayesian_make_sbys_reps_parents.prt \
    -work ${PROJ}/sas_downstream_scripts/tmpdir \
    -sysin ${PROJ}/sas_downstream_scripts/bayesian_make_sbys_reps_parents.sas

