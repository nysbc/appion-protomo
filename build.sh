#!/bin/sh

curdir=$(pwd)

cd $curdir

mkdir TGZ
cd TGZ/
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/631/eman-linux-x86_64-cluster-1.9.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/5600/eman2_centos6_docker.tgz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/8380/protomo2-centos7-docker.tgz'
wget -nc -c 'https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/10694/myami-trunk-11-14-18.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9187/tomo3d_January2015.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9188/tomoctf_x86_64_July2013.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9189/imod_4.10.11_docker.tar.gz'

cd $curdir
tar zxvf TGZ/myami-trunk-11-14-18.tar.gz myami-trunk

docker build -t semc/appion-protomo:v1.1.4 .
