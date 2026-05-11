
#!/bin/bash

# Path to your Movies folder
MOVIES_DIR="/mnt/backup/Movies"  # <-- change this path if needed

# Find all .mkv and .mp4 files recursively
movie=$(find "$MOVIES_DIR" -type f \( -iname "*.mkv" -o -iname "*.webm" -o -iname "*.mp4" \) \
    | sed "s|$MOVIES_DIR/||" \
    | sort \
    | dmenu -i -c -l 15 -p "🎬 Select a movie:")

# If user cancels, exit
[ -z "$movie" ] && exit 0

# Play the selected movie
mpv "$MOVIES_DIR/$movie"
