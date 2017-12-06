#!/bin/sh

# create database for ap2 before running script
# http://localhost:8080/ami/project/getproject.php?projectId=2

#run within docker
# /emg/sw/myami/appion/docker/centos7/ctf_suite.sh

cd /emg/sw/myami/appion/docker/centos7/

mkdir CTF/
cd CTF/

mkdir 17jul27d/
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/8372/17jul27d_b_00018gr_00004sq_v02_00008hl16_00002edhiii-a.mrc' \
  -O 17jul27d/17jul27d-02ed.mrc
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/8370/17jul27d_b_00018gr_00004sq_v02_00004hl16_00005edhiii-a.mrc' \
  -O 17jul27d/17jul27d-05ed.mrc
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/8363/17jul27d_b_00018gr_00005sq_v01_00008hl16_00007edhiii-a.mrc' \
  -O 17jul27d/17jul27d-07ed.mrc
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/8371/17jul27d_b_00018gr_00004sq_v02_00004hl16_00009edhiii-a.mrc' \
  -O 17jul27d/17jul27d-09ed.mrc
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/8369/17jul27d_b_00018gr_00004sq_v01_00002hl16_00011edhiii-a.mrc' \
  -O 17jul27d/17jul27d-11ed.mrc
uploadImages.py -C -n 17jul27d -d 'Gabe Close-to-Focus Fail Image' -p 1 \
 --mag=50002 --type=normal --image-dir=`pwd`/17jul27d/ \
 --mpix=0.56e-10 --kv=200 --cs=2.7 --defocus=-0.51e-6
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.07 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.02 --numstep=50 --dast=0.05  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/17jul27d/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=17jul27d --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

mkdir phaseplate1/
wget -nc -c \
	'http://emg.nysbc.org/redmine/attachments/download/7808/Baker_CTFDisplay_fail_example_image.mrc' \
	-O phaseplate1/phaseplate1.mrc
uploadImages.py -C -n phaseplate1 -d 'Baker Lab Phase Plate Image' -p 1 \
 --mag=50001 --type=normal --image-dir=`pwd`/phaseplate1/ \
 --mpix=1.2e-10 --kv=200 --cs=2.7 --defocus=-2.2e-6
echo "--------------------------------------------"

mkdir 15aug31/
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/4252/15aug31a_example1.mrc' \
  -O 15aug31/15aug31.mrc
uploadImages.py -C -n 15aug31 -d 'Anchi Far-from-Focus Pixel Size Question Image #1' -p 1 \
 --mag=50003 --type=normal --image-dir=`pwd`/15aug31/ \
 --mpix=1.47e-10 --kv=200 --cs=2.7 --defocus=-5.86e-6
echo "--------------------------------------------"

mkdir 17apr12a/
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/7680/17apr12a_00019en.mrc' \
  -O 17apr12a/17apr12a.mrc
uploadImages.py -C -n 17apr12a -d 'Anchi Close-to-Focus Pixel Size Question Image #2' -p 1 \
 --mag=50004 --type=normal --image-dir=`pwd`/17apr12a/ \
 --mpix=1.1e-10 --kv=120 --cs=2.2 --defocus=-1.04e-6
echo "--------------------------------------------"
#mpix quoted as 0.963

mkdir 17jul21b/
wget -nc -c \
  'http://emg.nysbc.org/redmine/attachments/download/8364/17jul21b_00010gr_00002sq_00035hl_00002ex.mrc' \
  -O 17jul21b/17jul21b.mrc
uploadImages.py -C -n 17jul21b -d 'Scott 8k Image' -p 1 \
 --mag=50005 --type=normal --image-dir=`pwd`/17jul21b/ \
 --mpix=1.01e-10 --kv=300 --cs=2.7 --defocus=-2.67e-6
echo "--------------------------------------------"

wget -nc -c \
 'http://i2pc.cnb.csic.es/3dembenchmark/pub/CTF_Challenge_009.tar.gz'
tar zxvf CTF_Challenge_009.tar.gz
uploadImages.py -C -n ctf_009 -d 'CTF Challenge Image Set 009' -p 1 \
 --mag=50006 --type=normal --image-dir=`pwd`/set_009_challenge/ \
 --mpix=1.525e-10 --kv=300 --cs=2.26 --defocus=-2.5e-6
echo "--------------------------------------------"

#mkdir CTF_Test/
wget -nc -c \
 'http://i2pc.cnb.csic.es/3dembenchmark/pub/CTF_Test.tar.gz'
tar zxvf CTF_Test.tar.gz
uploadImages.py -C -n ctf_test -d 'CTF Challenge Simulated Test Images' -p 1 \
 --mag=50007 --type=normal --image-dir=`pwd`/CTF_Test/Simulated/ \
 --mpix=1.525e-10 --kv=300 --cs=2.26 --defocus=-0.3e-6
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.07 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.02 --numstep=50 --dast=0.05  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/17jul27d/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=17jul27d --no-wait \
	--no-rejects --continue --jobtype=ctfestimate --exhaust
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/17jul27d/ctf/ctffindrun2  --session=17jul27d --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=200 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.07 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.002 --numstep=50 --dast=0.05  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/17jul27d/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=17jul27d --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/17jul27d/ctf/ctffindrun2  --session=17jul27d --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=100 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.07 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.002 --numstep=50 --dast=0.05  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/15aug31/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=15aug31 --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/15aug31/ctf/ctffindrun2  --session=15aug31 --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=100 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.07 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.002 --numstep=50 --dast=0.05  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/17apr12a/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=17apr12a --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/17apr12a/ctf/ctffindrun2  --session=17apr12a --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=100 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.07 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.002 --numstep=50 --dast=0.05  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/17jul21b/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=17jul21b --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/17jul21b/ctf/ctffindrun2  --session=17jul21b --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=100 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.10 --fieldsize=1024 --resmin=50 --resmax=3.5 \
	--defstep=0.02 --numstep=50 --dast=0.5  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/ctf_009/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=ctf_009 --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/ctf_009/ctf/ctffindrun2  --session=ctf_009 --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=100 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

ctffind4.py --ampcontrast=0.10 --fieldsize=512 --resmin=50 --resmax=3.5 \
	--defstep=0.02 --numstep=50 --dast=2.5  --runname=ctffind4run1 \
	--rundir=/emg/data/appion/ctf_test/ctf/ctffind4run1 --preset=upload \
	--commit --projectid=1 --session=ctf_test --no-wait \
	--no-rejects --continue --jobtype=ctfestimate
echo "--------------------------------------------"

ctfestimate.py --runname=ctffindrun2 \
	--rundir=/emg/data/appion/ctf_test/ctf/ctffindrun2  --session=ctf_test --bestdb \
	--preset=upload --commit --projectid=1 --no-rejects --no-wait --continue  --fieldsize=1024 \
	--medium=ice --bin=2 --resmin=50 --resmax=3.5 --defstep=100 --numstep=20 \
	--expid=5 --jobtype=ctfestimate 
echo "--------------------------------------------"

echo /emg/sw/myami/appion/docker/centos7/ctf_suite.sh

echo "done"


exit;

