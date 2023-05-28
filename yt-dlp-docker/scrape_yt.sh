#!/bin/bash

# Prompt for the YouTube link
read -p "Enter the YouTube link: " youtube_link

# Specify the output directory on the host machine
output_dir=~/yt-downloads

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Run the Docker command
docker run -it --rm -v "$output_dir":/downloads yt-dlp-image -o /downloads/%\(title\)s.%\(ext\)s "$youtube_link"
