if &shell =~# 'fish$'
    set shell=sh
endif

execute pathogen#infect()

set termguicolors
set mouse=
set ttymouse=
