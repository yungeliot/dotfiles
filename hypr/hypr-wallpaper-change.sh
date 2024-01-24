#!/bin/sh

# Author: Eliot Young
# Date: 12.01.2024

# Location of the wallpaper folder
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Get the number of wallpapers in the folder
WALLPAPER_COUNT=$(ls $WALLPAPER_DIR | wc -l)

# Get a random number between 1 and the number of wallpapers
WALLPAPER_INDEX=$(shuf -i 1-$WALLPAPER_COUNT -n 1)

# Get the filename of the wallpaper at the index
WALLPAPER_NAME=$(ls $WALLPAPER_DIR | sed -n "$WALLPAPER_INDEX"p)
echo $WALLPAPER_NAME

# Set the wallpaper
swww img $WALLPAPER_DIR/$WALLPAPER_NAME --transition-type any

# Generate a theme from the wallpaper with pywal
wal -i $WALLPAPER_DIR/$WALLPAPER_NAME

# Update notification theme
~/.config/mako/update-theme.sh

# Check for 1 or 2 at beginning of wallpaper name
# If 1, set to dark theme
# If 2, set to light theme

if [[ $WALLPAPER_NAME == 1* ]]; then
    echo "dark"
elif [[ $WALLPAPER_NAME == 2* ]]; then
    echo "light"
fi







# Update rofi theme
# spotify theme missing
