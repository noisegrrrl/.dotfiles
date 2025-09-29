vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 8
vim.o.shiftwidth = 4
vim.o.softtabstop = -1
vim.o.smarttab = true
vim.o.expandtab = true

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.pack.add {
    { src = 'https://github.com/neovim/nvim-lspconfig' },
}

vim.lsp.enable({ 'lua_ls' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.cmd("colorscheme root-loops")
