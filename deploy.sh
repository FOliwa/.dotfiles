#!/bin/bash
# Use this script to deploy configs from this repo to your system
# Works for Ubuntu based systems (I guess ;))

#### DEPLOY TMUX CONF ##########################################
cp ~/.dotfiles/.tmux.conf ~

#### DEPLOY ALACRITTY CONF ##########################################
cp ~/.dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
# Check iff themes are installed
THEME_PATH="$HOME/.config/alacritty/themes/themes/tokyo-night-storm.toml"
if [ ! -e "$THEME_PATH" ]; then
	echo "Install alacritty themes: https://github.com/alacritty/alacritty-theme"
fi

#### DEPLOY NVIM CONF ##########################################
cp ~/.dotfiles/nvim/* ~/.config/nvim/
