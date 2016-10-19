#!/bin/bash
running=true
while $running; do
  if pgrep -f "gvfsd-metadata" > /dev/null; then
      rm -rvf /home/$USER/.cache/wallpaper/*
      gsettings set org.gnome.desktop.background picture-options stretched
      gsettings set org.gnome.desktop.background picture-options zoom
      exit 0
  fi
  sleep 1
done
