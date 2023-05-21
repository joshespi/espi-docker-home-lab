#!/bin/bash
set -e

# Define the paths
espifam_compose_file="/home/joshe/docker/espifam/docker-compose.yml" 
espifam_directory="/home/joshe/docker/espifam"
espifam_sql="/home/joshe/docker/espifam/db_data"
espifam_zip="/home/joshe/docker/espifam.zip"

# Bring down the containers
docker-compose -f "$espifam_compose_file" down

# Change ownership for SQL container
sudo chown -R $USER:$USER "$espifam_sql"

# Zip the entire directory
zip -r "$espifam_zip" "$espifam_directory"

# Start the containers back up
docker-compose -f "$espifam_compose_file" up -d
