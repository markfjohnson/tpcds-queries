#!/usr/bin/env bash
pct clone 100 200 --hostname "ambari.local" --full true  --description "Ambari server" --storage "ssd_drive2tb"
pct clone 100 201 --hostname "hdp1.local" --full true  --description "HDP Master " --storage "ssd_drive2tb"
pct clone 100 202 --hostname "hdp2.local" --full true  --description "HDP agent" --storage "ssd_drive2tb"
pct clone 100 203 --hostname "hdp3.local" --full true  --description "HDP agent" --storage "ssd_drive2tb"
pct clone 100 204 --hostname "hdp4.local" --full true  --description "HDP agent" --storage "ssd_drive2tb"
pct clone 100 205 --hostname "hdp5.local" --full true  --description "HDP agent" --storage "ssd_drive2tb"
pct clone 100 206 --hostname "hdp6.local" --full true  --description "HDP agent" --storage "ssd_drive2tb"

# TODO add static network config
pct set 200 -onboot 1 -cores 4 -memory 8192
pct set 201 -onboot 1 -cores 4 -memory 20000
pct set 202 -onboot 1 -cores 4 -memory 20000
pct set 203 -onboot 1 -cores 4 -memory 20000
pct set 204 -onboot 1 -cores 4 -memory 20000
pct set 205 -onboot 1 -cores 4 -memory 20000
pct set 206 -onboot 1 -cores 4 -memory 20000

# ct resize 201 vm-201-disk-0 300


pct start 200
pct start 201
pct start 202
pct start 203
pct start 204
pct start 205
pct start 206

sleep 15

pct exec  200 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
pct exec  201 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
pct exec  202 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
pct exec  203 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repofig
pct exec  204 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
pct exec  205 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
pct exec  206 -- wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
pct exec 200 -- yum install -y less sudo which wget nmap net-tools zip ntp mysql-connector-ja
pct exec 201 -- yum install -y less sudo which wget nmap net-tools zip ntp
pct exec 202 -- yum install -y less sudo which wget nmap net-tools zip ntp
pct exec 203 -- yum install -y less sudo which wget nmap net-tools zip ntp
pct exec 204 -- yum install -y less sudo which wget nmap net-tools zip ntp
pct exec 205 -- yum install -y less sudo which wget nmap net-tools zip ntp
pct exec 206 -- yum install -y less sudo which wget nmap net-tools zip ntp

pct exec 200 -- yum install -y ambari-server
pct exec 201 == mkdir -p /data/tpcds
pct exec  200 -- ifconfig
pct exec  201 -- ifconfig
pct exec  202 -- ifconfig
pct exec  203 -- ifconfig
pct exec  204 -- ifconfig
pct exec  205 -- ifconfig
pct exec  206 -- ifconfig
echo "run as part of ambari-setup"
echo "ambari-server setup --jdbc-db=mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar"


