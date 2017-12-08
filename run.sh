#!/bin/bash

if [[ !$(docker volume ls -q | grep mariadb) ]]; then
  echo Creating Docker volume for mariadb-database...
  docker volume create mariadb-database
else
  echo Using existing mariadb-database volume.
fi
echo Done.


docker run -d -t \
  -v $(pwd)/emg/data:/emg/data \
  -v mariadb-database:/var/lib/mysql \
  -v $(pwd):/local_data \
  -w /emg/sw/myami/appion \
  -p 8080:80 -p 5901:5901 -p 3306:3306 \
  semc/appion-protomo

echo Waiting for database...
sleep 10
echo Done.
