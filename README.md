# android_image_script
A sweet little script that converts svgs to pngs for all densities for use with Android


# Setup
### MacPorts (Required for OS X users)
MacPorts needs to be setup and working to get started. Setup instructions are here
- https://www.macports.org/install.php

### ImageMagick (Required for all)
For OS X:
`sudo port install ImageMagick`

For all other OSes, follow the instructions here:
- http://www.imagemagick.org/script/index.php
They have binaries for all major distributions

# Usage
This is a very simple command line item. Make sure you give it executable permissions by using
`chmod +x image_script.sh`

- (Optional step)  Rename the file from "image_script.sh to "image_script"
`mv image_script.sh image_script`

Execute the script by supplying the image name, and the image output name to it. This will create a directory, "Images" in the working directory that includes all of the android density sizes with the new file name. 
- Example:
`./image_script design_team_svg_file.svg ic_menu_team_photo.png`
