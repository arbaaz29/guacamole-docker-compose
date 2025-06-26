#!/bin/sh
#
# check if docker is running
if ! (docker ps >/dev/null 2>&1)
then
	echo "docker daemon not running, will exit here!"
	exit
fi
echo "Preparing folder init and creating ./initdb/initdb.sql"
mkdir ./initdb >/dev/null 2>&1
chmod -R +x ./initdb
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mariadb > ./initdb/initdb.sql
echo "done"
