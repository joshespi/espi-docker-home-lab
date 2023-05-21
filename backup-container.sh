#!/bin/bash

# Define the paths
espifam_compose_file="/home/joshe/docker/espifam/docker-compose.yml" 
espifam_directory="/home/joshe/docker/espifam"
espifam_sql="/home/joshe/docker/espifam/db_data"

# Bring down the containers
docker-compose -f "$espifam_compose_file" down

#if the container has a sql container you'll want to rewrite the permissions to make sure all tables get collected. this also would require sudo prividges
sudo chown -R $USER:$USER "$espifam_sql"


# Zip the entire directory
zip -r "$espifam_directory.zip" "$espifam_directory"

# Start the containers back up
docker-compose -f "$espifam_compose_file" up -d
