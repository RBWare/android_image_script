#!/bin/sh

usage() {
    echo "Usage: $0 -w <int> -h <int> <input file.svg> <output filename.png>" 1>&2;
    echo "Where the width and height are set for the MDPI baseline"
    echo "Width and heigh are optional"
    exit 1;
}

while getopts ":w:h:" o; do
    case "${o}" in
        w)
            w=${OPTARG}
            ;;
        h)
            h=${OPTARG}
            ;;
        *)
            usage
            ;;
        esac
done
shift $((OPTIND-1))

if [ -z "${w}" ] || [ -z "${h}" ]; then
    w=24
    h=24
fi

if [ -z "${1}"] || [ -z "${2}"]; then
    usage
fi

echo "Creating directories"
mkdir -p Images/mdpi/ Images/hdpi/ Images/xhdpi/ Images/xxhdpi/ Images/xxxhdpi/
echo "Directory setup complete"

# Set original w/h to reuse
ow=$w
oh=$h

echo "Converting $1 to $2"
convert -density 300 -background transparent $1 -resize "${w}"x"${h}" -gravity center -extent "${w}"x"${h}" Images/mdpi/$2 # 2>/dev/null
w=$[ow + (ow / 2)]
h=$[oh + (ow / 2)]
convert -density 300 -background transparent $1 -resize "${w}"x"${h}" -gravity center -extent "${w}"x"${h}" Images/hdpi/$2 # 2>/dev/null
w=$[ow * 2]
h=$[oh * 2]
convert -density 300 -background transparent $1 -resize "${w}"x"${h}" -gravity center -extent "${w}"x"${h}" Images/xhdpi/$2 # 2>/dev/null
w=$[ow * 3]
h=$[oh * 3]
convert -density 300 -background transparent $1 -resize "${w}"x"${h}" -gravity center -extent "${w}"x"${h}" Images/xxhdpi/$2 # 2>/dev/null
w=$[ow * 4]
h=$[oh * 4]
convert -density 300 -background transparent $1 -resize "${w}"x"${h}" -gravity center -extent "${w}"x"${h}" Images/xxxhdpi/$2 # 2>/dev/null
echo 'Done'








