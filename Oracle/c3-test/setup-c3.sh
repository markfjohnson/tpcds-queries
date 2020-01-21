#!/usr/bin/env bash
ansible dremio -m service -a "name=dremio state=stopped"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/db state=absent"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir1 state=absent"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir2 state=absent"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir3 state=absent"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir4 state=absent"
#
ansible dremio -m file -a "path=/opt/dremio/data state=absent"
ansible dremio -m file -a "path=/opt/dremio/log state=absent"
ansible dremio -m file -a "path=/opt/dremio/run state=absent"
#
ansible dremio -m file -a "path=/opt/dremio/data state=directory owner=dremio group=dremio"
ansible dremio -m file -a "path=/opt/dremio/log state=directory owner=dremio group=dremio"
ansible dremio -m file -a "path=/opt/dremio/run state=directory owner=dremio group=dremio"

ansible dremio-coord -m copy -a "src=dremio-env-coord dest=/opt/dremio/conf/dremio-env owner=dremio group=dremio"
ansible dremio-coord -m copy -a "src=dremio.conf.coord dest=/opt/dremio/conf/dremio.conf owner=dremio group=dremio"
ansible dremio-exec -m copy -a "src=dremio.conf.exec dest=/opt/dremio/conf/dremio.conf owner=dremio group=dremio"
ansible dremio-exec -m copy -a "src=dremio-env-exec dest=/opt/dremio/conf/dremio-env owner=dremio group=dremio"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/db state=directory owner=dremio group=dremio"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir1 state=directory owner=dremio group=dremio"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir2 state=directory owner=dremio group=dremio"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir3 state=directory owner=dremio group=dremio"
ansible dremio-exec -m file -a "path=/mnt/cachemanagerdisk/dir4 state=directory owner=dremio group=dremio"

ansible dremio -m service -a "name=dremio state=started"
echo " Waiting for startup"
sleep 60
ansible dremio -m shell -a "grep Except /opt/dremio/log/server.log"
echo "Complete"
aws s3 ls