# appion-protomo
A Docker-based distribution of the Appion-Protomo *fiducial-less* tilt-series alignment suite.


# Prerequisites

- A modern operating system with 16+ GB of RAM.

- Tilt-series stacks and tilt image information (ideally in the form of SerialEM stacks and mdoc files).

## Linux/MacOS

Download and install Docker 1.21 or greater from https://docs.docker.com/engine/installation/

Launch docker according to your Docker engine's instructions, typically ``docker start``.  

## Windows

Download and install Docker Toolbox from https://docs.docker.com/toolbox/toolbox_install_windows/

Launch Kitematic.

> If on first startup Kitematic displays a red error suggesting that you run using VirtualBox, do so.

<br />

# Installation

## Linux/MacOS

```sh
git clone http://github.com/nysbc/appion-protomo
cd appion-protomo
./run.sh
```

<details><summary>This performs the following operations (click to expand):</summary><p>
  
- Downloads the semc/appion-protomo docker image from Docker Hub,
  
- Creates a Docker volume to persist the Mariadb database,

- Mounts `~/appion-protomo/emg/data` on the host side to `/emg/data` inside the running container,

- Mounts the `mariadb-database` Docker volume to `/var/lib/mysql` inside the running container,

- Mounts the `~/appion-protomo` directory to `/local_data` inside the running container,

- Opens ports 80 for web traffic, 3306 for database traffic, and 5901 for VNC'ing into the running container,

- Waits for the mysqld_safe database daemon to launch (for ~10 seconds, but could in rare instances take longer).

</p></details>

## Windows

In the Kitematic search bar type: `semc/appion-protomo`.

Click `Create` on the `semc` `appion-protomo` repository and wait for the container to download and start.

<details><summary>Click for image</summary><p>

![Alt text](https://i.imgur.com/D6P0c3J.png)

</p></details>
<br />

<details><summary>You may need to tweak your settings (click to expand)</summary><p>

If you needed to run Docker using VirtualBox, then you will need to increase the amount of RAM allocated to Docker:

- Stop the Docker container,

- Open VirtualBox,

- Shut down the running virtual machine,

- Edit the Settings for the virtual machine you just shut down,

  - Increase the RAM to 8+ GB,
  
- Re-start the container.

</p></details>

<br />

# Usage

## Linux/MacOS
<details><summary>Click to expand</summary><p>

- To launch the application container, do:

```./run.sh```

- To VNC into the container, download and install a VNC viewer like RealVNC:

```https://www.realvnc.com/en/connect/download/viewer/macos/```

Use your IP and TCP port like ``192.168.99.100:5901`` as the VNC address with password `appion-protomo`.

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

</p></details>

## Windows

<details><summary>Click to expand</summary><p>

- To VNC into the container, download and install a VNC viewer like TigerVNC vncviewer:

```https://github.com/TigerVNC/tigervnc/releases```

Use the IP and port found in the running Kitematic container's `Settings >> Hostname/Ports` next to `Docker port 5901` as the VNC address with password `appion-protomo`.

<details><summary>Click for images</summary><p>

![Alt text](https://i.imgur.com/LnEVAtr.png)

![Alt text](https://i.imgur.com/zFiviSL.png)

![Alt text](https://i.imgur.com/8BrWwzV.png)

</p></details>


</p></details>

<br />

# Example

Click to expand:
<details><summary>Upload first SerialEM tilt-series to a new session</summary><p>

Make sure your container is running via the ```./run.sh``` script.

- From inside the appion-protomo directory (on the host machine, not inside the container), do the following:


```wget http://<TILTSERIESDOWNLOADLINKHERE>
Download the following hemagglutinin SerialEM tilt-series:

https://drive.google.com/open?id=1remm05G-R7w_6GLjW1R_jmV6Qzg0fcMx

tar -zxvf HAslow1.tar.gz emg/data/tiltseries

./exec.sh

> Now we are inside the container
```
 
- Navigate to your web portal at an address like 
 
 ```192.168.99.100/myamiweb```

Select `Project DB`

Select `Add a new project`

- Fill in the form for your project and click `add`

Select `View Projects`

Select the link on the name of your newly created project (NOT the pencil-editing icon) 

Select `create processing db` and wait for the page to reload

Select `upload images to new session`


- On the next page click the dropdown for `Images grouped by` and select `SerialEM Tilt Series`

Enter a description for `Session Description`

Enter the `SerialEM stack path`

Enter the `SerialEM mdoc path`

Enter the `voltage`

Select `Just show command` at the bottom of the page.


- On the next page, copy the entire uploadSerialEM.py command

Next, either execute

`./exec.sh` OR

VNC to `vnc://192.168.99.100:5901` with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

- Wait for uploadSerialEM.py  to finish processing

...

</p></details>

<details><summary>Upload additional SerialEM tilt-series to an existing session</summary><p>

Place multiple SerialEM stacks and mdoc files (each pair with the same basename) into `emg/data/tiltseries`

> remove or move the previously-uploaded tilt-series stack and mdoc files

- Navigate to 192.168.99.100/myamiweb

Select `Image Viewer`

Make sure your project is selected in the dropdown (you should now see images in the image viewer panel)

> if you don't see images then you first need to upload one tilt-series to a new session

Click `processing` at the top

- On the next page click `Upload more images` on the left

- On the next page click the dropdown for `Images grouped by` and select `SerialEM Tilt Series`

Enter the `SerialEM directory path`

Enter the `voltage`


Select `Just show command` at the bottom of the page


- On the next page, copy the entire uploadSerialEM.py command

Next, either execute

`./exec.sh` OR

VNC to `vnc://192.168.99.100:5901` with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

- Wait for uploadSerialEM.py  to finish processing

...

</p></details>

<details><summary>Coarse align tilt-series</summary><p>

- Navigate to your session in the image viewer and click `processing`.

- On the next page click `Align Tilt-Series` on the left.

- On the next page click `Protomo 2.4.1`.

- On the next page, Protomo Coarse Alignment, select the tilt-series you wish to align from the box.

  - This will fill in the `Run name` and present a number of parameters below.

> Note: All parameters in the Appion-Protomo tilt-series alignment workflow contain extensive help files that are accessible by simply pointing to the parameter name.

For most samples select `10 nm` as the `Object Size` in `Parameter Presets`.

Choose whether you wish to `Estimate Defocus of the Untilted Plane` or `Dose Compensate` the tilt-series.

> Dose compensation often helps tilt-series alignment unless your sample is particularly thick, as is often the case with FIB-milled specimen.


Select `Just show command` at the bottom of the page.


- On the next page, copy the entire protomo2aligner.py command and run it in the Docker container.

Click `[Click here to View Coarse Alignment Results after protomo2aligner.py --coarse has been run] →`.

- On the next page, Protomo Coarse Alignment Summary, watch the `Tilt-Series After Coarse Alignment` video.

  - If there are any tilt images that are grossly shifted relative to the others then proceed to the next section `Manually fix tilt-series if necessary`. If not, procees onto `Refine tilt-series`.
  
  - If there are any tilt images that contain objects that significantly occlude objects of interest, take note of their tilt angles.


</p></details>

<details><summary>Manually fix tilt-series if necessary</summary><p>

...

</p></details>

<details><summary>Refine tilt-series</summary><p>

...

</p></details>

<details><summary>Reconstruct tilt-series</summary><p>

...

</p></details>


# References

Noble, A. J., & Stagg, S. M. (2015). Automated batch fiducial-less tilt-series alignment in Appion using Protomo. Journal of Structural Biology, 192(2), 270–278. https://doi.org/10.1016/j.jsb.2015.10.003

Noble, A. J., Dandey, V. P., Wei, H., Brasch, J., Chase, J., Acharya, P., … Carragher, B. (2017). Routine Single Particle CryoEM Sample and Grid Characterization by Tomography. https://doi.org/10.1101/230276


# Authors

- Carl J Negro
- Alex J Noble
- Neil R Voss


# License

...


# Compatibility

The workflow has been tested in OSX El Capitan version 10.11.3 and Ubuntu.


# Bugs

Please report any bugs problems as a Github issue.
