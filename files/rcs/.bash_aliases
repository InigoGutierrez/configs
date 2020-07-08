# General abreviations
alias r='tmux rename-window ranger; ranger; tmux rename-window bash'
alias v='nvim'
alias vim='nvim'
alias ping='ping fsf.org'
alias cdf='cd "$(fzfPath.sh)"'
alias cdr='route="$(fzfPath.sh)" && [ -n "$route" ] && ranger "$route"'
alias mail='mail.sh'
alias ls='ls -hN --color=auto --group-directories-first'
alias cp='cp -iv'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias nb='newsboat'

# config files
alias cb="vim ~/.bashrc"
alias cba="vim ~/.bash_aliases"
alias cx="vim ~/.Xresources"
alias ci3="vim ~/.config/i3/config"
alias ci3b="vim ~/.config/i3blocks/config"
alias cdunst="vim ~/.config/dunst/dunstrc"
alias cv="vim ~/.vimrc"
alias cqb="vim ~/.config/qutebrowser/config.py"
alias cr="vim ~/.config/ranger/rc.conf"
alias crifle="vim ~/.config/ranger/rifle.conf"
alias ccmus="vim ~/.config/cmus/autosave"
alias cg="vim ~/.gitconfig"
alias cnb="vim ~/.newsboat/config"
alias cnbu="vim ~/.newsboat/urls"
alias ctmux="vim ~/.tmux.conf"

alias upgrade="sudo pacman -Syu"

alias starwars="telnet towel.blinkenlights.nl"
alias adormir="mpv -vo caca ~/videos/Adormir.mp4 && clear 2>/dev/null"
alias adormirloop="mpv --loop-file -vo caca ~/videos/Adormir.mp4 2>/dev/null && clear"
alias nintendos="mpv -vo caca https://www.youtube.com/watch?v=hYNcJj2QDhk 2>/dev/null"
alias netris="ssh netris.rocketnine.space"
