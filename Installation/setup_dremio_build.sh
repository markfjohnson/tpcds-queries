#!/usr/bin/env bash

# This script copies the files from the Installation directory into the /root/dremio_conf directory on proxmox

ssh root@proxmox 'mkdir -p /root/dremio_conf'
scp conf/* root@proxmox:/root/dremio_conf/
scp src/*.rpm root@proxmox:/opt
scp *.sh root@proxmox:~