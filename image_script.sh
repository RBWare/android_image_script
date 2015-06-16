#!/bin/sh

echo "Creating directories"
mkdir -p Images/mdpi/ Images/hdpi/ Images/xhdpi/ Images/xxhdpi/ Images/xxxhdpi/
echo "Directory setup complete"

echo "Converting $1 to $2"
convert -density 300 -background transparent $1 -resize 24x24 -gravity center -extent 24x24 Images/mdpi/$2 # 2>/dev/null
convert -density 300 -background transparent $1 -resize 36x36 -gravity center -extent 36x36 Images/hdpi/$2 # 2>/dev/null
convert -density 300 -background transparent $1 -resize 48x48 -gravity center -extent 48x48 Images/xhdpi/$2 # 2>/dev/null
convert -density 300 -background transparent $1 -resize 72x72 -gravity center -extent 72x72 Images/xxhdpi/$2 # 2>/dev/null
convert -density 300 -background transparent $1 -resize 96x96 -gravity center -extent 96x96 Images/xxxhdpi/$2 # 2>/dev/null
echo 'Done'
