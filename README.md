# appion-protomo
A Docker-based distribution of the Appion-Protomo *fiducial-less* tilt-series alignment suite.

**_<details><summary>Click to see how Protomo alignment works ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/3PFyXw6.gif)

</p></details>

# Prerequisites

- A modern operating system (Linux, MacOS, Windows) with 16+ GB of RAM (32+ GB is *highly* recommended).

- Tilt-series stacks and tilt image information (ideally in the form of SerialEM-formatted stacks and mdoc files).

- Basic Unix/Linux knowledge.
> **Note:** Protomo aligns tilt-series based only on the accumulated SNR of the sample — no fiducials or features are used.

**<details><summary>Do you have Docker installed? If not, *click here*</summary><p>**

## Linux/MacOS &nbsp;&nbsp; *(command line)*
*<details><summary>Click to expand</summary><p>*

Download and install Docker 1.21 or greater for [Linux](https://docs.docker.com/engine/installation/) or [MacOS](https://store.docker.com/editions/community/docker-ce-desktop-mac).

> Consider using a Docker 'convenience script' to install (search on your OS's Docker installation webpage).

Launch docker according to your Docker engine's instructions, typically ``docker start``.  

> **Note:** You must have sudo or root access to *install* Docker. If you do not wish to *run* Docker as sudo/root, you need to configure user groups as described here: https://docs.docker.com/install/linux/linux-postinstall/

</p></details>

## Windows &nbsp;&nbsp; *(GUI & command line)*
*<details><summary>Click to expand</summary><p>*

Download and install [Docker Toolbox for Windows](https://docs.docker.com/toolbox/toolbox_install_windows/). 

Launch Kitematic.

> If on first startup Kitematic displays a red error suggesting that you run using VirtualBox, do so.

> **Note:** [Docker Toolbox for MacOS](https://docs.docker.com/toolbox/toolbox_install_mac/) has not yet been tested.

</p></details>

## What is Docker?

[This tutorial explains why Docker is used for Appion-Protomo.](https://www.youtube.com/watch?v=YFl2mCHdv24)

</p></details>

<br />

# Installation

**<details><summary>Do you have Appion-Protomo installed in your Docker? If not, *click here*</summary><p>**

## Linux/MacOS &nbsp;&nbsp; *(command line)*
*<details><summary>Click to expand</summary><p>*

```sh
git clone http://github.com/nysbc/appion-protomo
cd appion-protomo
./run.sh
```

> **Note:** The installation directory will contain the data directory. It is recommended that you reserve at least 10 GB of space for each tilt-series alignment.

*<details><summary>This performs the following operations (click to expand):</summary><p>*
  
- Downloads the [semc/appion-protomo docker image from Docker Hub](https://hub.docker.com/r/semc/appion-protomo/),
  
- Creates a Docker volume to persist the Mariadb database,

- Mounts `~/appion-protomo/emg/data` on the host side to `/emg/data` inside the running container,

- Mounts the `mariadb-database` Docker volume to `/var/lib/mysql` inside the running container,

- Mounts the `~/appion-protomo` directory to `/local_data` inside the running container,

- Opens ports 80 for web traffic, 3306 for database traffic, and 5901 for VNC'ing into the running container,

- Waits for the mysqld_safe database daemon to launch (for ~10 seconds, but could in rare instances take longer).

</p></details>

</p></details>

## Windows &nbsp;&nbsp; *(GUI & command line)*
*<details><summary>Click to expand</summary><p>*

In the Kitematic search bar type: `semc/appion-protomo`.

Click `Create` on the `semc` `appion-protomo` repository and wait for the container to download and start.

**_<details><summary>Click for image ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/D6P0c3J.png)

</p></details>

*<details><summary>In Windows, you may need to tweak your settings (click to expand)</summary><p>*

If you needed to run Docker using VirtualBox, then you will need to increase the amount of RAM allocated to Docker:

- Stop the Docker container,

- Open VirtualBox,

- Shut down the running virtual machine,

- Edit the Settings for the virtual machine you just shut down,

  - Increase the RAM to 8+ GB,
  
- Re-start the container.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

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

</p></details>

</p></details>

<br />

# Usage

**<details><summary>Is this your first time using Appion-Protomo in your Docker? If so, *click here*</summary><p>**

## Launch Docker
Make sure Docker is running:<br />
- On CentOS or Ubuntu, type:  `sudo systemctl start docker`.<br />
- On OSX with Docker Toolbox, launch the 'Docker Quickstart Terminal'.<br />
- On Windows, Kitematic launches Docker automatically.

## Linux/MacOS &nbsp;&nbsp; *(command line)*
*<details><summary>Click to expand</summary><p>*

- If you have not already launched the Appion-Protomo container, do:

```./run.sh```

- You should run Appion-Protomo commands from inside a VNC viewer as appionuser and not as the root user. First, download and install a VNC viewer such as TigerVNC or RealVNC:

https://bintray.com/tigervnc/stable/tigervnc/1.8.0

https://www.realvnc.com/en/connect/download/viewer/macos/

Use your IP and TCP port like ``192.168.99.100:5901`` as the VNC address with password `appion-protomo`.

> You might try `docker-machine ip` to find your IP.

> Here are some more possible IP addresses/names: localhost, 0.0.0.0, 127.0.0.1, 192.168.0.1

- To ssh into the container as root, do:

```./exec.sh```

*<details><summary>Click for additional Docker Appion-Protomo container commands</summary><p>*
  
- To kill the container (this does not delete the container), do:

```./kill.sh``` (Warning, this will kill any other Docker containers you have running as well, use with caution!)

- To remove delete the container, but not the mounted data in /emg/data or the volume at /var/lib/mysql, do:

``` ./rmContainers.sh``` (Warning: This will delete any other inactive containers you may have running as well!)

- To delete the mariadb-database volume, do:

```./rmVolume.sh``` (Warning: This will delete the database and anything you have uploaded in Appion! The volume will be recreated the next time you do ./run.sh, but you will have an empty Appion database!)

- To re-build the appion-protomo image from scratch, do:

```./build.sh``` (This will take a while!)

- To access the Appion webviewer, navigate to:

```http://192.168.99.100``` (Your IP address will vary depending on your Docker installation. Possible addresses: localhost, 0.0.0.0, 127.0.0.1, 192.168.0.1)

</p></details>

</p></details>

## Windows &nbsp;&nbsp; *(GUI & command line)*

*<details><summary>Click to expand</summary><p>*

- To get to Appion-Protomo in your web browser, in Kitematic click on `Settings` the `Hostname/Ports`. Click on the IP next to Docker Port 80.

- This should open your web browser to the Apache test page. Append `/myamiweb/` to the URL to access Appion.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/siObtGj.png)

- This should open up your web browser to the displayed address:

![](https://i.imgur.com/ELap1yX.png)

- Append `/myamiweb/` to the address:

![](https://i.imgur.com/T9RMvBX.png)

</p></details>

<br />

- To VNC into the container, download and install a VNC viewer such as TigerVNC or RealVNC:

https://bintray.com/tigervnc/stable/tigervnc/1.8.0

https://www.realvnc.com/en/connect/download/viewer/windows/

Use the IP and port found in the running Kitematic container's `Settings >> Hostname/Ports` next to `Docker port 5901` as the VNC address with password `appion-protomo`.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/LnEVAtr.png)

- Type this `ip:port` into your VNC viewer (password: `appion-protomo`):

![](https://i.imgur.com/zFiviSL.png)

- The VNC viewer should open:

![](https://i.imgur.com/8BrWwzV.png)

- This allows you to run commands and use the manual tilt-series aligner.

</p></details>


</p></details>

</p></details>

<br />

# Example #1
**Start here!**<br>*Single particle tilt-series from [EMPIAR-10129](https://www.ebi.ac.uk/pdbe/emdb/empiar/entry/10129/))*

*Click to expand:*

<details><summary>Appion-Protomo tilt-series alignment overview</summary><p>

1) Upload tilt-series,
2) Coarse align tilt-series,
<br>2b. Manually fix poorly aligned tilt images, if necessary,
3) Refine tilt-series,
<br>3b. Assess refinement,
4) Reconstruct tilt-series.

</p></details>

<details><summary>Expected results after following this example tutorial</summary><p>

- **Initial tilt-series before any alignment:**

<p float="left">
  <img src="https://i.imgur.com/NCPEQhS.gif" width="320">
</p>

- **Tilt-series (*left*) and reconstruction (*right*) after coarse alignment:**

<p float="left">
  <img src="https://i.imgur.com/n0bmnfM.gif" height="418">
  <img src="https://i.imgur.com/TEp1TkG.gif">
</p>

- **Tilt-series (*left*) and reconstruction (*right*) after Appion-Protomo refinement:**

<p float="left">
  <img src="https://i.imgur.com/wKHNNO7.gif" height="393">
  <img src="https://i.imgur.com/SMHTuAR.gif">
</p>

</p></details>

<br />

<details> <img src="https://i.imgur.com/zTH6CAe.png"> <summary>Upload first SerialEM-formatted tilt-series to a new session</summary><p>

Make sure your container is running via the ```./run.sh``` script.

- From inside the appion-protomo directory (on the host machine, not inside the container), do the following:


```wget http://<TILTSERIESDOWNLOADLINKHERE>
Download the following hemagglutinin SerialEM tilt-series (collected on an F20 with a DE-20; from [EMPIAR-10129]):

https://drive.google.com/open?id=1remm05G-R7w_6GLjW1R_jmV6Qzg0fcMx

tar -zxvf HAslow1.tar.gz <your appion-protomo/emg/data/tiltseries/ directory>

./exec.sh

> Now we are inside the container
```

**_<details><summary>For Windows you need to copy tilt-series to the container because there are no mounted drives. Click for image instructions ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

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

Select `Just Show Command` at the bottom of the page.


- On the next page, copy the entire uploadSerialEM.py command

Next, VNC to `vnc://192.168.99.100:5901` (replace with your VNC ip:port) with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

- Wait for uploadSerialEM.py to finish processing.

**Note:** If `uploadSerialEM.py` gives an error regarding binning, then edit the  file and change line 79 to: binning = 1 . This bug will be fixed in the next version.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

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

<details><summary><img src="https://i.imgur.com/6jNFewI.png"> Upload additional SerialEM-formatted tilt-series to an existing session</summary><p>

Place multiple SerialEM stacks and mdoc files (each pair with the same basename) into `emg/data/tiltseries`

> Remove or move the previously-uploaded tilt-series stack and mdoc files.

- Navigate to 192.168.99.100/myamiweb

Select `Image Viewer`

Make sure your project is selected in the dropdown (you should now see images in the image viewer panel)

> If you don't see images then you first need to upload one tilt-series to a new session.

Click `processing` at the top

- On the next page click `Upload more images` on the left

- On the next page click the dropdown for `Images grouped by` and select `SerialEM Tilt Series`

Enter the `SerialEM directory path`

Enter the `voltage`


Select `Just Show Command` at the bottom of the page


- On the next page, copy the entire uploadSerialEM.py command

Next, VNC to `vnc://192.168.99.100:5901` with password `appion-protomo`

Paste the command to a terminal prompt and hit enter

- Wait for uploadSerialEM.py  to finish processing.


**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

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

> **Note:** All parameters in the Appion-Protomo tilt-series alignment workflow contain extensive help files that are accessible by simply pointing at the parameter name.

For most samples select `10 nm` as the `Object Size` in `Parameter Presets`.

Choose whether you wish to `Estimate Defocus of the Untilted Plane` or `Dose Compensate` the tilt-series.

> Dose compensation often helps tilt-series alignment unless your sample is particularly thick, as is often the case with FIB-milled specimen.


Select `Just Show Command` at the bottom of the page.


- On the next page, copy the entire protomo2aligner.py command and run it in the Docker container.

Click `[Click here to View Coarse Alignment Results after protomo2aligner.py --coarse has been run] →`.

- On the next page, Protomo Coarse Alignment Summary, watch the `Tilt-Series After Coarse Alignment` video.

  - If there are any tilt images that are grossly shifted relative to the others then proceed to the next section `Manually fix tilt-series if necessary`. If not, proceed onto `Refine tilt-series`.
  
  - If there are any tilt images that contain objects that significantly occlude objects of interest, take note of their tilt angles.

> **Note:** The objects in the tilt-series that move the least image-to-image will have a higher chance of being closest to the center of the tomogram after refinement. See the **_Critical Note_** in the upcoming 'Refine tilt-series' section.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/tGbx3dr.png)

![](https://i.imgur.com/KkPaeo1.png)

![](https://i.imgur.com/Paa8qnG.png)

![](https://i.imgur.com/u8xN1Rl.png)

![](https://i.imgur.com/qJmRvxh.png)

![](https://i.imgur.com/hwIecOv.png)

![](https://i.imgur.com/dO6Q15F.png)

![](https://i.imgur.com/Hlo8Q8X.png)

![](https://i.imgur.com/vYGI6rg.png)

![](https://i.imgur.com/t8WBDDV.png)

![](https://i.imgur.com/N1c7w5L.png)

![](https://i.imgur.com/ybvlB72.png)

![](https://i.imgur.com/YkEmuM2.png)

![](https://i.imgur.com/sSffNLy.png)

![](https://i.imgur.com/N0RICUS.png)

- Watch the tilt-series video to estimate the tilt azimuth (vertical is ±90°, horizontal is 0° or 180°)

- This tilt-series has a tilt azimuth of approximately ±90°:

<p align="center"> 
<img src="https://i.imgur.com/kwF8kbA.gif">
</p>

![](https://i.imgur.com/QwMceHg.png)

![](https://i.imgur.com/UdPITmc.png)

![](https://i.imgur.com/BO4TBHm.png)

</p></details>

</p></details>

<details><summary>Manually fix tilt-series if necessary</summary><p>

- If there are any tilt images that are grossly shifted relative to the others then continue through this section.

Copy the command at the bottom of the Protomo Coarse Alignment webpage beginning with `/usr/bin/python`.

- VNC into your Docker container.

Paste the command into a terminal in the container.

Follow the **bolded instructions** that first appear after running the manual alignment command.

Practically, find an object that you think might be near the middle of the ice and align each image such that this object does not move on the screen.

> **Note:** The objects in the tilt-series that move the least image-to-image will have a higher chance of being closest to the center of the tomogram after refinement. See the **_Critical Note_** in the upcoming 'Refine tilt-series' section.

</p></details>

<details><summary>Refine tilt-series</summary><p>

- On the Protomo Coarse Alignment Summary webpage click on `[Click here to continue onto Refinement if the Coarse Alignment results are satisfactory] →`.

- On the next page, select `Basic` or `Advanced` `Settings Verbosity`.

For most tilt-series, select `10 nm object(s) - Steep lowpass` as the `Object Size` in `Parameter Presets`.

Select the largest `Search Area` that is in common between all tilt-images in the previously-viewed tilt-series in `Parameter Presets`.

- If there are any tilt images that need to be removed, input their tilt angles in the `General Parameters`, as an `Angle Limit` and/or using `Exclude Images by Tilt Angles`.

- If the tilt-series was manually aligned, choose `More Manual` for `Begin with Coarse Alignment Results or Initial Alignment?` in the `General Parameters`.

- Under `Window Parameters`, input comma-separated values for the estimated `Thickness(es)`, where the thickness corresponds to the thickness of the objects to be aligned to or their combined thickness.


Select `Just Show Command` at the bottom of the page.


- On the next page, copy the entire protomo2multirefine.py or protomo2aligner.py command and run it in the Docker container.

On the left under `Align Tilt-Series` click `## runs processing or finished` to access the main alignment summary webpage.

- On the Protomo Alignment Summary webpage you can watch as each tilt-series aligns.

> **Note:** The tilt-azimuth for each microscope relative to Appion-Protomo convention needs to be determined experimentally. Protomo will often refine the tilt azimuth properly after 10-50 iterations. Once this value is known, it should be inputted into all future tilt-series alignments for that microscope in the General Parameters during Coarse Alignment.

> **Note:** The alignment thickness cannot be determined prior to tilt-series alignment. If a tilt-series alignment did not align as well as you wish, try re-aligning with additional alignment thickness values.

> **_Critical Note:_** The objects in the search area (technically, search *volume* defines by the [search area] x [thickness]) in a Protomo reconstruction video are the objects that are being used for tilt-series refinement. The highest SNR objects are typically driven towards the middle of the reconstruction/search volume in the z-direction during iterative alignment. If the alignment thickness is not chosen appropriately, this can cause the following issues:
> - If the sample consists of single particles in 200 nm thick ice, for instance, where the particles are on both air-water interfaces, then an alignment thickness less than ~200 nm will likely align to only one of the layers of particles whereas an alignment thickness greater than ~200 nm will likely align to both layers of particles. In this scenario, if the particle is ~10 nm in extent, then two completely different alignment thicknesses might be found to be ideal: ~10 nm and ~200 nm. However, if the alignment using the ~10 nm alignment thickness is reconstructed, the layer of particles that was aligned to will be well resolved while the layer of particles that was not aligned to will be less well resolved. If the alignment using the ~200 nm alignment thickness is reconstructed, both layers of particles will be well resolved. Thus the ~200 nm alignment should be used and the ~10 nm alignment should probably be discarded even though they both report that they are well aligned.
> - If the sample consists of a roughly uniformly dense set of objects, such as a FIB-milled cellular lamella or reconstituted proteins on liposomes, then alignment thicknesses up to and including the thickness of the entire sample slab in the search area might align well, however the alignment closest to the thickness of the sample slab will likely align most accurately.
> - Alignment thicknesses chosen to be significantly larger than the sample thickness will likely align worse than alignment thicknesses that are roughly the same as the sample thickness.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/hyJq6x1.png)

![](https://i.imgur.com/vzd1Kw8.png)

![](https://i.imgur.com/Nn3echA.png)

![](https://i.imgur.com/hOKeulX.png)

![](https://i.imgur.com/zYD4po0.png)

![](https://i.imgur.com/jymIaoC.png)

![](https://i.imgur.com/W4UUxNL.png)

![](https://i.imgur.com/bT21cWe.png)

![](https://i.imgur.com/nMdUXnq.jpg)

![](https://i.imgur.com/h5fz2g6.png)

![](https://i.imgur.com/4wWvNG1.png)

![](https://i.imgur.com/YZq420k.png)

- From the Protomo Alignment Summary webpage you can easily assess the alignment quality of all of your tilt-series run with multiple different alignment thicknesses. You can easily navigate to the best iteration, defocus refinement, and the alignment summary webpage.

</p></details>

</p></details>

<details><summary>Assess refinement</summary><p>

A tilt-series refinement should be assessed in the following ways:

1. (if possible) Watch the tilt-series video to see if the alignment is potentially good. Are any images clearly shifted or rotated improperly?
   - If so, then use the command at the bottom of the refinement iteration webpage to manually fix the bad tilt images and/or remove the bad tilt images. You will likely want to further refine the tilt-series before continuing.
2. Watch the tilt-series correlation peak video at the top of the refinement iteration webpage - the small square video. All but one frame (usually the middle frame) should be black. The other frames should have a clear correlation peak in the center of the box.
   - If there are more than one black frames, then this means that the search area had to shrink during the refinement, which is often caused by a tilt image shifting too far. This might or might not be an issue. Note that this makes the tilt-series quality rating unreliable.
   - If the correlation peaks are not clear, then there might not be enough signal in the search volume to align the tilt-series.
3. A black box appears partway through the reconstruction video. This box is the search volume that was used during refinement. The alignment thickness should be chosen such that the signal-to-noise in the black box is maximized. If the box includes substantial 'empty' volume (e.g. vitreous ice or vacuum), then the alignment thickness might be too large. Converselly, if not all of the signal-producing objects are in the search volume, then the alignment thickness might be too small.
4. (if possible) Pause the reconstruction video at the bottom of the refinement iteration webpage at or near the middle. If there is an object visible near the middle of the reconstruction video, then find the object in the tilt-series video, point at that object with your finger or mouse cursor, and let the tilt-series video play through. That object should not move throughout the tilt-series video; ie. the object at the middle of a tilt-series reconstruction should not move in the tilt-series that it was reconstructed from.
   - If the object does move, then manually align the tilt-series to re-position the bad tilt images so that the object at the middle of the reconstruction doesn't move.
   - If there are no objects near the middle of the reconstruction, then you might choose an object away from the center of the reconstruction and follow it through the tilt-series video. That object should move at a continuous rate across the screen. If that object accelerates or decelerates, then the bad tilt images probably need to be re-positioned so that the object moves at a continuous rate.
5. If the tilt-series satisfies assessments 1-4 above, then look at the Correction Factor Plots on the refinement iteration webpage. An impossibly perfect alignment will have all correction factors for all tilt images equal to zero. This isn't possible, largely due to ice deformations, beam-induced motion, beam damage, and low SNR. For a real tilt-series, each tilt image will have a correction factor in x, y, and scaling below |1%| and a correction factor in rotation below |1°|. If there are any clear outliers, particularly at high tilt angles, consider removing those images before reconstruction.

> **Note:** If the tilt-series satisfies assessments 1-4 above, then the alignment quality rating - Bad, Okay, Good, Very Good, Excellent, Perfection!, and Suspiciously Perfect... - should be reliable.

Secondary refinement assessments include:

1. The tilt azimuth should be within ~0.5 degrees of the known tilt azimuth for the given microscope + goniometer combination.
2. The geometry model - ie. the plot of phi, psi, and theta - should be stable before/after the iteration being analyzed.
3. Ideally, the search volume should not be too small or too rectangular. Sometimes one highly shifted tilt image severely reduces the search area and might better be excluded from the refinement so that a larger search area can be used.
4. You might not want the search volume to include grid substrate. Substrate will likely move differently than biological objects when exposed to the electron beam, unless the objects are securely attached to the substrate. The goal of Protomo alignment is to align to the biological objects - any motion during the tilt-series exposure of the objects in the search volume will limit the alignment quality. Carbon substrate in particular has very high signal and will drive the alignment.

</p></details>

<details><summary>Reconstruct tilt-series</summary><p>

> **Note:** Before proceeding to reconstruction, always check the best iteration(s) of the tilt-series you wish to reconstruct on the Protomo Alignment Summary. At the very least, *view the aligned tilt-series video to confirm that there are no visual issues.*

From the Protomo Alignment Summary webpage, copy the `runname` of the tilt-series you wish to reconstruct, and take note of the desired reconstruction iteration.

- Click on `Align Tilt-Series` on the left. Click on `Protomo 2.4.1`. Select the tilt-series number you wish to reconstruct from the box.

Paste the `runname` in place of the generated `Run name`.

Select `Just Show Command` at the bottom of the page.

- On the next page click `[or Click here to Go Directly to the Reconstruction Page] →`.

- On the next page, the options and parameters you choose will depend entirely on the desired post-processing of your tilt-series or tomogram.

- For visualization and particle picking, it is recommended that you dose compensate your tilt images before reconstruction if they have not yet been dose compensated and that you reconstruct using Tomo3D SIRT.

- For sub-volume alignment, it is recommended that WBP be used (either Protomo WBP or Tomo3D WBP).

- You may also export an aligned tilt-series stack. If you wish to export a non-dose compensated stack, choose `Dose Compensate > Reconstruct` under `Reconstruction Actions`, then change `Dose Compensation Type` accordingly. If you choose a `Dose Compensation Type` other than `None`, then the stack will not be dose compensated, instead a dose compensation script will be outputted so that you may process the aligned tilt-series stack further and dose compensate at a later time. This can be useful for CTF estimation and correction outside of Appion-Protomo.

Select the correct alignment iteration from which to reconstruct.

Input an appropriate reconstruction thickness.

Exclude any bad tilt images in the alignment.


Select `Just Show Command` at the bottom of the page.


- On the next page, copy the entire protomo2reconstruction.py command and run it in the Docker container.

> **Note:** The objects in the middle of the resulting tomogram were the objects in the middle of the search volume during tilt-series refinement.

> **Note:** Protomo reconstruction will orient the tomogram in accordance with the refined tilt geometry while Tomo3D reconstruction will not. Thus if you pick particles in a Tomo3D SIRT reconstruction and wish to perform subvolume processing with WBP, you should choose reconstruct with Tomo3D WBP.

> **Note:** If Tomo3D WBP is being used for sub-volume processing, consider using the additional Tomo3D option `-m 0.5`. This will remove the default application of a Hamming filter intended for cutting off high frequency noise. Hamming filters applied during reconstruction might cause anomalous high frequency correlation during subvolume alignment.

</p></details>

<br />

<details><summary>Additional features</summary><p>

<details><summary>Batch alignment</summary><p>

Since it is often difficult to determine the sample thickness *a priori*, **batch refinement** is **rarely recommended**, and is thus left to the user to test on their own.

However, **batch coarse alignment** is **very useful** for being able to quickly visualize and assess large datasets and batch defocus estimation is also useful.

To use batch alignment, first click `Align Tilt-Series` and select any tilt-series from the list - this will load metadata into the browser. Then click on `Batch Align Tilt-Series`.

</p></details>

<details><summary>Restarting a refinement</summary><p>

If you would like to refine a tilt-series that has already been refined, navigate to `Align Tilt-Series` on the left. Click on `Protomo 2.4.1`. Select the tilt-series number you wish to refine from the box. Change the Run name if you wish. Click on `Just Show Command`, Click on `View Coarse Alignment Results`. Click on the link to continue onto Refinement.

Choose `Advanced` Settings Verbosity. Under `General Parameters`, input the run name of the tilt-series and the iteration you wish to restart from. If you manually aligned the previously-refined tilt-series (to fix grossly misaligned images, for instance), then change the Starting Alignment under `Parameter Presets` to Manual AND under `General Parameters` in the restart iteration box, type in 'Manual'. If you do not want to re-refine beginning with binned by 8 alignment iterations, then click the `<- Shift Rounds Left` link at the top of `General Parameters`.

</p></details>

<details><summary>Defocus refinement</summary><p>

Defocus estimation in Appion-Protomo is performed using [TomoCTF](https://sites.google.com/site/3demimageprocessing/tomoctf), which measures the defocus of the untilted plane by tiling all tilt images together while taking into account the relative heights of each tile in order to use all of the signal in the tilt-series. This method of defocus estimation assumes that each tilt image's center was recorded with the sample at the same z-height in the microscope. This requires perfect tracking during collection, which is rarely achieved. As a result, Thon rings often become incoherent before they fade away towards Nyquist.

After tiling, TomoCTF searches monotonically from just below the lower defocus range requested to the top of the range. Often, the search finds the defocus that is one zero off from the correct defocus and so needs to be refined using a proper search range. During refinement, also consider adjusting the maximum reslution used for defocus searching - look at the upper-half of the previous defocus estimations (ie. the SNR of the untilted plane) to determine whether to increase or decrease the maximum reslution used for defocus searching.

- From the Protomo Alignment Summary webpage, click on `Refine defocus`.

- On the next page, select the correct tilt-series number, change the defocus range appropriately, and edit other parameters appropriately.

Select `Just Show Command` at the bottom of the page.

- On the next page, copy the entire protomo2reconstruction.py command and run it in the Docker container.

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/BFBjnuF.png)

![](https://i.imgur.com/SyLn16x.png)

![](https://i.imgur.com/IDBffjq.png)

![](https://i.imgur.com/mnKH45a.png)

![](https://i.imgur.com/MqsLC4s.png)

</p></details>

</p></details>

</p></details>

<details><summary>In-depth explanations & discussions</summary><p>

<details><summary>Protomo refinement basics</summary><p>

Protomo refinement is described with some mathematical clarity in the Protomo user's guide found on the original [Protomo website](http://www.electrontomography.org/).

Conceptually, Protomo alignment combines common lines and iterative preliminary weighted back-projection > reprojection correlation methods along with a robust geometry model of the entire stage and sample in order to effectively maximize SNR/contrast in the weighted back-projection, which might be equivalent to aligning the tilt-series if alignment parameters are chosen appropriately. As a result, tilt-series alignment with Protomo does not require fiducials or features, only SNR.

Appion-Protomo refinement on a coarsely aligned tilt-series generally proceeds as follows:

1. Pre-process all tilt images with lowpass and highpass filters, a median or gaussian filter, gradient subtraction, pixel intensity thresholds, masks, and mask lowpass and highpass apodization filters. All images are then binned during the first several Rounds of refinement.

2. A reference image is chosen (usually the tilt image closest to 0°). This image will not be moved during each refinement iteration.

3. The two images on either side of the reference image are aligned to the reference image by correlation inside of a given search area.

4. These three aligned tilt images are weighted back-projected into a preliminary 3D reconstruction.

5. A volume is selected from the preliminary 3D reconstruction and is then re-projected in the direction of the next highest tilt angle and the corresponding tilt image is then aligned (rotation, translation, and/or isotropic scaling) to this reprojection inside of a given search area.

   - Alignment by correlation allows for sub-pixel accuracy. The alignment algorithm also allows for an estimation of the alignment error in rotation, translation, and/or scaling because it is calculated by matrix diagnolization, which numerically results in left over non-zero off-diagonal terms.

6. These four aligned tilt images are weighted back-projected into a preliminary 3D reconstruction, and step 5 proceeds with the next highest tilt image on the opposite side of the last-aligned tilt image (ie. alternating alignment between positive and negative tilt angles).

This process (steps 4 through 6) continues until all tilt images have been aligned.

7. After all tilt images are aligned, Protomo re-estimates the entire tilt model geometry (tilt azimuth, tilt elevation, and/or sample orientation in the ice).

8. Steps 1 through 7 are repeated over dozens of iterations with less and less binning and filtering.

Tilt-series alignment quality is then assessed semi-automatically by plotting the iterations versus the errors in alignment (see 5. indent), and should be additionally assessed by the user by checking tilt model geometry stability, that the alignment thickness has been chosen appropriately, and by simply watching the aligned tilt-series and reconstruction videos.

**_<details><summary>Click for Protomo alignment schematics ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

<p align="center"> 
<img src="https://i.imgur.com/3PFyXw6.gif">
</p>

![](https://i.imgur.com/gtTBrD9.png)

</p></details>

</p></details>

<details><summary>Protomo refinement metrics</summary><p>

As described in the Protomo refinement basics section above, Protomo estimates the accuracy with which it could align each tilt image rotationally, translationally, and/or with scaling. These errors, called correction factors, are expressed as a percentage of image length for translation and scaling, and in degrees for rotation. Correction factors are a measure of uncorrectable tilt image alignment error given the geometry model and the amount of uncorrectable drift, beam-induced motion, doming, and charging of the specimen during collection.

When you click on a refinement iteration summary, you will see four correction factor plots that show the estimated alignment error for each tilt image in the x-direction, y-direction, rotationally, and/or in scaling. The goal is to select the iteration (given sufficiently accurate alignment parameters - binning, lowpass, alignment thickness, etc.) with the least amount of errors. A good rule of thumb is that all tilt images should have correction factors below 1% (and 1° for rotation) before considering reconstruction and post-processing.

Each correction factor plot, except for rotation, additionally has plotted the mean correction factor (solid line) plus/minus one standard deviation (dotted lines). Green lines are good, red lines are bad.

**_<details><summary>Click for image ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/dnPfPXw.png)

</p></details>
<br />

To simplify the assessment of these correction factors, a combined metric (CCMS plot) is plotted on the main refinement summary webpages:

- The dotted orange line records the average + 1 standard deviation of the x correction factor and y correction factor, summed.
- The x'd orange line records the average + 1 standard deviation of the scaling correction factor.
- The blue line records the average + 1 standard deviation of the rotation correction factor.
- The black line is a scaled sum of the above three lines.

The goal then becomes to minimize the black line.

**_<details><summary>Click for image ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/YjuEzSP.png)

</p></details>
<br />

To simplify this process further, the main Protomo Alignment Summary webpage locates the lowest points on the black line and grades the alignment quality depending on how low the line is at that iteration: Bad, Okay, Good, Very Good, Excellent, Perfection!, and Suspiciously Perfect...

**_<details><summary>Click for image ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/7t89LBZ.png)

</p></details>
<br />

As a secondary metric, the stability of the geometry model should be checked.

<br />

</p></details>

<details><summary>Protomo limitations ![inprogress](https://i.imgur.com/chaGpB5.png)</summary><p>

[Global alignment using a section of all tilt images - alignment is restricted by the overall 3D sample movement and drift in the search area, objects outside of the search area might not be aligned as well as inside the search area for the same reasons.]

</p></details>

<details><summary>Common alignment issues</summary><p>

- In general, Protomo and Appion-Protomo can align any tilt-series that has high enough SNR. All sample types are alignable — single particles of all sizes, filaments, microtubules, liposomes, (pseudo-)crystalline arrays (2D and 3D), reconstituted proteins on membranes, cryosections, FIB/SEM lamella, thin cells — however, some sample geometries are particularly difficult.<br><br>If the field of view of a tilt-series is dominated by rotational or translational (pseudo-)symmetry, per-image rotations or translations might diverge. To help guide tilt-series alignment of such samples, always begin refinement with a tilt-series that is decently aligned to the eye (no obvious errors) and determine the tilt azimuth beforehand to within a few degrees. (For rotationally symmetric samples in particular,) turn on `Check Azimuth Stability` in Advanced General Refinement Parameters, or turn off Tilt Azimuth Refinement in `Geometry Refinement Parameters`. This will help avoid rotational alignment divergence. (For translationally symmetric samples in particular,) adjust the `Translational Limit` appropriately in `Cross-Correlation Parameters`. After making these adjustments, attempt refinement using a wide and dense range of sample thicknesses.<br><br>If the tilt-series is still unalignable, perform refinement using only low tilt angles (~ -30°:30°). If the low angle tilt-series is alignable, manually add the high tilt images back into the Protomo .tlt file in the tilt-series run directory. (This last possible step must be performed manually as there is currently no method built into Appion-Protomo for adding tilt images back into a tilt-series alignment. Use the `My tlt file` option in `Starting Alignment` to insert the tlt file back into Appion-Protomo.)

[Discuss thickness, tilt azimuth, search area, individual bad/misaligned tilt images...] ![inprogress](https://i.imgur.com/chaGpB5.png)

</p></details>

<details><summary>Common collection issues ![inprogress](https://i.imgur.com/chaGpB5.png)</summary><p>

[Discuss grid hole edge in images, drift, beam-induced motion, doming, charging, tracking, dose (SNR), ...]

</p></details>

<details><summary>CTF estimation and correction</summary><p>

Currently Appion-Protomo in Docker does not include tilt-series CTF correction. We have not yet robustly tested TomoCTF correction in Appion-Protomo to ensure that tilt-series are being CTF corrected properly.

CTF correction can be accomplished through a number of different methods that are not discussed in depth here.

The following list orders CTF estimation and correction methods by their approximate accuracy (from most accurate to least) based on a typically-collected tilt-series of a reasonably thick specimen (~100+ nm) with uniformly-distributed particles in the z-direction:

- Per-particle tilt image fine estimation and correction that takes into account overlapping objects in each tilt image of each particle and accounts for the 3D location of each particle.

- Per-particle tilt image fine estimation and correction that accounts for the 3D location of each particle.

- Collecting high-dose focus images on either side of the target along the tilt axis for every tilt image and using the average of those defocus estimations along with the known 3D locations of particles to correct (given that the focus images are at a known height relative to the field of view of interest).

- Per-tilt-series estimation and correction based on the accumulated SNR of the entire tilt-series, often found by tiling each tilt image together.

- Per-tomogram estimation based on sufficient sub-tomogram processing where the zeros are found in the resulting sub-tomogram alignment's FSC curve.

- Per-tilt image estimation and correction.

</p></details>

<details><summary>Reasons for not using fiducials</summary><p>

Heavy objects, such as gold beads or gallium ion deposits from FIB-milling, may be used as fiducials to determine the tilt-series alignment parameters that best localize the fiducials in 3D space. However, relying on fiducials may cause several issues:

- Fiducials limit imageable areas. Ideally, 10-20 fiducials should be scattered uniformly throughout the ice in the desired field of view, which would allow for linear deformations in the ice to be accounted for during tilt-series alignment by using software such as [TomoAlign](https://sites.google.com/site/3demimageprocessing/tomoalign). However, uniform dispersion of fiducials rarely occurs. Instead, fiducials are often scattered on one or both ice surfaces. Furthermore, many desired exposure areas either have too few fiducials, too many fiducials, or aggregated fiducials, causing the areas to either be unalignable with fiducials or heavily contaminated with fiducials.

- Fiducials may occlude objects of interest. Sometimes an object of interest is directly next to a fiducial, and since fiducials show fringing artifacts, the contrast and power spectra of the objects of interest vary greatly from objects not near fiducials. Also, an object of interest far away from fiducials may still have fiducials in the projection direction of some tilt images. These distant fiducials then contaminate the power spectra of those tilt images and subvolumes.

- Fiducials move differently than the sample. Fiducials primarily absorb electrons, which impart momentum on them and cause them to move differently than biological objects, which don't absorb as many electrons. Thus aligning to fiducials may result in a very accurate 3D model of the fiducials, but not the sample.

These issues reduce efficiency of collection and processing. However, if the sample has sufficient signal, then tilt-series alignment can be done with Appion-Protomo and all of these issues can be bypassed.

</p></details>

<details><summary>Resolution limits in cryoET</summary><p>

Resolution in cryoET is limited critically by pixelsize, SNR from the microscope/camera combination, the motion of objects of interest over the course of frame/image collection, the motion of objects of interest in 3D in the ice, and the accumulated dose on the sample. Here we will discuss these resolution limits in some detail.

- The pixelsize of a tilt-series will determine the maximum possible resolution of any objects imaged (Nyquist = 2 x pixelsize = resolution limit). As with single particle cryoEM, this is a fundamental information limit due to the digitization of the electron beam at the image plane.

- The SNR delivered by the microscope/camera combination determines the maximum resolution where the CTF can be estimated (if collection is done with defocus) and the maximum resolution where coherent structures can be aligned and averaged during sub-tomogram alignment and averaging.

> **Note:** If tilt images are collected with a low dose (~< 5e-/A^2 per tilt image), it is common to find that more SNR exists in the power spectrum of the summed frames rather than the sum of the power spectra of all frames. The opposite is often true with higher dose images in single particle cryoEM.

- Tilt image collection at high magnification can cause beam-induced motion, often in the direction of tilt. Additionally, non-gold grids also often drift in the direction of tilt. The combination of uncorrectable directional movement between frames (or over the course of a whole whole image exposure if no frames are collected) will be the drift resolution limit of that tilt image. The drift resolution limit of the tilt-series will vary, depending on the dose weighting applied.

> **Note:** CFlat carbon grids in particular can drift up to 100 angstroms during a ~3e-/A^2 exposure at tilts > 45 degrees.

- Several factors can contribute to the anisotropic motion of objects of interest in 3D in the ice during tilt-series collection. Two such factors are ice doming and differences between electron absorption between objects.

Ice doming is the effect where the ice bends in the direction normal to the grid during electron exposure. This is sometimes noticeable in grid holes. If this occurs and if the motion is not uniformly normal to the grid, then the objects of interest will move relative to one another during collection. If the possibility of this movement is not taken into account during tilt-series alignment and/or sub-tilt-series refinement, then this will limit the resolution of the tomogram and subvolumes extracted from it. Protomo uses a central search area to align tilt images and thus if there is any doming in that area, then the alignment accuracy and resolution of objects in that area will be limited. Any objects outside of that search area will also be limited in alignment accuracy and resolution.

Differences in electron absorption between objects might occur because the objects of interest (including potentially fiducials) might be composed of atoms with significantly different electron cross sections. Different objects might absorb different amounts of energy and be deflected in different directions with different momentum transfers. As a result, objects might move with complicated relative motions during the full tilt-series exposure. Like with ice doming, if a sample is behaving in this way, then Protomo and fiducial alignment will be limited due to the global nature of the alignment methods. Refinement of sub-tilt-series may be able to track this movement and thus recover this resolution loss.

- [electron damage] ![inprogress](https://i.imgur.com/chaGpB5.png)

> The lower bound of the overall resolution limit of a tilt-series might be expressed conceptually as:
>
> max(Nyquist, CTF correction accuracy, maximum uncorrectable drift, anisotropic/3D motion of objects of interest, beam-induced specimen damage with respect to the orientations of the objects of interest, tilt-series alignment accuracy, [remaining factors])

</p></details>

<details><summary>PHP issues</summary><p>

Appion's, and thus Appion-Protomo's, front-end is built on PHP and thus inherits PHP's complications. The main issue that you as a user may find annoying is that sometimes it seems that Appion-Protomo webpages forget the tilt-series you were working on or complain that you haven't entered in something basic like pixelsize. This is often because PHP SESSION variables have been been cleared from your browser's cache. To refresh Appion-Protomo, you must reload these SESSION variables. You can do this by:

- Navigate to `Align Tilt-Series`.

- On the next page click `Protomo 2.4.1`.

- On the next page, Protomo Coarse Alignment, select the tilt-series you wish to align from the box.

At this point all SESSION variables required for using Batch Align Tilt-Series, for instance, should be loaded.

Note that clicking on Align Tilt-Series forcefully clears all PHP variables. Selecting a tilt-series in Protomo Coarse Alignment populates basic PHP variables.

</p></details>

</p></details>

<br />

</p></details>

# More Examples
*Here you will find additional example tilt-series alignments showing different samples types and alignment scenarios.*
<br>**_[to be added]_** ![inprogress](https://i.imgur.com/chaGpB5.png)

<details><summary>Click here</summary><p>

# Example #2 ![inprogress](https://i.imgur.com/chaGpB5.png)
**_[to be added]_**

*Click to expand:*

<details><summary>Expected results after following this example tutorial</summary><p>

- **Initial tilt-series before any alignment:**

...

- **Tilt-series (*left*) and reconstruction (*right*) after coarse alignment:**

...

- **Tilt-series (*left*) and reconstruction (*right*) after Appion-Protomo refinement:**

...

</p></details>

<br />

</p></details>

# ChangeLog

<details><summary>Docker Appion-Protomo</summary><p>

- `07-25-2018`
  - README (this file!) significantly updated.

<details><summary>07-05-2018</summary><p>
  
  - Version number added to Appion main page.

</p></details>

<details><summary>02-27-2018</summary><p>
  
  - IMOD 4.10.11 Added.
  - Tomo3D Added.
  - TomoCTF Added.
  - Root password has been changed to `appion-protomo`.
  - /emg/sw/ has been re-located to /sw/. This was creating issues because since /emg/data/ is shared between the host and Docker container, this was also locking the sw/ directory, preventing the user from removing software if they wish.
  - /home/appionuser/.Xauthority permissions have been changed from root to appionuser (CentOS7 in particular had default permissions as root:root, which makes X11 in the VNC viewer fail).
  - Spider, Xmipp, Relion, CTFfind3&4, and FindEM have been removed from the container.

</p></details>

<details><summary>12-05-2017</summary><p>

  - Initial commit.

</p></details>

<!--- - [TBD] Added 'Run' buttons alongside 'Just Show Command' button.  --->

<!--- - [TBD]   --->

</p></details>

<details><summary>Appion-Protomo</summary><p>
  
- `07-25-2018`
  - Batch IMOD coarse alignment bug fixed.

<details><summary>07-05-2018</summary><p>
  
- `07-05-2018`
  - Bug in SerialEM upload script fixed.
  - Main summary webpage has been slightly simplified by combining a couple columns.
  - Links to stacks added to bottom of main summary webpage.

</p></details>

<details><summary>02-27-2018</summary><p>
  
  - IMOD coarse alignment added. With two coarse alignment methods, this increases its robustness and reduces the time required to manually align.
  - Image transformations for reconstruction/stack export are now performed with a single 5th order spline interpolation using scipy.ndimage.interpolation.affine_transform. In previous releases, three interpolations were performed sequentially (translation, scaling, and rotation).
  - The maximum search area is now calculated automatically. This frees the user from having to estimate this value by eye, increases the search area used for refinement, and reduces the likelihood of search area re-sizing during refinement, which increases the reliability of the quality metrics. This feature currently allows the user to set the search area to be a fraction of the maximum search area available at the beginning of refinement. Currently, the maximum search area is not updated for each iteration.
  - Unaligned tilt-series stacks and SerialEM-formatted mdoc files can easily be exported (useful with Leginon-collected tilt-series where the user wishes to align their tilt-series using their Docker Appion-Protomo).
  - The Translational Limit in Refinement is now implemented properly. Default is 10% of image length. This decreases the likelihood of alignment to false correlation peaks, as long as the tilt-series was properly coarsely aligned before refinement.
  - Batch coarse alignment now tries to find an existing coarse_series####.param file in the current run directory.
  - If tilt image frames have been aligned in Appion, then the maximum per-tilt image frame drift is plotted automatically for the corresponsing tilt-series, like this: https://i.imgur.com/RCLcLv8.png
  - Backup of `/sw/myami/`: https://drive.google.com/open?id=1djw1s0GiK64mV-Dz4H2Mv5fKMUP8cRlB

</p></details>

<details><summary>12-05-2017</summary><p>

  - Initial commit.
  - Backup of `/emg/sw/myami/`: https://drive.google.com/open?id=1zOKzIVpatgY1FNsCYjvhBDyZiwEEXnBS

</p></details>

<!--- - [TBD]  --->

</p></details>

# References

Noble, A. J., & Stagg, S. M. (2015). Automated batch fiducial-less tilt-series alignment in Appion using Protomo. Journal of Structural Biology, 192(2), 270–278. https://doi.org/10.1016/j.jsb.2015.10.003

Noble, A. J., Dandey, V. P., Wei, H., Brasch, J., Chase, J., Acharya, P., Tan Y. Z., Zhang Z., Kim L. Y., Scapin G., Rapp M., Eng E. T., Rice M. J., Cheng A., Negro C. J., Shapiro L., Kwong P. D., Jeruzalmi D., des Georges A., Potter C. S., Carragher, B. (2017). Routine Single Particle CryoEM Sample and Grid Characterization by Tomography. eLife. https://doi.org/10.7554/eLife.34257

Winkler, H., & Taylor, K. A. (2006). Accurate marker-free alignment with simultaneous geometry determination and reconstruction of tilt series in electron tomography. Ultramicroscopy, 106(3), 240–254. https://doi.org/10.1016/j.ultramic.2005.07.007

Lander, G. C., Stagg, S. M., Voss, N. R., Cheng, A., Fellmann, D., Pulokas, J., Yoshioka C., Irving C., Mulder A., Lau P.-W., Lyumkis D., Potter C. S., Carragher, B. (2009). Appion: An integrated, database-driven pipeline to facilitate EM image processing. Journal of Structural Biology, 166(1), 95–102. https://doi.org/10.1016/j.jsb.2009.01.002

Appion may be found [here](http://appion.org).

Appion-Protomo repository may be found [here](http://emg.nysbc.org/redmine/projects/appion/repository?utf8=%E2%9C%93&rev=appion-protomo).

[Protomo](http://www.electrontomography.org/) source code may be found [here](http://emg.nysbc.org/redmine/projects/appion/repository/revisions/a47dfbe7a956f19b72f88de704054e3a50d7a8f4/show/programs/protomo2).

# Authors

<details><summary>Carl J Negro</summary><p>

- Docker Appion-Protomo

&nbsp;&nbsp;&nbsp;[Github](https://github.com/carl9384)<br />
</p></details>
<details><summary>Alex J Noble</summary><p>
  
- [Appion-Protomo](https://doi.org/10.1016/j.jsb.2015.10.003)

&nbsp;&nbsp;&nbsp;[Twitter](https://twitter.com/alexjamesnoble)<br />
&nbsp;&nbsp;&nbsp;[Youtube](https://www.youtube.com/channel/UCZectHccFZSFQIgpOzakl7A)
</p></details>
<details><summary>Neil R Voss</summary><p>
  
- [Base CentOS 7 Appion Docker image](https://hub.docker.com/r/vosslab/appion_centos7/).

&nbsp;&nbsp;&nbsp;[Youtube](https://www.youtube.com/channel/UCZdt-pe8pCkUXTAFUVfQwiA)
</p></details>


# License

Appion and thus Appion-Protomo are open source software packages released under the [Apache License, Version 2.0](https://github.com/nysbc/appion-protomo/blob/master/LICENSE).


# Compatibility

The workflow has been tested in Mac OSX El Capitan 10.11.3, Ubuntu 14.04.3 LTS, CentOS 7, and Windows 10.


# Bugs & Suggestions

Please report any bugs, problems, suggestions, or requests as a [Github issue](https://github.com/nysbc/appion-protomo/issues).
