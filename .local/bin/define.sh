#!/usr/bin/env bash

# Get word from argument or X primary selection / Wayland
word=${1:-$(xclip -o -selection primary 2>/dev/null || wl-paste 2>/dev/null)}

# Trim whitespace
word=$(echo "$word" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

# Validate input
if [[ -z "$word" || "$word" =~ [\/] ]]; then
    notify-send -h string:bgcolor:#bf616a -t 3000 "Invalid input"
    exit 0
fi

# Query dict.org (WordNet by default)
result=$(dict "$word" 2>/dev/null)

# If no result
if [[ -z "$result" || "$result" == *"No definitions found"* ]]; then
    notify-send -h string:bgcolor:#bf616a -t 3000 "Invalid word"
    exit 0
fi

# Clean up output:
# - remove headers
# - limit length so notify-send doesn't choke
definition=$(echo "$result" \
    | sed -n '/^[0-9]\+ definition/,$p' \
    | head -n 25)

# Show notification
notify-send -t 60000 "$word — definition" "$definition"

