# source /usr/share/cachyos-fish-config/cachyos-config.fish

set -Ux EDITOR nvim 
set -Ux VISUAL nvim
set -gx GPG_TTY $(tty)

# Format man pages
set -x MANROFFOPT "-c"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains ~/.local/bin $PATH
        set -Ux PATH ~/.local/bin $PATH
    end
end

# Add volta to PATH
if test -d ~/.volta
    set -gx VOLTA_HOME ~/.volta
    if not contains $VOLTA_HOME/bin $PATH
        set -Ux PATH $VOLTA_HOME/bin $PATH
    end
end

### ----- aliases ----- ###
## ---- ls ---- ##

alias ls 'eza --color=always --group-directories-first --icons=always' # preferred listing
abbr ll 'ls -l'
abbr la 'ls -a'
abbr lla 'ls -al'
abbr l. 'ls -a | grep -e \'^\.\'' # show only dotfiles

alias tree 'eza -T --group-directories-first'  # tree
abbr t 'tree'
abbr td 'tree -D'                          # tree only dirs 


## ---- package management ---- ##

abbr u 'sudo pacman -Syu' # Update pacman installed packages
abbr au 'paru -Syua'

abbr cleanup 'sudo pacman -Rns (pacman -Qtdq)' # Cleanup orphaned packages

alias fixpacman="sudo rm /var/lib/pacman/db.lck" # Fix pacman db lock
alias mirror="sudo cachyos-rate-mirrors" # Get fastest mirrors
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # List recently installed packages
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB

## ---- misc ---- ##

alias cat 'bat -pp --color=auto'
abbr c 'cat'

alias vim 'nvim'
abbr v 'vim'

abbr icat 'viu'

abbr off 'systemctl poweroff -l'

## ---- dotfiles management ---- ##

abbr cz 'chezmoi'
abbr czd 'chezmoi cd'
abbr cze 'vim (chezmoi source-path)'

alias czg 'git --git-dir=(chezmoi source-path)/.git --work-tree=(chezmoi source-path)'

# alias dg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# alias dv='GIT_DIR="$HOME/.dotfiles" GIT_WORK_TREE="$HOME" vim $HOME'
# alias tarnow='tar -acf '
# alias untar='tar -zxvf '
# alias wget='wget -c '
# alias psmem='ps auxf | sort -nr -k 4'
# alias psmem10='ps auxf | sort -nr -k 4 | head -10'
# alias hw='hwinfo --short'                                   # Hardware Info
# alias tb='nc termbin.com 9999'
# Get the error messages from journalctl
# alias jctl="journalctl -p 3 -xb"
