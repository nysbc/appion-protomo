#!/bin/bash


docker run -d -t \
  -v $(pwd)/emg/data:/emg/data \
  -v $(pwd)/mysql:/var/lib/mysql \
  -v $(pwd):/local_data \
  -w /emg/sw/myami/appion \
  -p 8080:80 -p 5901:5901 -p 3306:3306 \
  semc/appion-protomo

echo Waiting for database...
sleep 10
echo Done.
