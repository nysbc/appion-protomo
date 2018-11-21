FROM centos:7
MAINTAINER Alex Noble <anoble@nysbc.org>
LABEL authors="Neil Voss, Carl Negro, Alex Noble"

### install software
RUN yum -y install epel-release && yum -y install yum wget sudo passwd rsync tar openssh-clients && yum -y install \
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
#
### MariaDB setup
&& sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/my.cnf \
&& sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/nanorc \
#
## Appion specific installs   # filesystem doesn't update properly for some reason
&& yum -y upgrade --exclude=filesystem* && yum -y install firefox dbus && yum -y clean all && rm -rf /var/cache/yum \
&& dbus-uuidgen > /var/lib/dbus/machine-id \
&& pip install --upgrade pip \
&& pip install joblib pyfftw3 fs==0.5.4 scikit-learn==0.18.2 \
&& python -c 'from sklearn import svm' # test for function \
&& updatedb \
&& mkdir -p /emg/data \
&& mkdir -p /sw \
&& mkdir -p /sw/sql \
&& mkdir -p /emg/data/appion \
&& chmod 777 -R /emg \
&& chown -R appionuser:users /emg/data

COPY config/sinedon.cfg config/leginon.cfg config/instruments.cfg config/appion.cfg config/redux.cfg /etc/myami/

### Apache setup
COPY config/php.ini config/bashrc /etc/
COPY config/info.php /var/www/html/info.php
EXPOSE 80 5901

COPY sql/ /sw/sql/

### EMAN 1 & 2, Protomo, FFMPEG, IMOD, Tomo3D, TomoCTF setup  (fix libpyEM.so?)
RUN wget http://emg.nysbc.org/redmine/attachments/download/10733/myami-trunk-11-16-18.tar.gz && tar xzfv myami-trunk-11-16-18.tar.gz -C /sw && rm myami-trunk-11-16-18.tar.gz \
&& wget http://emg.nysbc.org/redmine/attachments/download/10728/eman-linux-x86_64-cluster-1.9.tar.gz && tar xzfv eman-linux-x86_64-cluster-1.9.tar.gz -C /sw && rm eman-linux-x86_64-cluster-1.9.tar.gz \
&& wget http://emg.nysbc.org/redmine/attachments/download/5600/eman2_centos6_docker.tgz && tar xzfv eman2_centos6_docker.tgz -C /sw && rm eman2_centos6_docker.tgz \
&& wget http://emg.nysbc.org/redmine/attachments/download/8380/protomo2-centos7-docker.tgz && tar xzfv protomo2-centos7-docker.tgz -C /sw && rm protomo2-centos7-docker.tgz \
&& wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz && tar xfv ffmpeg-git-64bit-static.tar.xz -C /sw && rm ffmpeg-git-64bit-static.tar.xz \
&& wget http://emg.nysbc.org/redmine/attachments/download/10729/tomo3d_January2015.tar.gz && tar xzfv tomo3d_January2015.tar.gz -C /sw && rm tomo3d_January2015.tar.gz \
&& wget http://emg.nysbc.org/redmine/attachments/download/10731/tomoctf_x86_64_July2013.tar.gz && tar xzfv tomoctf_x86_64_July2013.tar.gz -C /sw && rm tomoctf_x86_64_July2013.tar.gz \
&& wget http://emg.nysbc.org/redmine/attachments/download/10732/imod_4.10.11_docker.tar.gz && tar xzfv imod_4.10.11_docker.tar.gz -C /sw && rm imod_4.10.11_docker.tar.gz \
&& ln -sv /sw/ffmpeg* /sw/ffmpeg-64bit-static \
&& ln -sv /sw/eman1/lib/libpyEM.so.ucs4.py2.6 /sw/eman1/lib/libpyEM.so \
#
### Myami setup
&& chmod 444 /var/www/html/info.php \
&& ln -sv /sw/myami/myamiweb /var/www/html/myamiweb \
&& mkdir -p /etc/myami \
&& mkdir -p /var/cache/myami/redux/ && chmod 777 /var/cache/myami/redux/ \
&& ln -sv /sw/myami/appion/appionlib /usr/lib64/python2.7/site-packages/ \
&& ln -sv /sw/myami/redux/bin/reduxd /usr/bin/ && chmod 755 /usr/bin/reduxd \
&& for i in pyami imageviewer leginon pyscope sinedon redux; \
	do ln -sv /sw/myami/$i /usr/lib64/python2.7/site-packages/; done

### Compile radermacher, libcv, numextension, and redux

WORKDIR /sw/myami/modules/numextension
RUN python ./setup.py install
WORKDIR /sw/myami/redux
RUN python ./setup.py install \
#
&& mkdir /etc/fftw \
&& python /sw/myami/pyami/fft/fftwsetup.py 2 4096 4096 && mv -v ~/fftw3-wisdom-* /etc/fftw/wisdom \
&& cp -v /sw/myami/redux/init.d/reduxd /etc/init.d/reduxd \
#
### VNC
&& yum -y install \
 tigervnc-server xterm xsetroot fluxbox \
 xorg-x11-xinit xorg-x11-font-utils xorg-x11-fonts-Type1 xorg-x11-xauth  \
 libX11-common libX11 dbus-x11 xorg-x11-server-utils xorg-x11-xkb-utils \
 xorg-x11-fonts-75dpi xorg-x11-fonts-100dpi xorg-x11-fonts-misc \
 && yum -y clean all && rm -rf /var/cache/yum \
#
### Change to local user
&& useradd -d /home/appionuser -g 100 -p 'appion-protomo' -s /bin/bash appionuser && usermod -aG wheel appionuser \
&& chmod 777 /home/appionuser \
&& chown -R appionuser:users /home/appionuser \
&& mkdir -p /home/appionuser/.vnc \
&& touch /home/appionuser/.Xauthority \
&& chmod 777 /home/appionuser/.vnc \
&& echo appion-protomo | vncpasswd -f > /home/appionuser/.vnc/passwd \
&& echo "root:appion-protomo" | chpasswd \
&& chmod 600 /home/appionuser/.vnc/passwd \
&& mkdir -p /home/appionuser/.config/fbpanel
ENV HOME /home/appionuser
USER root
COPY config/xstartup /home/appionuser/.vnc/xstartup
COPY config/fbpanel-default /home/appionuser/.config/fbpanel/default
COPY config/config.php /sw/myami/myamiweb/config.php
RUN chown -R appionuser:users /home/appionuser \
&& mkdir -p /emg/data/ \
&& chown -R appionuser:users /emg/data \
&& chmod -R 777 /emg/ \
&& chmod 700 /home/appionuser/.vnc/xstartup \
&& rm -rf root/.cache/ /anaconda-post.log \
&& sed -i 's,Appion-Protomo in a Docker Container,Appion-Protomo in a Docker Container<br><font size=5>version 1.2</font><br><font size=3><a href='https://github.com/nysbc/appion-protomo' target='_blank'><b>Check if there is an update! | <a href='https://groups.google.com/forum/#!forum/appion-protomo' target='_blank'>Get help from the Google group!</a></b></font>,g' /sw/myami/myamiweb/config.php \
&& updatedb

COPY startup.sh /sw/startup.sh
CMD /sw/startup.sh
