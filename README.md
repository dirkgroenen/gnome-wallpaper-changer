#Gnome Wallpaper Changer

This little script changes your Gnome Desktop wallpaper based on the images in the provided directory. 

## Setup
#### Download and install
Download the `gnome-wallpaper-changer.sh` script and drop it somewhere in your system. For example the `usr/share/` directory.

```
wget -O gnome-wallpaper-changer.tar.gz https://github.com/dirkgroenen/gnome-wallpaper-changer/archive/master.tar.gz gnome-wallpaper-changer.tar.gz
tar -vxf gnome-wallpaper-changer.tar.gz
sudo cp gnome-wallpaper-changer-master/gnome-wallpaper-changer.sh /usr/bin/gnome-wallpaper-changer
sudo chmod +x /usr/bin/gnome-wallpaper-changer
rm -r gnome-wallpaper-changer.tar.gz ./gnome-wallpaper-changer-master
```

#### Configure
Open the script and change the `WP_DIR` to the directory containing your wallpaper files. By default it will check the `/home/$USER/Pictures/wallpapers` directory.

If you want increase or decrease the time between each new wallpaper you can change the `sleep` value.

#### Start on boot
Make a Desktop Entry for the program so it starts when you login. 

```
nano ~/.config/autostart/gnome-wallpaper-changer.desktop
```

Paste the following into the file
```
[Desktop Entry]
Name=gnome-wallpaper-changer
Exec=/usr/bin/gnome-wallpaper-changer
Comment=Automatically change wallpaper
Hidden=false
Type=Application
X-GNOME-Autostart-enabled=true
```

Save (`CTRL+O`) and exit (`CTRL+X`).

Everything is set up and will start working the next time you login.

## Little extra from the house
**Oh man I don't have any cool wallpapers to slide through....**

No problem mate! Check [unsplash.com](https://unsplash.com/) for awesome free to use wallpaper. I use this site all the time for my wallpaper and projects, so spreading a bit of love never hurts! :)