#!/bin/bash
cd ~/.config/waybar && ./compile.sh latte
killall -SIGUSR2 waybar
