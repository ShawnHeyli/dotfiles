#!/bin/bash
cd ~/.config/waybar && ./compile.sh mocha
killall -SIGUSR2 waybar
