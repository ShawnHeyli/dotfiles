#!/bin/bash

if [ $# -ne 1 ]; then
  >&2 echo "No catppuccin theme was provided"
  exit 1 
fi

cd ~/.config/waybar/ && whiskers style.hbs "$1" | sass --stdin > style.css
