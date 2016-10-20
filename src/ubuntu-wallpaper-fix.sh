#!/bin/sh
running=true
while $running; do
  if pgrep -f "gvfsd-trash" > /dev/null; then
      sleep 5
      rm -rf /home/$USER/.cache/wallpaper/*
      gsettings set org.gnome.desktop.background picture-options stretched
      gsettings set org.gnome.desktop.background picture-options zoom
      exit 0
  fi
  sleep 1
done
