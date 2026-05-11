#!/bin/bash

URL=$(xclip -o -selection clipboard)

if [ -z "$URL" ]; then
    echo "Clipboard is empty"
    exit 1
fi

ssh mx "/home/anand/.local/bin/mpvRemote.sh \"$URL\""
