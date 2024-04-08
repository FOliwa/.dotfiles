#!/bin/bash

# Use this script to changes in repository
# Paths are legit for Ubuntu based systems

BASE_PATH="$HOME/.dotfiles/"

cp -u -r ~/.config/nvim/ $BASE_PATH
cp -u ~/.config/alacritty/alacritty.toml $BASE_PATH
cp -u ~/.tmux.conf $BASE_PATH
cp -u ~/.bashrc $BASE_PATH
cp -u ~/.bash_aliases $BASE_PATH
cp -u ~/.profile $BASE_PATH
