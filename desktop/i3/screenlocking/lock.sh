#!/bin/bash

cd ~/.i3/screenlocking

IMAGE=lockscreen.png

scrot $IMAGE
#convert -blur 0x4 -type Grayscale lockscreen.png lockscreen.png
convert $IMAGE -type Grayscale -level 0%,100%,0.6 -blur 0x5 -font Liberation-Sans -pointsize 48 -fill orange -gravity center -annotate +0+200 'Type password to unlock' - | composite -gravity center lock.png - $IMAGE
i3lock --dpms --ignore-empty-password --image=lockscreen.png
rm $IMAGE
