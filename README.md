# appion-protomo
A Docker-based distribution of the Appion-Protomo *fiducial-less* tilt-series alignment suite.


# Prerequisites

- A modern operating system with 16+ GB of RAM (32+ GB is *highly* recommended).

- Tilt-series stacks and tilt image information (ideally in the form of SerialEM stacks and mdoc files).

## Linux/MacOS &nbsp;&nbsp; *(command line)*

Download and install Docker 1.21 or greater for [Linux](https://docs.docker.com/engine/installation/) or [MacOS](https://store.docker.com/editions/community/docker-ce-desktop-mac).

> Consider using a Docker 'convenience script' to install (search on your OS's Docker installation webpage).

Launch docker according to your Docker engine's instructions, typically ``docker start``.  

## Windows/MacOS &nbsp;&nbsp; *(GUI & command line)*

Download and install Docker Toolbox for [Windows](https://docs.docker.com/toolbox/toolbox_install_windows/) or [MacOS](https://docs.docker.com/toolbox/toolbox_install_mac/). 

Launch Kitematic.

> If on first startup Kitematic displays a red error suggesting that you run using VirtualBox, do so.

<br />

# Installation

## Linux/MacOS &nbsp;&nbsp; *(command line)*

```sh
git clone http://github.com/nysbc/appion-protomo
cd appion-protomo
./run.sh
```

*<details><summary>This performs the following operations (click to expand):</summary><p>*
  
- Downloads the semc/appion-protomo docker image from Docker Hub,
  
- Creates a Docker volume to persist the Mariadb database,

- Mounts `~/appion-protomo/emg/data` on the host side to `/emg/data` inside the running container,

- Mounts the `mariadb-database` Docker volume to `/var/lib/mysql` inside the running container,

- Mounts the `~/appion-protomo` directory to `/local_data` inside the running container,

- Opens ports 80 for web traffic, 3306 for database traffic, and 5901 for VNC'ing into the running container,

- Waits for the mysqld_safe database daemon to launch (for ~10 seconds, but could in rare instances take longer).

</p></details>

## Windows/MacOS &nbsp;&nbsp; *(GUI & command line)*

In the Kitematic search bar type: `semc/appion-protomo`.

Click `Create` on the `semc` `appion-protomo` repository and wait for the container to download and start.

**_<details><summary>Click for image</summary><p>_**

![](https://i.imgur.com/D6P0c3J.png)

------
</p></details>

*<details><summary>In Windows, you may need to tweak your settings (click to expand)</summary><p>*

If you needed to run Docker using VirtualBox, then you will need to increase the amount of RAM allocated to Docker:

- Stop the Docker container,

- Open VirtualBox,

- Shut down the running virtual machine,

- Edit the Settings for the virtual machine you just shut down,

  - Increase the RAM to 8+ GB,
  
- Re-start the container.

**_<details><summary>Click for images</summary><p>_**

![](https://i.imgur.com/VDa8UNj.png)

![](https://i.imgur.com/JOYbNbG.png)

- **Close Kitematic**

![](https://i.imgur.com/whV3ykr.png)

![](https://i.imgur.com/xmz1vhX.png)

- Increase the allocated RAM for the virtual machine:

![](https://i.imgur.com/KQAnxwZ.png)

- Optional: Increase the CPUs available for the virtual machine:

![](https://i.imgur.com/RnDX9ru.png)

- Start Kitematic:

![](https://i.imgur.com/ZJHwHtO.png)

![](https://i.imgur.com/PUAdAS6.png)

</p></details>

</p></details>

<br />

# Usage

## Launch Docker
Make sure Docker is running. On OSX with Docker Toolbox, launch the "Docker Quickstart Terminal". On CentOS or Ubuntu, do  `sudo systemctl start docker`. On Windows and MacOS, Kitematic launches Docker automatically.

## Linux/MacOS &nbsp;&nbsp; *(command line)*
*<details><summary>Click to expand</summary><p>*

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

```./rmVolume.sh``` # Warning: The volume will be recreated the next time you do ./run.sh, but you will have an empty Appion database!

- To re-build the appion-protomo image from scratch, do:

```./build.sh``` # This will take a while!

- To access the Appion webviewer, navigate to 

```http://192.168.99.100/myamiweb``` # Your IP address will vary depending on your Docker installation.

</p></details>

## Windows/MacOS &nbsp;&nbsp; *(GUI & command line)*

*<details><summary>Click to expand</summary><p>*

- To get to Appion-Protomo in your web browser, in Kitematic click on `Settings` the `Hostname/Ports`. Click on the IP next to Docker Port 80.

- This should open your web browser to the Apache test page. Append `/myamiweb/` to the URL to access Appion.

**_<details><summary>Click for images</summary><p>_**

![](https://i.imgur.com/siObtGj.png)

- This should open up your web browser to the displayed address:

![](https://i.imgur.com/ELap1yX.png)

- Append /myamiweb/ to the address:

![](https://i.imgur.com/T9RMvBX.png)

------

</p></details>

<br />

- To VNC into the container, download and install a VNC viewer like TigerVNC vncviewer:

```https://github.com/TigerVNC/tigervnc/releases```

Use the IP and port found in the running Kitematic container's `Settings >> Hostname/Ports` next to `Docker port 5901` as the VNC address with password `appion-protomo`.

**_<details><summary>Click for images</summary><p>_**

![](https://i.imgur.com/LnEVAtr.png)

- Type this `ip:port` into your VNC viewer (password: `appion-protomo`):

![](https://i.imgur.com/zFiviSL.png)

- The VNC viewer to should open:

![](https://i.imgur.com/8BrWwzV.png)

- This allows you to run commands and use the manual tilt-series aligner.

</p></details>


</p></details>

<br />

# Example

*Click to expand:*
<details><summary>Upload first SerialEM tilt-series to a new session</summary><p>

Make sure your container is running via the ```./run.sh``` script.

- From inside the appion-protomo directory (on the host machine, not inside the container), do the following:


```wget http://<TILTSERIESDOWNLOADLINKHERE>
Download the following hemagglutinin SerialEM tilt-series:

https://drive.google.com/open?id=1remm05G-R7w_6GLjW1R_jmV6Qzg0fcMx

tar -zxvf HAslow1.tar.gz <your appion-protomo/emg/data/tiltseries/ directory>

./exec.sh

> Now we are inside the container
```

**_<details><summary>For Windows you need to copy tilt-series to the container because there are no mounted drives. Click for image instructions</summary><p>_**

- Click on `DOCKER CLI` on the bottom-left of Kitematic:

![](https://i.imgur.com/0INNdwr.png)

- Nativate to the directory containing your tilt-series, use `docker ps` to get your container id, and use `docker cp` to copy the directory's contents to the container:

![](https://i.imgur.com/HJiJZ2q.png)

- Now your tilt-series should be in /home/appionuser/ in your container:

![](https://i.imgur.com/jsxV7oX.png)

</p></details>

<br />

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

Enter the microscope's Cs value (2.0 mm for the provided hemagglutinin tilt-series)

Enter the `SerialEM stack path`

Enter the `SerialEM mdoc path`

Enter the `voltage` (200 kV for the provided hemagglutinin tilt-series)

Select `Just show command` at the bottom of the page.


- On the next page, copy the entire uploadSerialEM.py command

Next, either execute

`./exec.sh` OR

VNC to `vnc://192.168.99.100:5901` (replace with your VNC ip:port) with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

- Wait for uploadSerialEM.py  to finish processing

**_<details><summary>Click for images</summary><p>_**

![](https://i.imgur.com/j2An6CN.png)

![](https://i.imgur.com/fDLwJMk.png)

![](https://i.imgur.com/hjHAxK3.png)

![](https://i.imgur.com/vfM77Mt.png)

![](https://i.imgur.com/X3kI7bI.png)

![](https://i.imgur.com/miGiYCp.png)

![](https://i.imgur.com/ACrVR9f.png)

![](https://i.imgur.com/OxecMGG.png)

![](https://i.imgur.com/9Kj8ZZW.png)

![](https://i.imgur.com/Q3d6YYM.png)

- The tilt-series has been uploaded. Now let's go see it:

![](https://i.imgur.com/qwEdlMZ.png)

![](https://i.imgur.com/GqnXYWw.png)

- All information from the SerialEM mdoc file has been imported - order of collection (for dose compensation), magnification, defocus, pixelsize, dose, and tilt angles. Tilt images are listed in chronological order from bottom to top.

</p></details>

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


**_<details><summary>Click for images</summary><p>_**

![](https://i.imgur.com/gSmwREH.png)

![](https://i.imgur.com/Sgcjz0i.png)

![](https://i.imgur.com/5QLB6rj.png)

![](https://i.imgur.com/FjIySju.png)

![](https://i.imgur.com/1owXNNI.png)

![](https://i.imgur.com/9TjhVD3.png)

</p></details>

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

  - If there are any tilt images that are grossly shifted relative to the others then proceed to the next section `Manually fix tilt-series if necessary`. If not, proceed onto `Refine tilt-series`.
  
  - If there are any tilt images that contain objects that significantly occlude objects of interest, take note of their tilt angles.

**_<details><summary>Click for images</summary><p>_**

![](https://i.imgur.com/tGbx3dr.png)

![](https://i.imgur.com/KkPaeo1.png)

![](https://i.imgur.com/JX3h0v8.png)

![](https://i.imgur.com/u8xN1Rl.png)

![](https://i.imgur.com/qJmRvxh.png)

![](https://i.imgur.com/hwIecOv.png)

![](https://i.imgur.com/dO6Q15F.png)

![](https://i.imgur.com/Hlo8Q8X.png)

![](https://i.imgur.com/vYGI6rg.png)

![](https://i.imgur.com/t8WBDDV.png)

![](https://i.imgur.com/N1c7w5L.png)

![](https://i.imgur.com/YkEmuM2.png)

![](https://i.imgur.com/sSffNLy.png)

</p></details>

</p></details>

<details><summary>Manually fix tilt-series if necessary</summary><p>

- If there are any tilt images that are grossly shifted relative to the others then continue through this section.

Copy the command at the bottom of the Protomo Coarse Alignment webpage beginning with `/usr/bin/python`.

- VNC into your Docker container.

Paste the command into a terminal in the container.

Follow the **bolded instructions** that first appear after running the manual alignment command.

</p></details>

<details><summary>Refine tilt-series</summary><p>

- On the Protomo Coarse Alignment Summary webpage click on `[Click here to continue onto Refinement if the Coarse Alignment results are satisfactory] →`.

- On the next page, `Basic` or `Advanced` `Settings Verbosity`.

For most tilt-series, select `10 nm object(s) - Steep lowpass` as the `Object Size` in `Parameter Presets`.

Select the largest `Search Area` that is in common between all tilt-images in the previously-viewed tilt-series in `Parameter Presets`.

- If there are any tilt images that need to be removed, input their tilt angles in the `General Parameters`, either as an `Angle Limit` or under `Exclude Images by Tilt Angles`.

- If the tilt-series was manually aligned, choose `More Manual` for `Begin with Coarse Alignment Results or Initial Alignment?` in the `General Parameters`.

- Under `Window Parameters`, input comma-separated values for the estimated `Thickness(es)`, where the thickness corresponds to the thickness of the objects to be aligned to or their combined thickness.


Select `Just show command` at the bottom of the page.


- On the next page, copy the entire protomo2multirefine.py or protomo2aligner.py command and run it in the Docker container.

On the left under `Align Tilt-Series` click `## runs processing or finished` to access the main alignment summary webpage.

- On the Protomo Alignment Summary webpage you can watch as each tilt-series aligns.

> Note: The tilt-azimuth for each microscope relative to Appion-Protomo convention needs to be determined experimentally. Protomo will often refine the tilt azimuth properly after 10-50 iterations. Once this value is known, it should be inputted into all future tilt-series alignments for that microscope in the General Parameters.

> Note: The alignment thickness cannot be determined prior to tilt-series alignment. If a tilt-series alignment did not align as well as you wish, try re-aligning with additional alignment thickness values.


</p></details>

<details><summary>Reconstruct tilt-series</summary><p>

> Note: Prior to proceeding to reconstruction, always check the best iteration(s) of the tilt-series you wish to reconstruct on the Protomo Alignment Summary. In particular, view the aligned tilt-series video to confirm that there are no visual issues.

From the Protomo Alignment Summary webpage, copy the `runname` of the tilt-series you wish to reconstruct, and take note of the desired reconstruction iteration.

- Click on `Align Tilt-Series` on the left. Click on `Protomo 2.4.1`. Select the tilt-series number from the box you wish to reconstruct.

Paste the `runname` in place of the generated `Run name`.

Select `Just show command` at the bottom of the page.

- On the next page click `[or Click here to Go Directly to the Reconstruction Page] →`.

- On the next page, the options and parameters you choose will depend entirely on the desired post-processing of your tilt-series or tomogram.

- For visualization and particle picking, it is recommended that you dose compensate your tilt images before reconstruction if they have not yet been dose compensated and that you reconstruct using Tomo3D SIRT.

Select the correct alignment iteration from which to reconstruct.

Input an appropriate reconstruction thickness.

Exclude any bad tilt images in the alignment.


Select `Just show command` at the bottom of the page.


- On the next page, copy the entire protomo2reconstruction.py command and run it in the Docker container.

</p></details>


# References

Noble, A. J., & Stagg, S. M. (2015). Automated batch fiducial-less tilt-series alignment in Appion using Protomo. Journal of Structural Biology, 192(2), 270–278. https://doi.org/10.1016/j.jsb.2015.10.003

Noble, A. J., Dandey, V. P., Wei, H., Brasch, J., Chase, J., Acharya, P., Tan Y. Z., Zhang Z., Kim L. Y., Scapin G., Rapp M., Eng E. T., Rice M. J., Cheng A., Negro C. J., Shapiro L., Kwong P. D., Jeruzalmi D., des Georges A., Potter C. S., Carragher, B. (2017). Routine Single Particle CryoEM Sample and Grid Characterization by Tomography. https://doi.org/10.1101/230276

Winkler, H., & Taylor, K. A. (2006). Accurate marker-free alignment with simultaneous geometry determination and reconstruction of tilt series in electron tomography. Ultramicroscopy, 106(3), 240–254. https://doi.org/10.1016/j.ultramic.2005.07.007

Lander, G. C., Stagg, S. M., Voss, N. R., Cheng, A., Fellmann, D., Pulokas, J., Yoshioka C., Irving C., Mulder A., Lau P.-W., Lyumkis D., Potter C. S., Carragher, B. (2009). Appion: An integrated, database-driven pipeline to facilitate EM image processing. Journal of Structural Biology, 166(1), 95–102. https://doi.org/10.1016/j.jsb.2009.01.002

Appion may be found [here](http://appion.org).

[Protomo](http://www.electrontomography.org/) source code may be found [here](http://emg.nysbc.org/redmine/projects/appion/repository/revisions/a47dfbe7a956f19b72f88de704054e3a50d7a8f4/show/programs/protomo2).

# Authors

<details><summary>Carl J Negro</summary><p>
  
- Docker Appion-Protomo.

&nbsp;&nbsp;&nbsp;[Github](https://github.com/carl9384)<br />
</p></details>
<details><summary>Alex J Noble</summary><p>
  
- Appion-Protomo.

&nbsp;&nbsp;&nbsp;[Twitter](https://twitter.com/alexjamesnoble)<br />
&nbsp;&nbsp;&nbsp;[Youtube](https://www.youtube.com/channel/UCZectHccFZSFQIgpOzakl7A)
</p></details>
<details><summary>Neil R Voss</summary><p>
  
- [Base Docker image](https://hub.docker.com/r/vosslab/appion_centos7/).
</p></details>


# License

Appion and thus Appion-Protomo are open source software packages released under the Apache License, Version 2.0.


# Compatibility

The workflow has been tested in Mac OSX El Capitan 10.11.3, Ubuntu, CentOS 7, and Windows 10.


# Bugs

Please report any bugs problems as a Github issue.
