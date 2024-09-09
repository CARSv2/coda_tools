#!/bin/bash

############
# move CODA archive from tube-hba in Hobart to Gadi
# run this on tube-hba
############

# Extract the paths from the YAML file
DIR_CODA=$(yq eval '.paths.path_tube_CODA' ../config.yml)
DIR_logs=$(yq eval '.paths.path_tube_logs' ../config.yml)
# Change to the directory & log
cd "$DIR_CODA"
echo "$(date): Changing directory to: $DIR_CODA" >> "$DIR_logs"/script_log.txt


#rsync -avP {200[5-9],201[0-9],202[0-3]} tm4888@gadi.nci.org.au:/g/data/es60/users/thomas_moore/CODA/.
.