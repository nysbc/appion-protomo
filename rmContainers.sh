#!/bin/sh

docker ps -a
sleep 1
docker rm $(docker ps -qa)
