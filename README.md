# Espi Docker Home Lab

home lab yml files examples

run yml files with

```
docker-compose -f filename.yml up -d
```

## Mine with XMRig

```
docker run --name titan_rig -d xmrig/xmrig -o randomxmonero.auto.nicehash.com:9200 -u miningaddress.name  --threads=2 --nicehash
```

## .env variables required for wordpress container

# our .env

```
MYSQL_USER=user
MYSQL_PASSWORD=password
```

## Guides toying with

### Send Only SMTP Server Ubuntu 20.04

tested still working on 22.04 LTS
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-20-04

### How to Install PHP-FPM with Apache on Ubuntu 22.04

https://www.cloudbooklet.com/how-to-install-php-fpm-with-apache-on-ubuntu-22-04/

### How to Install and Configure Postfix as a Send-Only SMTP Server on Ubuntu 16.04

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-16-04

### Configure Postfix as a Send-Only SMTP Server on Ubuntu 22.04|20.04|18.04

https://computingforgeeks.com/configure-postfix-send-only-smtp-server-on-ubuntu/

### Self-hosted emails with Docker-Mailserver

https://ralphy.dev/self-hosted-emails/
