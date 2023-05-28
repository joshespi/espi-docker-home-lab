# Espi Docker Home Lab

home lab yml files examples

run yml files with

```
docker-compose -f filename.yml up -d
```



## Pihole container.
on ubuntu need to stop systemd-resovle to use the standard dns ports ```sudo systemctl stop systemd-resolved``` && ```sudo systemctl disable systemd-resolved``` to use standard ports.
you'll need to also edit /etc/resolv.conf and update the line "nameserver" to point the device back at itself own IP or to get DNS since we turned resolved off
