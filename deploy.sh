#!/bin/bash
# Use this script to deploy configs from this repo to your system
# Works for Ubuntu based systems (I guess ;))
echo "========= Deploy configs"
#### DEPLOY TMUX CONF ##########################################
cp ~/.dotfiles/.tmux.conf ~
echo "TMUX - OK"

#### DEPLOY ALACRITTY CONF #####################################
cp ~/.dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
echo "Alacritty - OK"
# Check if themes are installed
THEME_PATH="$HOME/.config/alacritty/themes/themes/tokyo-night-storm.toml"
if [ ! -e "$THEME_PATH" ]; then
	echo "Install alacritty themes: https://github.com/alacritty/alacritty-theme"
else
  echo "Alacritty themes - OK"
fi

#### DEPLOY NVIM CONF ##########################################
cp -r ~/.dotfiles/nvim/* ~/.config/nvim/
echo "NVim - OK"
echo ""
echo "---NOTE"
echo "1. Install check missing tools using LeazyHealth command in NVim and install all necesary tools\n"
echo "2. For sure you need node and rust installed on your system as some pluggins requirements\n"
echo "3. To make lsp for python or other selected servers work you have install them\n"
echo "4. Remember to check if NerdFonts are avaliable on your system or remove entry in alacritty.toml\n"
echo "=============================="
