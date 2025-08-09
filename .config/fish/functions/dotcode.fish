function dotcode --wraps='GIT_WORK_TREE="$HOME" GIT_DIR="$HOME/.dotfiles" code "$HOME"' --description 'alias dotcode=GIT_WORK_TREE="$HOME" GIT_DIR="$HOME/.dotfiles" code "$HOME"'
  GIT_WORK_TREE="$HOME" GIT_DIR="$HOME/.dotfiles" vscodium "$HOME" --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland $argv
end
