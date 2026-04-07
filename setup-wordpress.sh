#!/bin/bash
set -e

WP_DIR="$(cd "$(dirname "$0")/wordpress" && pwd)"

# Guard against re-running
if [ -f "$WP_DIR/.env" ]; then
  echo "Error: $WP_DIR/.env already exists — stack may already be configured."
  echo "Remove it first if you want to start fresh: rm $WP_DIR/.env"
  exit 1
fi

cp "$WP_DIR/.env.example" "$WP_DIR/.env"
echo "Created wordpress/.env — edit credentials there before proceeding."
echo ""

cd "$WP_DIR"

echo "Building containers..."
docker compose build

echo "Starting the stack..."
docker compose up -d

echo ""
echo "Done!"
echo "  WordPress: http://localhost:8080"
echo "  phpMyAdmin: http://localhost:8089"
