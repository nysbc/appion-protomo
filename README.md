# appion-protomo
A Docker-based distribution of the Appion-Protomo fiducial-less cryoET processing pipeline.


# Prerequisites

## Linux/MacOS

Download and install Docker 1.21 or greater from https://docs.docker.com/engine/installation/

Launch docker according to your Docker engine's instructions, typically ``docker start``.  

## Windows

Download and install Docker Toolbox from https://docs.docker.com/toolbox/toolbox_install_windows/

Launch Kitematic.

# Installation

```
git clone http://github.com/nysbc/appion-protomo
cd appion-protomo
./run.sh
```

<details><summary>This performs the following operations (click to expand):</summary><p>
  
- downloads the semc/appion-protomo docker image from Docker Hub
  
- creates a Docker volume to persist the Mariadb database 

- mounts `~/appion-protomo/emg/data` on the host side to `/emg/data` inside the running container

- mounts the `mariadb-database` Docker volume to `/var/lib/mysql` inside the running container

- mounts the `~/appion-protomo` directory to `/local_data` inside the running container

- opens ports 80 for web traffic, 3306 for database traffic, and 5901 for VNC'ing into the running container

- waits for the mysqld_safe database daemon to launch (for ~10 seconds, but could in rare instances take longer)

</p></details>

# Usage
- To launch the application container, do:

```./run.sh```

- To VNC into the container, download and install a VNC viewer like RealVNC:

```https://www.realvnc.com/en/connect/download/viewer/macos/```

Use your IP and TCP port like ``192.168.99.100:5901`` as the VNC address.

- To ssh into the container, do:

```./exec.sh```

- To kill the container (does not delete the container), do:

```./kill.sh``` # Warning, this will kill any other Docker containers you have running as well, use with caution!

- To remove delete the container, but not the mounted data in /emg/data or the volume at /var/lib/mysql, do:

``` ./rmContainers.sh``` # Warning: This will delete any other inactive containers you may have running as well!

- To delete the mariadb-database volume, do:

```./rmVolumes.sh``` # Warning: The volume will be recreated the next time you do ./run.sh, but you will have an empty Appion database!

- To re-build the appion-protomo image from scratch, do:

```./build.sh``` # This will take a while!

- To access the Appion webviewer, navigate to 

```http://192.168.99.100/myamiweb``` # Your IP address will vary depending on your Docker installation.


# Example
<details><summary>Upload first SerialEM tilt-series to a new session (click to expand)</summary><p>

Make sure your container is running via the ```./run.sh``` script.

From inside the appion-protomo directory (on the host machine, not inside the container), execute the command:


```wget http://<TILTSERIESDOWNLOADLINKHERE>
Download the following hemagglutinin SerialEM tilt-series:

https://drive.google.com/open?id=1remm05G-R7w_6GLjW1R_jmV6Qzg0fcMx

tar -zxvf HAslow1.tar.gz emg/data/tiltseries

./exec.sh

# Now we are inside the container
```
 
Navigate to your web portal at an address like 
 
 ```192.168.99.100/myamiweb```

Select `Project DB`

Select `Add a new project`

Fill in the form for your project and click `add`

Select `View Projects`

Select the link on the name of your newly created project (NOT the pencil-editing icon) 

Select `create processing db`

Select `upload images to new session`


On the next page click the dropdown for `Images grouped by` and select `SerialEM Tilt Series`

Enter a description for `Session Description`

Enter the `SerialEM stack path`

Enter the `SerialEM mdoc path`

Enter the `voltage`

Select `Just show command` at the bottom of the page


On the next page, copy the entire uploadSerialEM.py command

Next, either execute

`./exec.sh` OR

VNC to `vnc://192.168.99.100:5901` with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

Wait for uploadSerialEM.py  to finish processing

...

</p></details>

<details><summary>Upload additional SerialEM tilt-series to an existing session (click to expand)</summary><p>

Place multiple SerialEM stacks and mdoc files (each pair with the same basename) into `emg/data/tiltseries`

> remove or move the previously-uploaded tilt-series stack and mdoc files

Navigate to 192.168.99.100/myamiweb

Select `Image Viewer`

Make sure your project is selected in the dropdown (you should now see images in the image viewer panel)

> if you don't see images then you first need to upload one tilt-series to a new session

Click `processing` at the top

On the next page click `Upload more images` on the left

On the next page click the dropdown for `Images grouped by` and select `SerialEM Tilt Series`

Enter the `SerialEM directory path`

Enter the `voltage`


Select `Just show command` at the bottom of the page


On the next page, copy the entire uploadSerialEM.py command

Next, either execute

`./exec.sh` OR

VNC to `vnc://192.168.99.100:5901` with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

Wait for uploadSerialEM.py  to finish processing

...

</p></details>

# References

Noble, A. J., & Stagg, S. M. (2015). Automated batch fiducial-less tilt-series alignment in Appion using Protomo. Journal of Structural Biology, 192(2), 270–278. https://doi.org/10.1016/j.jsb.2015.10.003

Noble, A. J., Dandey, V. P., Wei, H., Brasch, J., Chase, J., Acharya, P., … Carragher, B. (2017). Routine Single Particle CryoEM Sample and Grid Characterization by Tomography. https://doi.org/10.1101/230276

# Authors

- Carl J Negro
- Alex J Noble

# License

...

# Compatibility

The pipeline has been tested in OSX El Capitan version 10.11.3 and Ubuntu.

# Bugs

Please report any bugs problems as a Github issue.
