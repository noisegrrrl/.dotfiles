require 'plugins'
require 'configs'
require 'keymaps'
require 'lsp'

require 'telescope-config'
require 'chezmoi-config'
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.g.tidal_target = "terminal"
vim.g.vim_niri_nav_workspace = "true"
-- vim.cmd("colorscheme root-loops")
vim.cmd("colorscheme ashen")
