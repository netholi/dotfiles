#!/bin/bash

choice=$(printf "File manager\nScreenshot\nWezterm" | dmenu -i -l 5 -c -p "Select:")

case "$choice" in
    "File manager")
        thunar &
        ;;
    "Screenshot")
        flameshot gui &
        ;;
    "Wezterm")
          flatpak run org.wezfurlong.wezterm &
        ;;
esac
