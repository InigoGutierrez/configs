# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

stty -ixon # Disable ctrl-s and ctrl-q (Enables XON/XOFF flow control)

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# [[ -z "$TMUX" ]] && exec tmux # Doesn't allow to automatically start X

# Activate vi mode with <Escape>.
set -o vi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=-1
HISTFILESIZE=-1

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -hN --color=auto --group-directories-first'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
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

# PS1="${keys}[${pur}${wd}\w${keys}]${umode}\$${def} "
PS1="${keys}[${pur}\u${keys}@${pur}\h${keys}]${wd}\w${umode}\$${def} "

# EDITOR="nvim"
# TERM="rxvt-256color"
# TERMINAL="urxvt"
# BROWSER="qutebrowser"
# READER="zathura"
#
# ARDUINO_DIR="/usr/share/arduino"
# ARDMK_DIR="/usr/share/arduino"
# AVR_TOOLS_DIR="/usr"
#
# XDG_CONFIG_HOME="$HOME/.config"
