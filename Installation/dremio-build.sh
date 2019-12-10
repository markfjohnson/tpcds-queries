#!/usr/bin/env bash
#pct create 300 local:vztmpl/Centos7-curated.tar.gz --cores 10 --net0 name=eth0,bridge=vmbr0,firewall=0,type=veth --hostname dremio-c1 --memory 20000 --onboot 1 --ostype centos --rootfs ssd_drive:30 --swap 512 --force true --password hadoop --unique true

pct clone 100 300 --hostname "dremio-c1.local" --full true  --description "Dremio Coordinator" --storage "ssd_drive"
pct clone 100 301 --hostname "dremio-e1.local" --full true  --description "Dremio executor" --storage "ssd_drive"
pct clone 100 302 --hostname "dremio-e2.local" --full true  --description "Dremio executor" --storage "ssd_drive"
pct clone 100 303 --hostname "dremio-e3.local" --full true  --description "Dremio executor" --storage "ssd_drive"
pct clone 100 304 --hostname "dremio-e4.local" --full true  --description "Dremio executor" --storage "ssd_drive"

pct set 300 -onboot 1 -cores 10 -memory 30000
pct set 301 -onboot 1 -cores 10 -memory 30000
pct set 302 -onboot 1 -cores 10 -memory 30000
pct set 303 -onboot 1 -cores 10 -memory 30000
pct set 304 -onboot 1 -cores 10 -memory 30000

pct start 300
pct start 301
pct start 302
pct start 303
pct start 304

pct push 300 dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm /opt
pct push 301 dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm /opt
pct push 302 dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm /opt
pct push 303 dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm /opt
pct push 304 dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm /opt

pct exec 300 -- yum install -y /opt/dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm
pct exec 301 -- yum install -y /opt/dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm
pct exec 302 -- yum install -y /opt/dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm
pct exec 303 -- yum install -y /opt/dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm
pct exec 304 -- yum install -y /opt/dremio-enterprise-4.1.0-201912030136020081_49feeb75_1.noarch.rpm

pct push 300 /root/dremio_conf/dremio.conf.coord /opt/dremio/conf/dremio.conf
pct push 300 /root/dremio_conf/dremio-env-coord /opt/dremio/conf/dremio-env
pct push 301 /root/dremio_conf/dremio.conf.exec /opt/dremio/conf/dremio.conf
pct push 301 /root/dremio_conf/dremio-env-exec /opt/dremio/conf/dremio-env
pct push 302 /root/dremio_conf/dremio.conf.exec /opt/dremio/conf/dremio.conf
pct push 302 /root/dremio_conf/dremio-env-exec /opt/dremio/conf/dremio-env
pct push 303 /root/dremio_conf/dremio.conf.exec /opt/dremio/conf/dremio.conf
pct push 303 /root/dremio_conf/dremio-env-exec /opt/dremio/conf/dremio-env
pct push 304 /root/dremio_conf/dremio.conf.exec /opt/dremio/conf/dremio.conf
pct push 304 /root/dremio_conf/dremio-env-exec /opt/dremio/conf/dremio-env

pct exec 300 -- chown -R dremio:dremio /var/log/dremio
pct exec 300 -- chown -R dremio:dremio /var/lib/dremio
pct exec 300 -- chown -R dremio:dremio /var/run/dremio
pct exec 301 -- chown -R dremio:dremio /var/log/dremio
pct exec 301 -- chown -R dremio:dremio /var/lib/dremio
pct exec 301 -- chown -R dremio:dremio /var/run/dremio
pct exec 302 -- chown -R dremio:dremio /var/log/dremio
pct exec 302 -- chown -R dremio:dremio /var/lib/dremio
pct exec 302 -- chown -R dremio:dremio /var/run/dremio
pct exec 303 -- chown -R dremio:dremio /var/log/dremio
pct exec 303 -- chown -R dremio:dremio /var/lib/dremio
pct exec 303 -- chown -R dremio:dremio /var/run/dremio
pct exec 304 -- chown -R dremio:dremio /var/log/dremio
pct exec 304 -- chown -R dremio:dremio /var/lib/dremio
pct exec 304 -- chown -R dremio:dremio /var/run/dremio

pct exec 300 -- systemctl start dremio
pct exec 301 -- systemctl start dremio
pct exec 302 -- systemctl start dremio
pct exec 303 -- systemctl start dremio
pct exec 304 -- systemctl start dremio

