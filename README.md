#Gnome Wallpaper Changer

This little script changes your Gnome Desktop wallpaper based on the images in the provided directory **OR** get a random featured image from [Unsplash](http://unsplash.com).

## Installation
### The easy way
The script comes with a handy installer which does all the work for you. To install the Gnome Wallpaper Changer you only have to run the following command: 

```
wget -O gnome-wallpaper-changer.tar.gz https://github.com/dirkgroenen/gnome-wallpaper-changer/archive/master.tar.gz && tar -vxf gnome-wallpaper-changer.tar.gz && ./gnome-wallpaper-changer-master/install.sh
```

The installer will now ask you a few questions. All questions are self explaining, but don't hesitate to drop a question in the issues in case you're having problems.

### The manual way
In case you don't want to use the installer you can also install it manually. Copy the `gnome-wallpaper-changer` to a place somewhere on your system and create a desktop entry in `~/.config/autostart`. 

You might want to change the `Exec=` line in the desktop entry so it fits your preferences. The possible options you can add to the executable are: 

```
--source [unsplash/local, default local]   // Choose the source to use
--path [default: ~/Pictures]    // Select the directory on your filesystem
--sleep [default: 600]    // The time to wait before changing to a new image (seconds)
```

So your desktop entry might look like:

```
[Desktop Entry]
Name=gnome-wallpaper-changer
Exec=/usr/bin/gnome-wallpaper-changer --source unsplash
Comment=Automatically change wallpaper
Hidden=false
Type=Application
X-GNOME-Autostart-enabled=true
```

## Removing 
In case you have used the installer you can also use it to remove Gnome Wallpaper Changer. Run `./install.sh --remove` to remove the package. 
