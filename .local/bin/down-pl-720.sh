#!/usr/bin/env  bash

yt-dlp -f "bestvideo[height=720]+bestaudio"  -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" $1
