#!/bin/bash
function runFix {
  while $is_running; do
    if [ "$numberOfConnectedMonitors" -ge "2" ]; then
      printf 'Executing...'
      if pgrep -f "gvfsd-trash" > /dev/null; then
          rm -rf $HOME/.cache/wallpaper/*
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
}
