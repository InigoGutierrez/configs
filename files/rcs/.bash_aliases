alias r='ranger'
alias v='vim'
alias ping='ping fsf.org'
alias cdf='cd $(fzfPath.sh)'
alias mail='mail.sh'
alias please="sudo !!"
#alias dict='curl dict://dict.org/d:'

# IIS
#alias ipds="ssh halite.ii.pwr.wroc.pl -l 250839"
alias web="ssh -p 3022 user@localhost"
alias webvarnish="ssh -p 3022 varnish1@localhost"

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

# Programs
alias CryptTool="wine '~/.wine/drive_c/Program Files (x86)/CrypTool/CrypTool.exe\'"

alias upgrade="sudo pacman -Syu"

alias starwars="telnet towel.blinkenlights.nl"
alias adormir="mpv -vo caca ~/videos/Adormir.mp4 && clear 2>/dev/null"
alias adormirloop="mpv --loop-file -vo caca ~/videos/Adormir.mp4 2>/dev/null && clear"
alias nintendos="mpv -vo caca https://www.youtube.com/watch?v=hYNcJj2QDhk 2>/dev/null"
