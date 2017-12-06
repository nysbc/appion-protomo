#!/bin/sh

#rm VirtualBox image
#rm -fvr /Users/vosslab/.docker/machine/machines/default
#docker-machine create --virtualbox-disk-size 35000 --virtualbox-memory 10000 --virtualbox-cpu-count 3 --driver virtualbox default
#setup ports, 8080<-80 and 5901<-5901 manually
##VBoxManage controlvm "boot2docker-vm" natpf1 "http,tcp,,80,,8080";
docker-machine start default
sleep 1

echo ''
echo 'eval $(docker-machine env default)'
