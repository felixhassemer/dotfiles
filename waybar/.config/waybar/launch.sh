#!/bin/bash

# Check if waybar-disabled file exists
if [ -f $HOME/.cache/waybar-disabled ]; then
	killall waybar
	pkill waybar
	exit 1
fi

# -----------------------------------------------------
# Quit all running waybar instances
# -----------------------------------------------------
killall waybar
pkill waybar
sleep 0.2

# -----------------------------------------------------
# Loading the configuration
# -----------------------------------------------------
config_name="felix-blur"
config_file="config"
style_file="style.css"

# Standard files can be overwritten with an existing config-custom or style-custom.css
if [ -f ~/.config/waybar/themes/$config_name/config-custom ]; then
	config_file="config-custom"
fi
if [ -f ~/.config/waybar/themes/$config_name/style-custom.css ]; then
	style_file="style-custom.css"
fi

waybar -c ~/.config/waybar/themes/$config_name/$config_file -s ~/.config/waybar/themes/felix-blur/$style_file &
