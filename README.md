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

