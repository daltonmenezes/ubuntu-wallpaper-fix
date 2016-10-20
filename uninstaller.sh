#!/bin/bash
clear
printf "Ubuntu Wallpaper Fix\n\nUninstalling..."
rm -rf $HOME/.ubuntu-wallpaper-fix/
rm -f $HOME/.config/autostart/ubuntu-wallpaper-fix.desktop
sleep 1
printf "\nDone! :)\n"
