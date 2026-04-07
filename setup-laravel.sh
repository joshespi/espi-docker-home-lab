#!/bin/bash
set -e

LARAVEL_DIR="$(cd "$(dirname "$0")/laravel" && pwd)"

# Guard against re-running
if [ -d "$LARAVEL_DIR/src" ] && [ "$(ls -A "$LARAVEL_DIR/src")" ]; then
  echo "Error: $LARAVEL_DIR/src already exists and is not empty."
  echo "Remove it first if you want to start fresh: rm -rf $LARAVEL_DIR/src"
  exit 1
fi

# Bootstrap docker .env from example if not present
if [ ! -f "$LARAVEL_DIR/.env" ]; then
  cp "$LARAVEL_DIR/.env.example" "$LARAVEL_DIR/.env"
  echo "Created laravel/.env — edit credentials there before re-running if needed."
fi

cd "$LARAVEL_DIR"

echo "Building containers..."
docker compose build

echo "Creating Laravel project in ./src ..."
docker compose run --rm app composer create-project laravel/laravel . --prefer-dist --no-interaction

echo "Configuring src/.env..."
cp src/.env.example src/.env
sed -i 's/DB_CONNECTION=.*/DB_CONNECTION=mysql/' src/.env
sed -i 's/DB_HOST=.*/DB_HOST=db/' src/.env
sed -i 's/DB_PORT=.*/DB_PORT=3306/' src/.env
sed -i 's/DB_DATABASE=.*/DB_DATABASE=laravel/' src/.env
sed -i 's/DB_USERNAME=.*/DB_USERNAME=laravel/' src/.env
sed -i 's/DB_PASSWORD=.*/DB_PASSWORD=secret/' src/.env

echo "Generating app key..."
docker compose run --rm app php artisan key:generate

echo "Installing npm dependencies and building assets..."
docker compose run --rm app npm install
docker compose run --rm app npm run build

echo "Starting the stack..."
docker compose up -d

echo "Waiting for DB to be ready..."
docker compose run --rm app php artisan migrate --force

echo ""
echo "Done! Laravel is running at http://localhost:8080"
