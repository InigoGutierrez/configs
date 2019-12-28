# $HOME/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# Source environment variables
[ -f "$HOME/.bash_vars" ] && . "$HOME/.bash_vars"

# Login commands
sudo loadkeys es
sudo -n loadkeys "$XDG_CONFIG_HOME/ttymaps.kmap"
[[ $(tty) = "/dev/tty6" ]] && setfont alt-8x8
if [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3; then
	echo ""
	cat "$HOME/.xinitrci3" > "$HOME/.xinitrc"
	neofetch --config "$XDG_CONFIG_HOME/neofetch/neofetchLogin.conf"
	#figlet "Starting i3-gaps..." | lolcat -a -d 1 -s 10 -p 1 -F 0.05
	exec startx >"$CONFIG_FOLDER_LOGS/startx.log" 2>"$CONFIG_FOLDER_LOGS/startx.err"
elif [ "$(tty)" = "/dev/tty3" ] && ! pgrep -x xfce4-session; then
	echo ""
	cat "$HOME/.xinitrcxfce4" > "$HOME/.xinitrc"
	neofetch --config "$XDG_CONFIG_HOME/neofetch/neofetchLogin.conf"
	exec startx
elif [ "$(tty)" = "/dev/tty4" ] && ! pgrep -x gnome-session; then
	echo ""
	cat "$HOME/.xinitrcgnome" > "$HOME/.xinitrc"
	neofetch --config "$XDG_CONFIG_HOME/neofetch/neofetchLogin.conf"
	exec startx
elif tty | grep -q '/dev/tty.*' ; then
	tmux new -s "$(tty | cut -d'/' -f3)"
fi
