vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.keymap.set({'n', 'v', 'o'}, '<CR>', ':') -- map enter to cmdline mode

vim.keymap.set('n', '<leader>e', ':Neotree<CR>')
