# Espi Docker Home Lab
This repository provides examples of YAML files for running containers in a home lab environment using Docker.


## Container Management
### Build/Start Containers
To start the containers navigate into the folders and run the following commands:
```bash
docker-compose pull
docker-compose build
docker-compose  up -d
```
### Stop Containers
```bash
docker-compose down
```
## Pihole Container
To run Pihole on Ubuntu, follow these steps:
Stop the systemd-resolved service to use the standard DNS ports:

```sudo systemctl stop systemd-resolved && sudo systemctl disable systemd-resolved```


Docker's default network mode bridge isolates the container from the host's network. This is a more secure setting, but requires setting the Pi-hole DNS option for Interface listening behavior to "Listen on all interfaces, permit all origins".


## Minecraft Container
Image documentation -> https://docker-minecraft-server.readthedocs.io/en/latest/commands/

to attach to console
docker exec -i mc_image rcon-cli

## mariadb-phpmyadmin
.env requirements
```bash
MARIADB_VERSION=11.7.2
MARIADB_ROOT_PASSWORD='root'
```

## Nextcloud
.env requirements
```bash
MYSQL_HOST=mariadb
MYSQL_DATABASE=nextcloud
MYSQL_USER=nextcloud
MYSQL_PASSWORD=yourpassword
MYSQL_ROOT_PASSWORD=yourrootpassword
```
