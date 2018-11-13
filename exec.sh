#!/bin/sh

sleep 0.2
docker exec -t -i $(docker ps -q | tail -n 1) bash
