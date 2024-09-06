#!/bin/bash

############
# move CODA archive from Tube in Hobart to Gadi
############
 
rsync -avPs /g/data/es60/users/thomas_moore/clim_demo_results/daily/bran2020_GISready_results/. /g/data/es60/users/thomas_moore/clim_demo_results/daily/bran2020_GISready_delivery/. > ./logs/$PBS_JOBID-data-move.log 2>&1