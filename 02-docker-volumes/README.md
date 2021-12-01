# Docker volumes
## Absolute path
```shell
docker run --rm -d --name volume-demo -v $(pwd):/data leitljaroslav/volumedemo
```
  
## Named volume
```shell
docker run --rm -d --name volume-demo -v volumedemo-data:/data leitljaroslav/volumedemo
```
  
## Anonymous volume
```shell
docker run -d --name volume-demo leitljaroslav/volumedemo
```
Po odstranění kontejneru se automaticky maže i volume! (někdy)

## Remote volume
```shell
docker service create -d \
  --name nfs-service \
  --mount 'type=volume,source=nfsvolume,target=/app,volume-driver=local,volume-opt=type=nfs,volume-opt=device=:/var/docker-nfs,volume-opt=o=addr=10.0.0.10' \
  nginx:latest
```