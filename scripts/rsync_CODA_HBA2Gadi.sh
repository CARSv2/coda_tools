#!/bin/bash

############
# move CODA archive from tube-hba in Hobart to Gadi
# run this on tube-hba
############

# move to DIR with shell script
cd /home/moo270/code/coda_tools/scripts

# Extract the paths from the YAML file
DIR_tube_CODA=$(yq eval '.paths.path_tube_CODA' ../config.yml)
DIR_gadi_CODA=$(yq eval '.paths.path_gadi_CODA' ../config.yml)
DIR_logs=$(yq eval '.paths.path_tube_logs' ../config.yml)

# Extract the search criteria from the YAML file
glob_pattern=$(yq eval '.glob.rsync_pattern' ../config.yml)
# setup log
LOG_FILE_NAME="script_log_$(date +"%Y%m%d_%H%M%S").txt"
echo "DIR_tube_CODA:" $DIR_tube_CODA >> $DIR_logs/$LOG_FILE_NAME
echo "DIR_gadi_CODA:" $DIR_gadi_CODA >> $DIR_logs/$LOG_FILE_NAME
echo "DIR_logs:" $DIR_logs >> $DIR_logs/$LOG_FILE_NAME
echo "rsync glob pattern:" $glob_pattern >> $DIR_logs/$LOG_FILE_NAME
#eval rsync -avP --include */ --include *.nc --exclude * --exclude WOD2018*.nc "$DIR_tube_CODA/$glob_pattern" "tm4888@gadi.nci.org.au:$DIR_gadi_CODA/." >> "$DIR_logs/$LOG_FILE_NAME" 2>&1
eval rsync -avP --include '*/' --exclude 'WOD2018*.nc' --include '*.nc'  --exclude '*' "$DIR_tube_CODA/$glob_pattern" "tm4888@gadi.nci.org.au:$DIR_gadi_CODA/." >> "$DIR_logs/$LOG_FILE_NAME" 2>&1
