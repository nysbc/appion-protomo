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

# Now we are inside the container
cd /emg/data/tiltseries

/emg/sw/myami/appion/bin/protomo2aligner.py \
  --serialem_stack=apotomo4.st --serialem_mdoc=apotomo4.st.mdoc \
  --voltage=200
```
 
 When protomo2aligner is finished, navigate to your web portal at an address like 
 
 ```192.168.99.100/myamiweb```

Select `Project DB`

Select `Add a new project`

Fill in the form for your project and click `add`

Select `View Projects`

Select the link on the name of your newly created project (NOT the pencil-editing icon) 

Select `create processing db`

Select `upload images to new session`


On the next page click the dropdown for `Images grouped by` and select `tiltseries`

Enter a description for `Session Description`

Enter the number of images in each tilt series (this value is shown as `Number of tilt-images: # ` in the protomo2aligner.py output)

Enter the tilt info parameter file path in the field `Tilt info path:` (from the protomo2aligner.py output)

Select `Just show command` at the bottom of the page


On the next page, copy the entire imageloader.py command

Next, either execute

`./exec.sh` OR

VNC to `vnc://192.168.99.100:5901` with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

Wait for imageuploader.py  to finish processing

...

...

When imageuploader.py is finished processing, navigate to 192.168.99.100/myamiweb

Select `Image Viewer`

Make sure your project is selected in the dropdown (you should now see images in the image viewer panel

Click `processing` at the top


...

...

...



