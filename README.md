# Espi Docker Home Lab
This repository provides examples of YAML files for running containers in a home lab environment using Docker. To start the containers, use the following command:



```docker-compose -f filename.yml up -d```
## Pihole Container
To run Pihole on Ubuntu, follow these steps:
Stop the systemd-resolved service to use the standard DNS ports:

```sudo systemctl stop systemd-resolved && sudo systemctl disable systemd-resolved```

Edit the /etc/resolv.conf file and update the nameserver line to point the device back to its own IP address. This allows DNS resolution since we turned off systemd-resolved.




op player in minecraft image

docker exec mc_create mc-send-to-console op joshespi