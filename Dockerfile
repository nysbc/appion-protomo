FROM centos:7
MAINTAINER Alex Noble <anoble@nysbc.org>
LABEL authors="Neil Voss, Carl Negro, Alex Noble"

### install software
RUN yum -y install epel-release && yum -y install yum wget epel-release sudo passwd rsync tar openssh-clients && yum -y install \
 python-tools python-devel python-matplotlib \
 ImageMagick gnuplot bash-completion \
 numpy scipy python-imaging python2-pip  \
 gcc-gfortran opencv-python  \
 gcc-objc fftw3-devel gsl-devel boost148-python PyQt4 \
 mariadb mariadb-server MySQL-python ftgl \
 httpd php php-mysql mod_ssl php-pecl-ssh2 \
 gcc-c++ libtiff-devel PyOpenGL python-argparse \
 php-devel gd-devel fftw3-devel php-gd \
 xorg-x11-server-Xvfb python-requests \
 libssh2-devel nano file \
 python-configparser mlocate \
 gtkglext-libs pangox-compat tcsh gedit `#protomo specific pkgs` \
 numactl vim nc screen && yum -y clean all \
 && rm -rf /var/cache/yum \

### MariaDB setup
&& sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/my.cnf \
&& sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/nanorc \

## Appion specific installs   # filesystem doesn't update properly for some reason
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
COPY config/php.ini config/bashrc /etc/
COPY config/info.php /var/www/html/info.php
EXPOSE 80 5901

### Myami setup
COPY myami-trunk /sw/myami
RUN chmod 444 /var/www/html/info.php && echo 'chmod info.php' \
&& ln -sv /sw/myami/myamiweb /var/www/html/myamiweb \
&& mkdir -p /sw/sql \
&& mkdir -p /var/cache/myami/redux/ && chmod 777 /var/cache/myami/redux/ \
&& ln -sv /sw/myami/appion/appionlib /usr/lib64/python2.7/site-packages/ \
&& ln -sv /sw/myami/redux/bin/reduxd /usr/bin/ && chmod 755 /usr/bin/reduxd \
&& for i in pyami imageviewer leginon pyscope sinedon redux; \
	do ln -sv /sw/myami/$i /usr/lib64/python2.7/site-packages/; done

COPY config/sinedon.cfg config/leginon.cfg config/instruments.cfg config/appion.cfg config/redux.cfg /etc/myami/

COPY sql/ /sw/sql/

### Compile radermacher, libcv, numextension, and redux
WORKDIR /sw/myami/modules/radermacher
RUN python ./setup.py install
WORKDIR /sw/myami/modules/libcv
RUN python ./setup.py install
WORKDIR /sw/myami/modules/numextension
RUN python ./setup.py install
WORKDIR /sw/myami/redux
RUN python ./setup.py install \

&& mkdir /etc/fftw \
&& python /sw/myami/pyami/fft/fftwsetup.py 2 4096 4096 && mv -v ~/fftw3-wisdom-* /etc/fftw/wisdom \
&& cp -v /sw/myami/redux/init.d/reduxd /etc/init.d/reduxd
WORKDIR /sw/myami/

### EMAN 1 & 2, IMOD, Protomo, FFMPEG
ADD TGZ/eman-linux-x86_64-cluster-1.9.tar.gz TGZ/eman2_centos6_docker.tgz TGZ/imod_4.10.11_docker.tar.gz TGZ/protomo2-centos7-docker.tgz TGZ/ffmpeg-git-64bit-static.tar.xz /sw/

### Tomo3D
ADD TGZ/tomo3d_January2015.tar.gz /sw/tomo3d/

### TomoCTF
ADD TGZ/tomoctf_x86_64_July2013.tar.gz /sw/tomoctf/

### IMOD  (fix libpyEM.so?)
RUN ln -sv /sw/imod_4.10.11 /sw/IMOD \
&& ln -sv /sw/ffmpeg* /sw/ffmpeg-64bit-static \
&& chmod +x /sw/tomoctf/bin/* \
&& mv -v /sw/EMAN /sw/eman1 \
&& ln -sv /sw/eman1/lib/libpyEM.so.ucs4.py2.6 /sw/eman1/lib/libpyEM.so \

### Trying to do VNC
&& yum -y install \
 tigervnc-server xterm xsetroot fluxbox \
 xorg-x11-xinit xorg-x11-font-utils xorg-x11-fonts-Type1 xorg-x11-xauth  \
 libX11-common libX11 dbus-x11 xorg-x11-server-utils xorg-x11-xkb-utils \
 xorg-x11-fonts-75dpi xorg-x11-fonts-100dpi xorg-x11-fonts-misc \
 && yum -y clean all && rm -rf /var/cache/yum \

### Change to local user
&& useradd -d /home/appionuser -g 100 -p 'appion-protomo' -s /bin/bash appionuser && echo 'appionuser' && usermod -aG wheel appionuser \
&& chmod 777 /home/appionuser \
&& chown -R appionuser:users /home/appionuser
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
USER root
COPY config/xstartup .vnc/xstartup
COPY config/fbpanel-default .config/fbpanel/default
COPY config/config.php /sw/myami/myamiweb/config.php
RUN chown -R appionuser:users /home/appionuser \
&& mkdir -p /emg/data/ \
&& chown -R appionuser:users /emg/data \
&& chmod -R 777 /emg/ \
&& chmod 700 .vnc/xstartup \
&& rm -rf root/.cache/ \
&& sed -i 's,Appion-Protomo in a Docker Container,Appion-Protomo in a Docker Container<br><font size=5>version 1.1.4</font><br><font size=3><a href='https://github.com/nysbc/appion-protomo' target='_blank'><b>Check if there is an update! | <a href='https://groups.google.com/forum/#!forum/appion-protomo' target='_blank'>Get help from the Google group!</a></b></font>,g' /sw/myami/myamiweb/config.php \
&& rm /anaconda-post.log \

&& updatedb

COPY startup.sh /sw/startup.sh
CMD /sw/startup.sh
