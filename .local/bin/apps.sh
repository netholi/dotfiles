#!/bin/bash

choice=$(printf "File manager\nScreenshot\n" | dmenu -i -l 5 -c -p "Select:")

case "$choice" in
    "File manager")
        thunar &
        ;;
    "Screenshot")
        flameshot gui &
        ;;
esac
