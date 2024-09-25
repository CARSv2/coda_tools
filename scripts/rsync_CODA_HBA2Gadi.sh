#!/bin/bash

############
# move CODA archive from tube-hba in Hobart to Gadi
# run this on tube-hba
############

# move to DIR with shell script
cd /home/moo270/code/CARSv2_tools/scripts

# Extract the paths from the YAML file
DIR_CODA=$(yq eval '.paths.path_tube_CODA' ../config.yml)
DIR_logs=$(yq eval '.paths.path_tube_logs' ../config.yml)
# Extract the search criteria from the YAML file
glob_pattern=$(yq eval '.glob.rsync_pattern' ../config.yml)
# Change to the directory & log
cd "$DIR_CODA"
LOG_FILE_NAME="script_log_$(date +"%Y%m%d_%H%M%S").txt"
echo "$(date): Changing directory to: $DIR_CODA" >> "$DIR_logs"/"$LOG_FILE_NAME"
echo "rsync glob pattern:" "$glob_pattern" >> "$DIR_logs"/"$LOG_FILE_NAME"
rsync -avP "$glob_pattern"/* tm4888@gadi.nci.org.au:/g/data/es60/users/thomas_moore/CODA/. >> "$DIR_logs"/"$LOG_FILE_NAME" 2>&1
