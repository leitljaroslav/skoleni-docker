#Docker networking
##Bridge
```shell
docker run --rm -d --name bridge_net_demo -p 41519:80 nginx
```

##Host
```shell
docker run --rm -d --name host_net_demo --network host nginx
```

##none
```shell
docker run --rm -d --name macvlan_net_demo --network pub_net nginx
```

##macvlan
https://docs.docker.com/network/macvlan/
```shell
docker network create -d macvlan -o parent=eth0 pub_net
docker run --rm -d --name macvlan_net_demo --network pub_net nginx
```