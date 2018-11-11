FROM centos:7
MAINTAINER Alex Noble <anoble@nysbc.org>
LABEL authors="Neil Voss, Carl Negro, Alex Noble"
### install epel
#RUN yum -y install epel-release
#RUN yum -y install yum
#RUN yum -y upgrade --exclude=filesystem*  # filesystem doesn't update properly for some reason
#RUN yum -y install wget epel-release sudo passwd rsync tar openssh-clients && yum -y clean all

### install software
#RUN yum -y upgrade --exclude=filesystem*  # filesystem doesn't update properly for some reason
RUN yum -y install epel-release && yum -y install yum wget epel-release sudo passwd rsync tar openssh-clients && yum -y install \
 python-tools python-devel python-matplotlib \
 ImageMagick grace gnuplot bash-completion colordiff \
 wxPython numpy scipy python-imaging python2-pip  \
 gcc-gfortran opencv-python  \
 gcc-objc fftw3-devel gsl-devel boost148-python PyQt4 \
 mariadb mariadb-server MySQL-python ftgl \
 httpd php php-mysql mod_ssl php-pecl-ssh2 \
 gcc-c++ libtiff-devel PyOpenGL python-argparse \
 php-devel gd-devel fftw3-devel php-gd \
 xorg-x11-server-Xvfb netpbm-progs python-requests \
 libssh2-devel mlocate nano elinks file \
 python-configparser h5py git pyflakes \
 gtkglext-libs pangox-compat tcsh gedit `#protomo specific pkgs` \
 numactl vim nc screen && yum -y clean all \
&& rm -rf /var/cache/yum \
&& sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/nanorc \

## Appion specific installs
&& yum -y upgrade --exclude=filesystem* && yum -y install firefox dbus && yum -y clean all && rm -rf /var/cache/yum \
&& dbus-uuidgen > /var/lib/dbus/machine-id \
&& pip install --upgrade pip \
&& pip install joblib pyfftw3 fs==0.5.4 scikit-learn==0.18.2 \
&& python -c 'from sklearn import svm' # test for function \
&& updatedb \
&& mkdir -p /emg/data  && echo 'mkdir /emg/data' \
&& mkdir -p /sw && echo 'mkdir /sw' \
&& mkdir -p /sw/sql && echo 'mkdir /sw/sql' \
&& mkdir -p /emg/data/appion && echo 'mkdir /emg/data/appion' \
&& chmod 777 -R /emg  && echo 'chmod 777' \
&& chown -R appionuser:users /emg/data

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
#RUN git clone -b myami-beta http://emg.nysbc.org/git/myami.git /sw/myami/
COPY myami-trunk /sw/myami
RUN ln -sv /sw/myami/myamiweb /var/www/html/myamiweb

#COPY config/sinedon.cfg /etc/myami/sinedon.cfg
#COPY config/leginon.cfg /etc/myami/leginon.cfg
#COPY config/instruments.cfg /etc/myami/instruments.cfg
#COPY config/appion.cfg /etc/myami/appion.cfg
#COPY config/redux.cfg /etc/myami/redux.cfg
COPY config/sinedon.cfg config/leginon.cfg config/instruments.cfg config/appion.cfg config/redux.cfg /etc/myami/

RUN mkdir -p /sw/sql
#COPY sql/docker.sql /sw/sql/docker.sql
#COPY sql/leginondb.sql /sw/sql/leginondb.sql
#COPY sql/projectdb.sql /sw/sql/projectdb.sql
COPY sql/ /sw/sql/
#COPY particledata.dat /sw/particledata.dat
RUN mkdir -p /var/cache/myami/redux/ && chmod 777 /var/cache/myami/redux/ \
&& ln -sv /sw/myami/appion/appionlib /usr/lib64/python2.7/site-packages/ \
&& ln -sv /sw/myami/redux/bin/reduxd /usr/bin/ && chmod 755 /usr/bin/reduxd \
&& for i in pyami imageviewer leginon pyscope sinedon redux; \
	do ln -sv /sw/myami/$i /usr/lib64/python2.7/site-packages/; done

### Compile radermacher, libcv, numextension, and redux
WORKDIR /sw/myami/modules/radermacher
RUN python ./setup.py install
WORKDIR /sw/myami/modules/libcv
RUN python ./setup.py install
WORKDIR /sw/myami/modules/numextension
RUN python ./setup.py install
WORKDIR /sw/myami/redux
RUN python ./setup.py install

RUN mkdir /etc/fftw \
&& python /sw/myami/pyami/fft/fftwsetup.py 2 4096 4096 && mv -v ~/fftw3-wisdom-* /etc/fftw/wisdom \
&& cp -v /sw/myami/redux/init.d/reduxd /etc/init.d/reduxd
#COPY findem-docker-centos7/findem64.exe /sw/myami/appion/bin/
WORKDIR /sw/myami/

#ADD Xmipp-2.4-src.tar.gz /sw
#RUN mv -v /sw/Xmipp-2.4-src /sw/xmipp
#WORKDIR /sw/xmipp
#ENV MPIPATH /usr/lib64/openmpi
#ENV PATH /bin:/usr/bin:/sbin:/usr/sbin:/usr/lib64/openmpi/bin
#RUN ./scons.configure MPI_LIBDIR=/usr/lib64/openmpi/lib  MPI_LIB=mpi  MPI_INCLUDE=/usr/include/openmpi-x86_64
#RUN ./scons.compile
#FIXME: mpirun does not run as root
#ADD TGZ/xmipp_centos6_docker.tgz /sw

### EMAN 1 & 2
ADD TGZ/eman-linux-x86_64-cluster-1.9.tar.gz TGZ/eman2_centos6_docker.tgz TGZ/imod_4.10.11_docker.tar.gz TGZ/protomo2-centos7-docker.tgz TGZ/ffmpeg-git-64bit-static.tar.xz /sw/

### EMAN 2
### http://emg.nysbc.org/redmine/projects/appion/wiki/Install_EMAN2
#ADD TGZ/eman2_centos6_docker.tgz /sw/

### RELION
#ADD TGZ/relion-1.4.tgz /sw/

#ADD TGZ/spidersmall.13.00.tgz /sw
#RUN ln -sv /sw/spider/bin/spider_linux_mp_opt64 /sw/spider/bin/spider

#RUN mkdir -p /sw/grigorieff/bin
#ADD TGZ/ctf_140609.tar.gz /sw/grigorieff/
#ADD TGZ/ctffind-4.1.5.tgz /sw/grigorieff/
#RUN mv -v /sw/grigorieff/ctf /sw/grigorieff/ctffind3
#RUN chmod 777 /sw/grigorieff/ctffind3/ctffind3_mp.exe 
#RUN chmod 777 /sw/grigorieff/ctffind4/ctffind-4.1.5
#RUN ln -sv /sw/grigorieff/ctffind4/ctffind-4.1.5 /sw/grigorieff/bin/ctffind4
#RUN ln -sv /sw/grigorieff/ctffind3/ctffind3_mp.exe /sw/grigorieff/bin/ctffind64.exe

### PROTOMO
#ADD TGZ/protomo2-centos7-docker.tgz /sw/
#ADD TGZ/ffmpeg-git-64bit-static.tar.xz /sw/
#RUN ln -sv /sw/ffmpeg* /sw/ffmpeg-64bit-static
#RUN yum -y install tcsh gedit

### Tomo3D
ADD TGZ/tomo3d_January2015.tar.gz /sw/tomo3d/

### TomoCTF
ADD TGZ/tomoctf_x86_64_July2013.tar.gz /sw/tomoctf/
#RUN chmod +x /sw/tomoctf/bin/*

### IMOD
#ADD TGZ/imod_4.10.11_docker.tar.gz /sw/
RUN ln -sv /sw/imod_4.10.11 /sw/IMOD \
&& ln -sv /sw/ffmpeg* /sw/ffmpeg-64bit-static \
&& chmod +x /sw/tomoctf/bin/* \
&& mv -v /sw/EMAN /sw/eman1 \
&& ln -sv /sw/eman1/lib/libpyEM.so.ucs4.py2.6 /sw/eman1/lib/libpyEM.so #FIX ME

### Trying to do VNC
#RUN yum -y upgrade && yum -y install  \
# ftp://ftp.pbone.net/mirror/ftp.scientificlinux.org/linux/scientific/6.5/x86_64/os/Packages/xorg-x11-twm-1.0.3-5.1.el6.x86_64.rpm \
# && yum -y clean all
#RUN yum -y upgrade --exclude=filesystem* &&  # filesystem doesn't update properly for some reason
RUN yum -y install \
 tigervnc-server xterm xsetroot fluxbox \
 xorg-x11-xinit xorg-x11-font-utils xorg-x11-fonts-Type1 xorg-x11-xauth  \
 libX11-common libX11 dbus-x11 xorg-x11-server-utils xorg-x11-xkb-utils \
 xorg-x11-fonts-75dpi xorg-x11-fonts-100dpi xorg-x11-fonts-misc \
 && yum -y clean all && rm -rf /var/cache/yum

### Change to local user
#RUN mkdir -p /home/appionuser
RUN useradd -d /home/appionuser -g 100 -p 'appion-protomo' -s /bin/bash appionuser && echo 'appionuser' && usermod -aG wheel appionuser \
&& chmod 777 /home/appionuser \
&& chown -R appionuser:users /home/appionuser
#USER appionuser
ENV HOME /home/appionuser
WORKDIR /home/appionuser
RUN mkdir -p .vnc \
&& touch .Xauthority \
&& chmod 777 .vnc \
&& echo appion-protomo | vncpasswd -f > .vnc/passwd \
&& echo "root:appion-protomo" | chpasswd \
&& chmod 600 .vnc/passwd \
&& ls .vnc/ \
&& mkdir -p .config/fbpanel
COPY config/xstartup .vnc/xstartup
COPY config/fbpanel-default .config/fbpanel/default
#RUN ls .vnc/
USER root
#RUN chown -R appionuser:users /home/appionuser
#USER appionuser
RUN chown -R appionuser:users /home/appionuser \
&& mkdir -p /emg/data/ \
&& chown -R appionuser:users /emg/data \
&& chmod -R 777 /emg/ \
&& chmod 700 .vnc/xstartup
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

COPY config/bashrc /etc/bashrc
#RUN mkdir -p /home/appionuser/.mozilla/firefox/yvn3wpn8.default
#COPY profiles.ini  /home/appionuser/.mozilla/firefox/
COPY config/config.php /sw/myami/myamiweb/config.php
RUN sed -i 's:Appion-Protomo in a Docker Container:Appion-Protomo in a Docker Container<br><font size=5>version 1.1.3</font>:g' /sw/myami/myamiweb/config.php \
&& rm /anaconda-post.log
COPY startup.sh /sw/startup.sh

RUN updatedb

CMD /sw/startup.sh
