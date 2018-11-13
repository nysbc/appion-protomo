#!/bin/sh

curdir=$(pwd)

#mkdir MRC
#cd MRC/
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/5975/06jul12a-mini.tgz'
#tar zxvf 06jul12a-mini.tgz
cd $curdir

mkdir TGZ
cd TGZ/
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/631/eman-linux-x86_64-cluster-1.9.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/5600/eman2_centos6_docker.tgz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/8380/protomo2-centos7-docker.tgz'
wget -nc -c 'https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9867/myami-trunk-7-5-18.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9187/tomo3d_January2015.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9188/tomoctf_x86_64_July2013.tar.gz'
wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/9189/imod_4.10.11_docker.tar.gz'

#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/4485/spidersmall.13.00.tgz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/4484/ctf_140609.tar.gz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/8366/ctffind-4.1.5.tgz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/5034/xmipp_centos6_docker.tgz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/5166/relion-1.4.tgz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/7489/findem-docker-centos7.tgz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/638/spidersmall.18.10.tar.gz'
#wget -nc -c 'http://emg.nysbc.org/redmine/attachments/download/636/Xmipp-2.4-src.tar.gz'

cd $curdir
#tar zxvf TGZ/findem-docker-centos7.tgz
tar zxvf TGZ/myami-trunk-7-5-18.tar.gz myami-trunk
docker build -t semc/appion-protomo:v1.0 .
