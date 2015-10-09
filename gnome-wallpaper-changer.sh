#!/bin/bash

WP_DIR=/home/$USER/Pictures/wallpapers # Set your wallpaper directory here

cd $WP_DIR
while [ 1 ]
    do
    set -- *
    length=$#
    random_num=$((( $RANDOM % ($length) ) + 1))

    gsettings set org.gnome.desktop.background picture-uri "file://$WP_DIR/${!random_num}"

    sleep 600 # Time to sleep before changing to another wallpaper
done
