#!/bin/sh
running=true
numberOfConnectedMonitors=`xrandr -q | grep ' connected' | wc -l`
while $running; do
  if [ "$numberOfConnectedMonitors" -ge "2" ]; then
    printf 'Executing...'
    if pgrep -f "gvfsd-trash" > /dev/null; then
        sleep 5
        rm -rf /home/$USER/.cache/wallpaper/*
        gsettings set org.gnome.desktop.background picture-options stretched
        gsettings set org.gnome.desktop.background picture-options zoom
        printf '\nDone\n'
        exit 0
    fi
  else
    printf 'Just only one monitor is connected... Nothing to do here! Beep.\n'
    exit 0
  fi
  sleep 1
done
