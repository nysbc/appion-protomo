#!/bin/bash

if [[ ! $(docker volume ls -q | grep mariadb) ]]; then
  echo Creating Docker volume for mariadb-database...
  docker volume create mariadb-database
else
  echo Using existing mariadb-database volume.
fi
echo Done.

# Change these if you already have other services running on default ports
WEBPORT=80
VNCPORT=5901
DBPORT=3306

docker run -d -t \
  -v $(pwd)/emg/data:/emg/data \
  -v mariadb-database:/var/lib/mysql \
  -v $(pwd):/local_data \
  -v $(pwd)/config/httpd.conf:/etc/httpd/conf/httpd.conf \
  -w /sw/myami/appion \
  -p $WEBPORT:80 -p $VNCPORT:5901 -p $DBPORT:3306 \
  semc/appion-protomo:v1.0

echo Waiting for database...
sleep 10
echo Done.
