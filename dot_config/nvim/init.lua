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

vim.cmd("colorscheme root-loops")
