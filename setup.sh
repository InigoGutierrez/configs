#!/bin/sh

# Setup all config files in their place

mkdir -p "$HOME/.config"

# keymap
cp "$HOME/repos/configs/files/rcs/ttymaps.kmap" "$HOME/.config/ttymaps.kmap"

# i3
mkdir -p "$HOME/.config/i3"
cp "$HOME/repos/configs/files/i3/config" "$HOME/.config/i3/config"

# i3blocks
mkdir -p "$HOME/.config/i3blocks"
cp "$HOME/repos/configs/files/i3blocks/config" "$HOME/.config/i3blocks/config"

# picom
mkdir -p "$HOME/.config/picom"
cp "$HOME/repos/configs/files/picom/picom.conf" "$HOME/.config/picom/picom.conf"

# dmenu
mkdir -p "$HOME/repos/dmenu"
cp "$HOME/repos/configs/files/dmenu/config.h" "$HOME/repos/dmenu/config.h"

# dunst
mkdir -p "$HOME/.config/dunst"
cp "$HOME/repos/configs/files/dunst/dunstrc" "$HOME/.config/dunst/dunstrc"
cp "$HOME/repos/configs/files/dunst/dunstifyIDs" "$HOME/.config/dunst/dunstifyIDs"

# mpv
mkdir -p "$HOME/.config/mpv"
cp "$HOME/repos/configs/files/mpv/input.conf" "$HOME/.config/mpv/input.conf"
cp "$HOME/repos/configs/files/mpv/mpv.conf" "$HOME/.config/mpv/mpv.conf"

# neofetch
mkdir -p "$HOME/.config/neofetch"
cp "$HOME/repos/configs/files/neofetch/neofetchLogin.conf" "$HOME/.config/neofetch/neofetchLogin.conf"

# qutebrowser
mkdir -p "$HOME/.config/qutebrowser"
cp "$HOME/repos/configs/files/qutebrowser/config.py" "$HOME/.config/qutebrowser/config.py"

# ranger
mkdir -p "$HOME/.config/ranger"
cp "$HOME/repos/configs/files/ranger/rc.conf" "$HOME/.config/ranger/rc.conf"
cp "$HOME/repos/configs/files/ranger/rifle.conf" "$HOME/.config/ranger/rifle.conf"
cp "$HOME/repos/configs/files/ranger/scope.sh" "$HOME/.config/ranger/scope.sh"

# rcs
cp "$HOME/repos/configs/files/rcs/.profile" "$HOME/.profile"
cp "$HOME/repos/configs/files/rcs/.bashrc" "$HOME/.bashrc"
cp "$HOME/repos/configs/files/rcs/.bash_aliases" "$HOME/.bash_aliases"
cp "$HOME/repos/configs/files/rcs/.bash_vars" "$HOME/.bash_vars"
cp "$HOME/repos/configs/files/rcs/.Xresources" "$HOME/.Xresources"
cp "$HOME/repos/configs/files/rcs/.xinitrcgnome" "$HOME/.xinitrcgnome"
cp "$HOME/repos/configs/files/rcs/.xinitrci3" "$HOME/.xinitrci3"
cp "$HOME/repos/configs/files/rcs/.xinitrcxfce4" "$HOME/.xinitrcxfce4"
cp "$HOME/repos/configs/files/rcs/.inputrc" "$HOME/.inputrc"
cp "$HOME/repos/configs/files/rcs/.tmux.conf" "$HOME/.tmux.conf"

# vim
mkdir -p "$HOME/.vim"
cp "$HOME/repos/configs/files/vim/.vimrc" "$HOME/.vimrc"
cp -r "$HOME/repos/configs/files/vim/ftplugin" "$HOME/.vim"
cp -r "$HOME/repos/configs/files/vim/plugin" "$HOME/.vim"

# sxiv
mkdir -p "$HOME/.config/sxiv/exec"
cp "$HOME/repos/configs/files/sxiv/config.h" "$HOME/repos/sxiv/config.h"
cp "$HOME/repos/configs/files/sxiv/image-info" "$HOME/.config/sxiv/exec/image-info"
cp "$HOME/repos/configs/files/sxiv/key-handler" "$HOME/.config/sxiv/exec/key-handler"

# zathura
mkdir -p "$HOME/.config/zathura"
cp "$HOME/repos/configs/files/zathura/zathurarc" "$HOME/.config/zathura/zathurarc"
