#!/usr/bin/env bash
pct clone 100 400 --hostname "minio1.local" --full true  --description "minio server" --storage "ssd_drive2tb"
pct clone 100 401 --hostname "minio2.local" --full true  --description "minio agent" --storage "ssd_drive2tb"
pct clone 100 402 --hostname "minio3.local" --full true  --description "minio agent" --storage "ssd_drive2tb"
pct clone 100 403 --hostname "minio4.local" --full true  --description "minio agent" --storage "ssd_drive2tb"
pct clone 100 404 --hostname "minio5.local" --full true  --description "minio agent" --storage "ssd_drive2tb"
pct clone 100 405 --hostname "minio6.local" --full true  --description "minio agent" --storage "ssd_drive2tb"


pct set 400 -onboot 1 -cores 4 -memory 20000 -net0 name=eth0,bridge=vmbr0,gw=192.168.2.1,ip=192.168.2.70/24,ip6=dhcp,type=veth
pct set 401 -onboot 1 -cores 4 -memory 20000 -net0 name=eth0,bridge=vmbr0,gw=192.168.2.1,ip=192.168.2.71/24,ip6=dhcp,type=veth
pct set 402 -onboot 1 -cores 4 -memory 20000 -net0 name=eth0,bridge=vmbr0,gw=192.168.2.1,ip=192.168.2.72/24,ip6=dhcp,type=veth
pct set 403 -onboot 1 -cores 4 -memory 20000 -net0 name=eth0,bridge=vmbr0,gw=192.168.2.1,ip=192.168.2.73/24,ip6=dhcp,type=veth
pct set 404 -onboot 1 -cores 4 -memory 20000 -net0 name=eth0,bridge=vmbr0,gw=192.168.2.1,ip=192.168.2.74/24,ip6=dhcp,type=veth
pct set 405 -onboot 1 -cores 4 -memory 20000 -net0 name=eth0,bridge=vmbr0,gw=192.168.2.1,ip=192.168.2.75/24,ip6=dhcp,type=veth


# ct resize 201 vm-201-disk-0 300


pct start 400
pct start 401
pct start 402
pct start 403
pct start 404
pct start 405
