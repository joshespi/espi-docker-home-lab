#!/bin/bash

#rsync -av --delete /home/joshe/docker/ joshe@192.168.1.35:/mnt/backup/minecraft

# Define the paths
espifam_compose_file="/home/joshe/docker/espifam/docker-compose.yml" 
espifam_directory="/home/joshe/docker/espifam"
# Bring down the containers
docker-compose -f "$espifam_compose_file" down
# Zip the entire directory
zip -r "$espifam_directory.zip" "$espifam_directory"
# Start the containers back up
docker-compose -f "$espifam_compose_file" up -d
