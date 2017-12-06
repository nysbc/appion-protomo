#!/bin/sh

templateCorrelator.py \
 --runname=tmplrun1 --rundir=/emg/data/appion/06jul12a/extract/tmplrun1 \
 --invert --bin=2 --diam=240 --thresh=0.4 \
 --median=2 --lowpass=25 --highpass=500 --pixlimit=8.0 --planereg \
 --commit --preset=em --no-rejects  --no-wait --continue \
 --overlapmult=1.1 --maxsize=0.8 --peaktype=maximum --maxpeaks=150 \
 --template-list=2,1 --range-list=0,180,10x0,52,10 \
 --projectid=1 --session=06jul12a --expid=1 --jobtype=templatecorrelator 

dogPicker.py \
  --runname=dogrun2 --rundir=/emg/data/appion/06jul12a/extract/dogrun2 \
  --kfactor=1.2 --commit --preset=em --projectid=1 --session=06jul12a \
  --no-rejects --no-wait --continue --pdiam=150 --lpval=0 --hpval=0 \
  --medianval=2 --pixlimit=4 --binval=4 --planereg --invert --minthresh=0.35 \
  --maxthresh=2.5 --maxpeaks=1500 --peaktype=centerofmass --maxsize=1.0 \
  --overlapmult=1.5 --expid=1 --jobtype=dogpicker --parallel

selectionId=1 #manually picked
selectionId=2 #dogPicker

makestack2.py \
 --single=start.hed --selectionid=${selectionId} --invert \
 --lp=3 --hp=2000 --pixlimit=6.0 --bin=1 \
 --normalize-method=edgenorm --boxsize=240 --forceInsert \
 --description="testing average stack" --runname=stack1 \
 --rundir=/emg/data/appion/06jul12a/stacks/stack1 --commit \
 --preset=em --projectid=1 --session=06jul12a --no-rejects --no-wait \
 --continue --expid=1 --jobtype=makestack2

centerParticleStack.py \
 --stack-id=1 --description="test center run" \
 --rundir=/emg/data/appion/06jul12a/stacks/centered2 --runname=centered2 \
 --projectid=1 --expid=1 --jobtype=makestack --commit

stacknum=1 #makestack
stacknum=2 #centered particles

maxlikeAlignment.py \
 --description="long1" --stack=${stacknum} --lowpass=10 --highpass=1000 \
 --num-ref=3 --clip=96 --bin=2 --angle-interval=5 --max-iter=10 \
 --fast --fast-mode=wide --mirror --savemem --commit --converge=slow \
 --rundir=/emg/data/appion/06jul12a/align/maxlike1 --runname=maxlike1 \
 --projectid=1 --expid=1 --jobtype=partalign --nompi

uploadMaxlikeAlignment.py \
 --rundir=/emg/data/appion/06jul12a/align/maxlike1 \
 --commit --projectid=1 --runname=1 --expid=1 --jobtype=partalign

relionMaxlikeAlignment.py --bin=2 --lowpass=10 --highpass=1000 --max-iter=10 \
 --commit  --stack=${stacknum} --num-ref=3 --nproc=2 \
 --description='relion 2d' --angStep=5 --clip=96 --partDiam=190 \
 --runname=maxlike2 --rundir=/emg/data/appion/06jul12a/align/maxlike2 \
 --projectid=1 --expid=1 --jobtype=partalign --nompi

relionMaxlikeAlignment.py --bin=3 --lowpass=10 --highpass=1000 --max-iter=10 \
 --commit  --stack=${stacknum} --num-ref=9 --nproc=2 \
 --description='relion 2d' --angStep=11 --clip=48 --partDiam=170 \
 --runname=maxlike2 --rundir=/emg/data/appion/06jul12a/align/maxlike2 \
 --projectid=1 --expid=1 --jobtype=partalign --nompi

uploadRelion2DMaxlikeAlign.py --no-sort

uploadImages.py -n 17apr12a --mpix 0.963e-10 --cs 2.2 --kv 120 --mag 51000 \
--defocus -0.8e-6 --type=normal -p 1 \
--image-dir=/emg/sw/myami/appion/docker/centos7/17apr12a \
--description='test'

rsync -vrtPh \
 172.21.7.133:/lyra/data01/leginon/toimport/09sep20a-Pickwei_good_CTF/ \
 ~/myami/appion/docker/centos7/09sep20a-Pickwei_good_CTF/

imageloader.py \
  --projectid=2 --session=09sep20a --cs=2 \
  --dir=/emg/sw/myami/appion/docker/centos7/09sep20a-Pickwei_good_CTF/ \
  --filetype=mrc --apix=1.63 --binx=1 --biny=1 --df=-1.5 --mag=50000 \
  --kv=120 --description='Perfect CTF data, no visible particles' \
  --jobtype=uploadimage

rsync -vrtPh \
 172.21.7.133:/lyra/data01/leginon/13aug08set9/rawdata/*.mrc \
 ~/myami/appion/docker/centos7/13aug08set9/

imageloader.py \
  --projectid=1 --session=13aug08set9 --cs=2.26 \
  --dir=/emg/sw/myami/appion/docker/centos7/13aug08set9/ --filetype=mrc \
  --apix=1.525 --binx=1 --biny=1 --df=-2 --mag=50000 --kv=300 \
  --description='Simulated Data -- 300kV -- J.Frank/ H. Liao' \
  --jobtype=uploadimage

