#!/bin/sh

/etc/init.d/reduxd start && echo 'reduxd' >> /var/log/startup.log
rm -fr /tmp/.X* && \
  /usr/sbin/runuser -l appionuser -c 'vncserver -autokill :1 -name vnc -geometry 1440x900' \
  && echo 'vncserver' >> /var/log/startup.log
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
updatedb && echo 'updatedb' >> /var/log/startup.log
nohup /usr/sbin/apachectl -DFOREGROUND &
echo 'httpd' >> /var/log/startup.log
sleep 2s && echo 'sleep' >> /var/log/startup.log

if [ ! -d "/emg/data/appion" ]; then
        echo "Creating appion data folder in /emg/data/appion..." | tee -a /var/log/startup.log
        mkdir /emg/data/appion
        echo "Folder created." | tee -a /var/log/startup.log
else
        echo "Appion data folder exists at /emg/data/appion." | tee -a /var/log/startup.log
fi

if [ -d "/var/lib/mysql/mysql" ]; then
        echo "Database exists"; 
        mysqld_safe --nowatch
        echo 'mysqld_safe launched.' | tee -a /var/log/startup.log
else 
        mysql_install_db --user=mysql --ldata=/var/lib/mysql
        mysqld_safe --nowatch
	until nc -c exit -v 0.0.0.0 3306
	do
	  echo "Waiting for database connection..." | tee -a /var/log/startup.log
	  sleep 5
	done
        chmod -R 777 /var/lib/mysql
        echo 'mysqld_safe launched.' | tee -a /var/log/startup.log
        mysql -u root < /sw/sql/leginondb.sql && echo 'mysql leginondb upload' >> /var/log/startup.log
        mysql -u root < /sw/sql/projectdb.sql && echo 'mysql projectdb upload' >> /var/log/startup.log
        echo 'Leginon and Project databases initialized.' | tee -a /var/log/startup.log
fi

chmod -R 777 /emg/
chown -R appionuser:users /emg/
chmod 777 /home/appionuser/.Xauthority
chown -R appionuser:users /home/appionuser/.Xauthority

#need a command that does not end to keep container alive
tail -f /home/appionuser/.vnc/*:1.log
for i in {00..99}; do sleep 10; echo $i; done
