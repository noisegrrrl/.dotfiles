if status is-login
    set -gx EDITOR nvim 
    set -gx VISUAL nvim
    set -gx GPG_TTY $(tty)

    # format man pages
    set -x MANROFFOPT "-c"
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

    fish_add_path ~/.local/bin
    set -gx VOLTA_HOME ~/.volta
    fish_add_path $VOLTA_HOME/bin
    fish_add_path ~/.local/share/bob/nvim-bin
end
