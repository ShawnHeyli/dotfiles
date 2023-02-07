#! /bin/bash

## Directories ------------------------------
PATH_CONF="$HOME/.config"
PATH_BSPWM="$PATH_CONF/bspwm"
PATH_TERM="$PATH_BSPWM/alacritty"
PATH_HELIX="$PATH_BSPWM/helix"
PATH_PBAR="$PATH_BSPWM/polybar"
PATH_ROFI="$PATH_BSPWM/rofi"

# ------------------------------------------

wallpaper="$PATH_CONF/wallpaper/sunset.webp"

# Theme name
theme="catppuccin-mocha"

apply_wallpaper() {
	feh --bg-scale "$wallpaper"
}

apply_terminal(){
	sed -i '/import:/{n; s#^.*$#  - '"$PATH_TERM"'/themes/'"$theme"'.yml#}' "$PATH_TERM/alacritty.yml"
}

apply_helix(){
	sed -i 's#theme =.*#theme = \"catppuccin_mocha\"#' "$PATH_HELIX/config.toml"
}

# Can't pinpoint good regex, so just changes the content of the already included colors.ini
apply_polybar(){
	cat "$PATH_PBAR/themes/$theme.ini" > "$PATH_PBAR/colors.ini"
}

apply_wallpaper
apply_terminal
apply_helix
apply_polybar
