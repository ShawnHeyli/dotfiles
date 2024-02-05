#!/bin/bash

folder="/home/defaultmodel/Pictures/light_wallpaper/"
wallpaper=$(find $folder | sort -R | tail -1)
swww img --transition-fps 60 --resize fit $wallpaper

