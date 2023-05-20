#!/bin/bash

# Source and destination directories
source_dir="/mnt/readyshare"
dest_dir="/mnt/T_Drive"


# Sync from source to destination
rsync -av --ignore-existing --update "$source_dir/" "$dest_dir/"

# Sync from destination to source
rsync -av --ignore-existing --update "$dest_dir/" "$source_dir/"

# Cleanup pass to delete extra files in destination
rsync -av --delete "$source_dir/" "$dest_dir/"

