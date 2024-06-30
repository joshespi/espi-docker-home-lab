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

Edit the /etc/resolv.conf file and update the nameserver line to point the device back to its own IP address. This allows DNS resolution since we turned off systemd-resolved.


## Minecraft Image documentation -> https://docker-minecraft-server.readthedocs.io/en/latest/commands/

to attach to console
docker exec -i mc_image rcon-cli
