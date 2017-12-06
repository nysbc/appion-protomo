# appion-protomo
A Docker-based distribution of Appion-Protomo.


# Installation

```
git clone http://github.com/nysbc/appion-protomo
cd appion-protomo
./run.sh
```
This performs the following operations:
- downloads the semc/appion-protomo docker image from Docker Hub
- creates a Docker volume to persist the Mariadb database 
- mounts `~/appion-protomo/emg/data` on the host side to `/emg/data` inside the running container
- mounts the `mariadb-database` Docker volume to `/var/lib/mysql` inside the running container
- mounts the `~/appion-protomo` directory to `/local_data` inside the running container
- opens ports 80 for web traffic, 3306 for database traffic, and 5901 for VNC'ing into the running container
- waits for the mysqld_safe database daemon to launch (for ~10 seconds, but could in rare instances take longer)


# Usage
To ssh into the appion-protomo container, do:

``./exec.sh``

To access the Appion webviewer, navigate to 

```http://192.168.99.100/myamiweb```

Your ip address may vary depending on your Docker distribution.

# Example

Make sure your container is running via the ```./run.sh``` script.
From inside the appion-protomo directory (on the host machine, not inside the container), execute the command:

```wget http://<TILTSERIESDOWNLOADLINKHERE>

tar -zxvf TILTSERIESFILE.tar.gz emg/data/tiltseries

./exec.sh

```

  
