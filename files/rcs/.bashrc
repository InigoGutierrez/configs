# $HOME/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# [[ -z "$TMUX" ]] && exec tmux # Doesn't allow to automatically start X.

# Activate vi mode with <Escape>.
set -o vi

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1).
HISTSIZE=-1
HISTFILESIZE=-1

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
[[ $DISPLAY ]] && shopt -s checkwinsize

# Disable ctrl-s and ctrl-q (Enables XON/XOFF flow control).
stty -ixon

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x "/usr/bin/lesspipe" ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r "$HOME/.dircolors" && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
fi

if [ -r "/usr/share/bash-completion/bash_completion" ]; then
	. "/usr/share/bash-completion/bash_completion"
fi

# Set custom PS1 (prompt text variable)
def="\[\e[0;00m\]"
#red="\[\e[1;31m\]"
#green="\[\e[1;32m\]"
#yel="\[\e[1;33m\]"
blue="\[\e[1;34m\]"
pur="\[\e[1;35m\]"
#cyan="\[\e[1;36m\]"
#white="\[\e[1;37m\]"
keys="$blue"
wd="$pur"
umode="$blue"
PS1="${keys}[${pur}\u${keys}@${pur}\h${keys}]${wd}\w${umode}\$${def} "

# Alias definitions.
# Aliases are defined in $HOME/.bash_aliases for convenience.
[ -f "$HOME/.bash_aliases" ] && . "$HOME/.bash_aliases"
