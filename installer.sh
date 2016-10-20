#!/bin/bash
printf "Ubuntu Wallpaper Fix\n\nInstalling..."
# Remove (if exists) the old folder of ubuntu-wallpaper-fix
rm -rf $HOME/.ubuntu-wallpaper-fix/
# Download, prepare and move the files to ubuntu-wallpaper-fix folder
wget -O ubuntu-wallpaper-fix https://git.io/vPQGU -q
unzip -q ubuntu-wallpaper-fix
rm -f ubuntu-wallpaper-fix
chmod +x ubuntu-wallpaper-fix-master/ubuntu-wallpaper-fix.sh
mv -fu ubuntu-wallpaper-fix-master $HOME/.ubuntu-wallpaper-fix
printf "\nConfigurating..."
# Create the desktop entry for the fix for Ubuntu startup it
touch ubuntu-wallpaper-fix.desktop
desktopEntry="[Desktop Entry]\nType=Application\nExec=$HOME/.ubuntu-wallpaper-fix/ubuntu-wallpaper-fix.sh --onstartup\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName=Ubuntu Wallpaper Fix"
printf "$desktopEntry" > ubuntu-wallpaper-fix.desktop
mv -fu ubuntu-wallpaper-fix.desktop $HOME/.config/autostart
sleep 1
# Run the fix on the current session
$HOME/.ubuntu-wallpaper-fix/ubuntu-wallpaper-fix.sh --silent
printf "\nDone! :)\n"
