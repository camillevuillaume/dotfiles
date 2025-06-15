#!/bin/bash

current_hour=$(date +%H)

sleep 2

if [ $current_hour -ge 5 -a $current_hour -le 7 ]; then
    hyprctl --instance 0 hyprpaper wallpaper ,"~/.config/backgrounds/tokyo_dusk.jpg"
elif [ $current_hour -ge 8 -a $current_hour -le 18 ]; then
    hyprctl --instance 0 hyprpaper wallpaper ,"~/.config/backgrounds/tokyo_day.jpg"
elif [ $current_hour -ge 19 -a  $current_hour -le 20 ]; then
    hyprctl --instance 0 hyprpaper wallpaper ,"~/.config/backgrounds/tokyo_dusk.jpg"
else
    hyprctl --instance 0 hyprpaper wallpaper ,"~/.config/backgrounds/tokyo_night.jpg"
fi
