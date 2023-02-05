#! /bin/bash

source ./colors.sh


## Directories ------------------------------
PATH_CONF="$HOME/.config"
PATH_BSPWM="$PATH_CONF/bspwm"
PATH_TERM="$PATH_BSPWM/alacritty"
PATH_HELIX="$PATH_BSPWM/helix"
PATH_PBAR="$PATH_BSPWM/polybar"
PATH_ROFI="$PATH_BSPWM/rofi"


# ------------------------------------------

wallpaper="$PATH_CONF/wallpaper/day.webp"

# Bspwm
bspwm_fbc="$accent"
bspwm_nbc="$background"
bspwm_abc="$color5"
bspwm_pfc="$color2"

apply_wallpaper() {
	feh --bg-scale "$wallpaper"
}

apply_terminal(){
	sed -i '/import:/{n; s#^.*$#  - '"$PATH_TERM"'/themes/catppuccin-mocha.yml#}' "$PATH_TERM/alacritty.yml"
}

apply_helix(){
	sed -i 's/theme =.*/theme = \"catppuccin_latte\"/' "$PATH_HELIX/config.toml"
}

apply_wallpaper
apply_terminal
apply_helix
