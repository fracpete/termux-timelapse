#!/bin/bash

echo
echo "Timelapse parameters"
read -p "Camera ID: " CAMERA
read -p "Prefix: " PREFIX
read -p "# images: " IMAGES
read -p "Interval (sec): " INTERVAL
read -p "Movie FPS: " FPS

echo
read -p "Press ENTER to start taking $IMAGES images from camera $CAMERA every $INTERVAL seconds using prefix $PREFIX..."

# take images
for ((i = 1; i <= $IMAGES; i++ ))
do
  NAME=`printf "$PREFIX-%06d.jpg" $i`
  echo "$i - $NAME"
  termux-camera-photo -c $CAMERA $NAME
  sleep $INTERVAL
done

# combine into movie
ffmpeg -r $FPS -i $PREFIX-%06d.jpg -pix_fmt yuv420p $PREFIX.mp4

