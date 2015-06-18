# Android Image Generation Script
A sweet little script that converts `svg`'s to `png`'s for all densities for use with Android

# Getting Started

## Dependencies

### ImageMagick (http://www.imagemagick.org)

**OS X Users:**

You can install ImageMagik in a number of different ways. The easiest is to use a package manager like MacPorts or Homebrew.

* Using MacPorts: `$ sudo port install ImageMagick`
* Using Homebrew: `$ brew install imagemagick`

**All other OS'es:**

* Follow the instructions [here](http://www.imagemagick.org/script/index.php). They have binaries for all major distributions.

## Usage

This is a very simple command line tool. Make sure you give it executable permissions by using
`chmod +x image_script.sh`

1. Create a [Bash Alias](http://tldp.org/LDP/abs/html/aliases.html) for easy access to the image_script.sh from anywhere on your system:
`alias gen_images="~/sources/android_image_script/image_script.sh"` (The path to the image_script.sh on your system will likely be different, make sure you update this acordingly). You'll want to add this to your `.bash_rc` or `.bash_profile`, which ever you use, so that it will persist after rebooting your machine.
2. Execute the script by supplying the image name and the desired output image name. This will create a directory, "Images" in the working directory that includes all of the android density sizes with the new file name. 

**Example Usage:**

`$ gen_images design_team_svg_file.svg ic_menu_team_photo.png`
