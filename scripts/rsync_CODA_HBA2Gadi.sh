#!/bin/bash

############
# move CODA archive from tube-hba in Hobart to Gadi
# run this on tube-hba
############

cd /oa-decadal-climate/work/observations/CARSv2_ancillary/CODA/CODAv1
rsync -avP 201[0-9] tm4888@gadi.nci.org.au:/g/data/es60/users/thomas_moore/CODA/.