#!/bin/sh

sleep 0.2
#docker exec -t -i `docker ps | grep -v PORTS | awk '{print $1}'` bash
docker exec -t -i $(docker ps -q | tail -n 1) bash
