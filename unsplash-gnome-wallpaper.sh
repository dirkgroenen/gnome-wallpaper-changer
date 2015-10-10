#!/bin/bash
#
# Copyright 2015 - Dirk Groenen

# You can change the config vars below so they fit your setup
SLEEP=600 # Time to sleep before changing to another wallpaper (seconds)

# ****************************
# Don't change anything below this line
# ****************************

# Get a random image from Unsplash and save it.
# Returns the path to the image on the filesystem.
function get_random_image {
    # Get a random featured image from Unsplash and save the response in $response
    response=$(curl -s -S -X GET -H 'Authorization: Client-ID 53bf8603de0f9a6c69948a0a7120cf32ff4b2cdd5cfba750b1c6cb2fcd2fe24d' 'https://api.unsplash.com/photos/random?featured=1&w=1920')

    # Set regex to get our image url
    regex="\"custom\":\"([^\"]+)\""

    if [[ $response =~ $regex ]] ; then
        imagepath=/tmp/gnome-unsplash-wallpaper.$(date +"%s").jpg
        imageurl=${BASH_REMATCH[1]}

        # Download the image
        wget -O $imagepath $imageurl >/dev/null 2>&1

        # Return the path to the image
        echo $imagepath
    fi
}

# Clear current image from tmp
function clear_current_image {
    if [[ ! -z "$currentimage" ]]; then
        rm $currentimage
    fi
}

# Do the main loop which changes the image
while [ 1 ]
    do
    set -- *

    # Clear current...
    clear_current_image

    # ...and get new image
    currentimage=$(get_random_image)

    # set as background
    gsettings set org.gnome.desktop.background picture-uri "file://$currentimage"

    sleep $SLEEP
done