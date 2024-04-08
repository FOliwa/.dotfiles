#!/bin/bash
# Use this script to deploy configs from this repo to your system
# Works for Ubuntu based systems (I guess ;))

# Put tmux config in right place:
#cp ~/.dotfiles/.tmux.conf ~

# Put alacrity config in right place:
#cp ~/.dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
## Check if themes are installed

# TODO: Write it more generic - now it is hardcoded in if statement
# BTW - you cant use ~ in if statement in bash. Use $HOME variable
THEME_PATH="$HOME/.config/alacritty/themes/themes/tokyo-night-storm.toml"
if [ ! -e "$THEME_PATH" ]; then
	echo "Install alacritty themes: https://github.com/alacritty/alacritty-theme"
fi
