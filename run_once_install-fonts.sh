#!/bin/sh

### FONTS ###
# System-wide
mkdir -p /usr/local/share/fonts/otf/ComicCode
cp fonts/* /usr/local/share/fonts/otf/ComicCode

{{ if eq .chezmoi.osRelease.id "debian" }}

# Install console-setup package
sudo apt install console-setup -y

# Set the font and font size
sudo sed -i 's/FONTFACE=".*"/FONTFACE="ComicCodeLigatures Nerd Font Mono"/g' /etc/default/console-setup
sudo sed -i 's/FONTSIZE=".*"/FONTSIZE="8x16"/g' /etc/default/console-setup

# Apply the changes
sudo /etc/init.d/console-setup restart

{{ end }}