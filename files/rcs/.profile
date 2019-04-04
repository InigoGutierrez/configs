# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
PATH=${PATH}:${JAVA_HOME}/bin

# add scripts folder to path
PATH="$PATH:$HOME/scripts"

# export final PATH
export PATH

export EDITOR="nvim"
export TERM="rxvt-256color"
export TERMINAL="urxvt"
export BROWSER="qutebrowser"
export READER="zathura"

export ARDUINO_DIR="/usr/share/arduino"
export ARDMK_DIR="/usr/share/arduino"
export AVR_TOOLS_DIR="/usr"

export XDG_CONFIG_HOME="$HOME/.config"

# less/man colors
# export LESS=-R
# export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
# export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
# export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
# export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
# export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
# export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
# export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

sudo loadkeys es
sudo -n loadkeys "$HOME/.config/ttymaps.kmap"
[[ $(tty) = "/dev/tty6" ]] && setfont alt-8x8
echo ""
neofetch --config ~/.config/neofetch/neofetchLogin.conf
if [ "$(tty)" = "/dev/tty1" ] && [ ! "$(pgrep -x i3)" ]; then
	figlet "Starting i3-gaps..." | lolcat -a -d 1 -s 10 -p 1 -F 0.05
	exec startx >~/.startx.log 2>~/.startxerr.log
fi
