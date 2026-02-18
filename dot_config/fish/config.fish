#
alias ls 'eza --color=always --group-directories-first --icons=always' # preferred listing
abbr la 'ls -a'
abbr ll 'ls -l'
abbr lla 'ls -la'
abbr l. 'ls -a | grep -e \'^\.\'' # show only dotfiles
abbr lg 'ls -G'
abbr lga 'ls -Ga'
abbr lag 'ls -Ga'
#
alias tree 'eza -T --group-directories-first'  # tree
abbr t 'tree'
abbr td 'tree -D'                          # tree only dirs 
#
abbr u 'sudo pacman -Syu' # update pacman installed packages
abbr au 'paru -Syua' # update aur packages
abbr cleanup 'sudo pacman -Rns (pacman -Qtdq)' # cleanup orphaned packages
#
alias cat 'bat -pp --color=auto'
abbr c 'cat'
#
abbr vim 'nvim'
abbr v 'nvim'
abbr svim 'sudo -e'
abbr sv 'sudo -e'
#
abbr icat 'viu'
#
abbr poweroff 'systemctl poweroff --full'
abbr reboot 'systemctl reboot --full'
#
abbr cz 'chezmoi'
abbr czd 'chezmoi cd'
abbr cze 'nvim (chezmoi source-path)'
alias czg 'git --git-dir=(chezmoi source-path)/.git --work-tree=(chezmoi source-path)'
#
abbr wr killall -SIGUSR2 waybar
#
alias spawn 'niri msg action spawn --'
complete -x -c spawn --no-files -a "(__fish_complete_command)"
#
function mvhwp
    for img in $argv;
        mv $img $XDG_PICTURES_DIR/wp/h
    end
end

function mvvwp
    for img in $argv;
        mv $img $XDG_PICTURES_DIR/wp/v
    end
end
# alias fixpacman="sudo rm /var/lib/pacman/db.lck" # Fix pacman db lock
# alias mirror="sudo cachyos-rate-mirrors" # Get fastest mirrors
# alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
# alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # List recently installed packages
# alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
# alias dg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# alias dv='GIT_DIR="$HOME/.dotfiles" GIT_WORK_TREE="$HOME" vim $HOME'
# alias tarnow='tar -acf '
# alias untar='tar -zxvf '
# alias wget='wget -c '
# alias psmem='ps auxf | sort -nr -k 4'
# alias psmem10='ps auxf | sort -nr -k 4 | head -10'
# alias hw='hwinfo --short'                                   # Hardware Info
# alias tb='nc termbin.com 9999'
# alias jctl="journalctl -p 3 -xb" # Get the error messages from journalctl
