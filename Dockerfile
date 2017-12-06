FROM centos:7
MAINTAINER Carl Negro <cnegro@nysbc.org>
LABEL authors="Neil Voss, Carl Negro"
### install epel
RUN yum -y install epel-release
RUN yum -y install yum
RUN yum -y upgrade \
  && yum -y install wget epel-release sudo passwd rsync tar openssh-clients && yum -y clean all

### install software
RUN yum -y upgrade && yum -y install \
 python-tools python-devel python-matplotlib \
 ImageMagick grace gnuplot bash-completion colordiff \
 wxPython numpy scipy python-imaging python2-pip  \
 gcc-gfortran opencv-python \
 gcc-objc fftw3-devel gsl-devel boost148-python PyQt4 \
 mariadb mariadb-server MySQL-python ftgl \
 httpd php php-mysql mod_ssl php-pecl-ssh2 \
 gcc-c++ libtiff-devel PyOpenGL python-argparse \
 php-devel gd-devel fftw3-devel php-gd \
 xorg-x11-server-Xvfb netpbm-progs python-requests \
 libssh2-devel mlocate nano elinks file \
 python-configparser h5py git pyflakes \
 gtkglext-libs pangox-compat `#protomo specific pkgs` \
 numactl vim nc && yum -y clean all

RUN sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/nanorc

## Appion specific installs
RUN yum -y upgrade && yum -y install mozilla-adblockplus firefox dbus && yum -y clean all
RUN dbus-uuidgen > /var/lib/dbus/machine-id
RUN pip install --upgrade pip
RUN pip install joblib pyfftw3 fs==0.5.4 scikit-learn==0.18.2
RUN python -c 'from sklearn import svm' # test for function

RUN updatedb

RUN mkdir -p /emg/data  && echo 'mkdir /emg/data'
RUN mkdir -p /emg/sw && echo 'mkdir /emg/sw'
RUN mkdir -p /emg/sw/sql && echo 'mkdir /emg/sw/sql'
RUN chmod 777 -R /emg  && echo 'chmod 777'

### Apache setup
COPY config/php.ini /etc/php.ini
#COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY config/info.php /var/www/html/info.php
RUN chmod 444 /var/www/html/info.php && echo 'chmod info.php'
EXPOSE 80

### MariaDB setup
#RUN cp -fv my.cnf /etc/my.cnf
RUN sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/my.cnf
#RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql/
#EXPOSE 3306

### Myami setup
#RUN git clone -b myami-beta http://emg.nysbc.org/git/myami.git /emg/sw/myami/
COPY myami-trunk /emg/sw/myami
RUN ln -sv /emg/sw/myami/myamiweb /var/www/html/myamiweb

COPY config/sinedon.cfg /etc/myami/sinedon.cfg
COPY config/leginon.cfg /etc/myami/leginon.cfg
COPY config/instruments.cfg /etc/myami/instruments.cfg
COPY config/appion.cfg /etc/myami/appion.cfg
COPY config/redux.cfg /etc/myami/redux.cfg

RUN mkdir -p /emg/sw/sql
#COPY sql/docker.sql /emg/sw/sql/docker.sql
#COPY sql/leginondb.sql /emg/sw/sql/leginondb.sql
#COPY sql/projectdb.sql /emg/sw/sql/projectdb.sql
COPY sql/ /emg/sw/sql/
#COPY particledata.dat /emg/sw/particledata.dat
RUN mkdir -p /var/cache/myami/redux/ && chmod 777 /var/cache/myami/redux/
RUN ln -sv /emg/sw/myami/appion/appionlib /usr/lib64/python2.7/site-packages/
RUN ln -sv /emg/sw/myami/redux/bin/reduxd /usr/bin/ && chmod 755 /usr/bin/reduxd
RUN for i in pyami imageviewer leginon pyscope sinedon redux; \
	do ln -sv /emg/sw/myami/$i /usr/lib64/python2.7/site-packages/; done

### Compile radermacher, libcv, numextension, and redux
WORKDIR /emg/sw/myami/modules/radermacher
RUN python ./setup.py install
WORKDIR /emg/sw/myami/modules/libcv
RUN python ./setup.py install
WORKDIR /emg/sw/myami/modules/numextension
RUN python ./setup.py install
WORKDIR /emg/sw/myami/redux
RUN python ./setup.py install

RUN mkdir /etc/fftw
RUN python /emg/sw/myami/pyami/fft/fftwsetup.py 2 4096 4096 && mv -v ~/fftw3-wisdom-* /etc/fftw/wisdom
RUN cp -v /emg/sw/myami/redux/init.d/reduxd /etc/init.d/reduxd
COPY findem-docker-centos7/findem64.exe /emg/sw/myami/appion/bin/
WORKDIR /emg/sw/myami/

#ADD Xmipp-2.4-src.tar.gz /emg/sw
#RUN mv -v /emg/sw/Xmipp-2.4-src /emg/sw/xmipp
#WORKDIR /emg/sw/xmipp
#ENV MPIPATH /usr/lib64/openmpi
#ENV PATH /bin:/usr/bin:/sbin:/usr/sbin:/usr/lib64/openmpi/bin
#RUN ./scons.configure MPI_LIBDIR=/usr/lib64/openmpi/lib  MPI_LIB=mpi  MPI_INCLUDE=/usr/include/openmpi-x86_64
#RUN ./scons.compile
#FIXME: mpirun does not run as root
ADD TGZ/xmipp_centos6_docker.tgz /emg/sw

### EMAN 1
ADD TGZ/eman-linux-x86_64-cluster-1.9.tar.gz /emg/sw
RUN mv -v /emg/sw/EMAN /emg/sw/eman1
RUN ln -sv /emg/sw/eman1/lib/libpyEM.so.ucs4.py2.6 /emg/sw/eman1/lib/libpyEM.so #FIX ME

### EMAN 2
### http://emg.nysbc.org/redmine/projects/appion/wiki/Install_EMAN2
ADD TGZ/eman2_centos6_docker.tgz /emg/sw/

### RELION
ADD TGZ/relion-1.4.tgz /emg/sw/

ADD TGZ/spidersmall.13.00.tgz /emg/sw
#RUN ln -sv /emg/sw/spider/bin/spider_linux_mp_opt64 /emg/sw/spider/bin/spider

RUN mkdir -p /emg/sw/grigorieff/bin
ADD TGZ/ctf_140609.tar.gz /emg/sw/grigorieff/
ADD TGZ/ctffind-4.1.5.tgz /emg/sw/grigorieff/
RUN mv -v /emg/sw/grigorieff/ctf /emg/sw/grigorieff/ctffind3
RUN chmod 777 /emg/sw/grigorieff/ctffind3/ctffind3_mp.exe 
RUN chmod 777 /emg/sw/grigorieff/ctffind4/ctffind-4.1.5
RUN ln -sv /emg/sw/grigorieff/ctffind4/ctffind-4.1.5 /emg/sw/grigorieff/bin/ctffind4
RUN ln -sv /emg/sw/grigorieff/ctffind3/ctffind3_mp.exe /emg/sw/grigorieff/bin/ctffind64.exe

### PROTOMO
ADD TGZ/protomo2-centos7-docker.tgz /emg/sw/
ADD TGZ/ffmpeg-git-64bit-static.tar.xz /emg/sw/

### Trying to do VNC
#RUN yum -y upgrade && yum -y install  \
# ftp://ftp.pbone.net/mirror/ftp.scientificlinux.org/linux/scientific/6.5/x86_64/os/Packages/xorg-x11-twm-1.0.3-5.1.el6.x86_64.rpm \
# && yum -y clean all
RUN yum -y upgrade && yum -y install \
 tigervnc-server xterm xsetroot fluxbox \
 xorg-x11-xinit xorg-x11-font-utils xorg-x11-fonts-Type1 xorg-x11-xauth  \
 libX11-common libX11 dbus-x11 xorg-x11-server-utils xorg-x11-xkb-utils \
 xorg-x11-fonts-75dpi xorg-x11-fonts-100dpi xorg-x11-fonts-misc \
 && yum -y clean all

### Change to local user
#RUN mkdir -p /home/appionuser
RUN useradd -d /home/appionuser -g 100 -p 'appion-protomo' -s /bin/bash appionuser && echo 'appionuser' && usermod -aG wheel appionuser
RUN chmod 777 /home/appionuser
RUN chown -R appionuser:users /home/appionuser
#USER appionuser
ENV HOME /home/appionuser
WORKDIR /home/appionuser
RUN mkdir -p .vnc
RUN touch .Xauthority
RUN chmod 777 .vnc
RUN echo appion-protomo | vncpasswd -f > .vnc/passwd
RUN chmod 600 .vnc/passwd
RUN ls .vnc/
COPY config/xstartup .vnc/xstartup
RUN mkdir -p .config/fbpanel
COPY config/fbpanel-default .config/fbpanel/default
RUN ls .vnc/
USER root
RUN chown -R appionuser:users /home/appionuser
#USER appionuser
RUN chmod 700 .vnc/xstartup
EXPOSE 5901

### copy the image data
#COPY findem-docker-centos7/groel_template1.mrc /emg/data/leginon/06jul12a/templates/
#COPY findem-docker-centos7/groel_template2.mrc /emg/data/leginon/06jul12a/templates/
#COPY MRC/06jul12a/06jul12a_15gr_28sq_04hl_02em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_15gr_28sq_11hl_03em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_15gr_28sq_23hl_02em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_15gr_28sq_23hl_04em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_22gr_13sq_02hl_04em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_22gr_13sq_03hl_05em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_22gr_37sq_05hl_02em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_22gr_37sq_05hl_05em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_22gr_37sq_25hl_04em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_22gr_37sq_25hl_05em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_27gr_65sq_09hl_05em.mrc /emg/data/leginon/06jul12a/rawdata/
#COPY MRC/06jul12a/06jul12a_35gr_63sq_12hl_04em.mrc /emg/data/leginon/06jul12a/rawdata/
RUN chown -R appionuser:users /emg/data

COPY config/bashrc /etc/bashrc
#RUN mkdir -p /home/appionuser/.mozilla/firefox/yvn3wpn8.default
#COPY profiles.ini  /home/appionuser/.mozilla/firefox/
COPY config/config.php /emg/sw/myami/myamiweb/config.php
COPY localdb.sh /emg/sw/localdb.sh
COPY startup.sh /emg/sw/startup.sh


### just double check that this directory is missing
RUN rm -fvr /emg/data/appion

RUN updatedb

CMD /emg/sw/startup.sh

