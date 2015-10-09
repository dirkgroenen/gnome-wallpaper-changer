#Gnome Wallpaper Changer
-----------

Little script which changes your Gnome Desktop wallpaper based on the images in the provided directory.

## Setup
#### Download and install
Download the `gnome-wallpaper-changer.sh` script and drop it somewhere in your system. For example the `usr/share/` directory.

#### Configure
Open the script and change the `WP_DIR` to the directory containing your wallpaper files. By default it will check the `/home/$USER/Pictures/wallpapers` directory.

If you want increase or decrease the time between each new wallpaper you can change the `sleep` value.

#### Make script executable 
Run the following command. Change `usr/share/` to an other directory if you have chosen your own. 

```
chmod +x /usr/share/gnome-wallpaper-changer.sh
```

#### Start on boot
Make a Desktop Entry for the program so it starts when you login. 

```
nano ~/.config/autostart/gnome-wallpaper-changer.desktop
```

Paste the following into the file
```
[Desktop Entry]
Name=gnome-wallpaper-changer
Exec=/usr/share/gnome-wallpaper-changer.sh
Comment=Automatically change wallpaper
Hidden=false
Type=Application
X-GNOME-Autostart-enabled=true
```

Save (`CTRL+O`) and exit (`CTRL+X`).

Everything is set up and will start working the next time you login.