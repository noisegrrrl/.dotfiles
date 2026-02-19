if status is-login

    set -gx XDG_BIN_HOME $HOME/.local/bin
    set -gx XDG_CACHE_HOME $HOME/.cache
    set -gx XDG_DATA_HOME $HOME/.local/share
    set -gx XDG_STATE_HOME $HOME/.local/state

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx SUDO_EDITOR "/home/noisegrrrl/.local/share/bob/nvim-bin/nvim"

    set -gx GNUPGHOME $XDG_DATA_HOME/gnupg
    set -gx GPG_TTY $(tty)

    set -gx VOLTA_HOME $XDG_DATA_HOME/volta

    set -gx NPM_CONFIG_INIT_MODULE $XDG_CONFIG_HOME/npm/config/npm-init.js   
    set -gx NPM_CONFIG_CACHE $XDG_CACHE_HOME/npm                             
    set -gx NPM_CONFIG_TMP $XDG_RUNTIME_DIR/npm                              

    set -gx GOPATH $XDG_DATA_HOME/go                                         

    # format man pages
    set -gx MANROFFOPT "-c"
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

    fish_add_path $XDG_BIN_HOME 
    fish_add_path $VOLTA_HOME/bin
    fish_add_path ~/.local/share/bob/nvim-bin
end
