# source /usr/share/cachyos-fish-config/cachyos-config.fish

# override cachyos default fish_greeting
#function fish_greeting
#    if test "$(tput cols)" -ge 120; and test "$(tput lines)" -ge 50
#        fastfetch
#    end
#end

set -gx EDITOR vim 
set -gx GPG_TTY $(tty)
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

### ----- aliases ----- ###
## ---- ls ---- ##

alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons' # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons' # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'" # show only dotfiles

## ---- package management ---- ##

alias update='sudo pacman -Syu' # Update pacman installed packages
alias fixpacman="sudo rm /var/lib/pacman/db.lck" # Fix pacman db lock
alias mirror="sudo cachyos-rate-mirrors" # Get fastest mirrors
alias cleanup='sudo pacman -Rns (pacman -Qtdq)' # Cleanup orphaned packages
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # List recently installed packages

## ---- navigation ---- ##

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

## ---- misc ---- ##

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'

# alias tarnow='tar -acf '
# alias untar='tar -zxvf '
# alias wget='wget -c '
# alias psmem='ps auxf | sort -nr -k 4'
# alias psmem10='ps auxf | sort -nr -k 4 | head -10'
# alias hw='hwinfo --short'                                   # Hardware Info
# alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
# alias tb='nc termbin.com 9999'

# Get the error messages from journalctl
# alias jctl="journalctl -p 3 -xb"
