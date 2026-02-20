vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.keymap.set({ 'n', 'v', 'o' }, '<CR>', ':') -- map enter to cmdline mode

-- vim.keymap.set('n', '<leader>h', '<C-w>h<CR>')
-- vim.keymap.set('n', '<leader>j', '<C-w>j<CR>')
-- vim.keymap.set('n', '<leader>k', '<C-w>k<CR>')
-- vim.keymap.set('n', '<leader>l', '<C-w>l<CR>')

-- disable up/down arrows / touchpad scroll
vim.keymap.set({ 'n', 'v', 'o', 'i' }, '<up>', '<nop>', { noremap = true })
vim.keymap.set({ 'n', 'v', 'o', 'i' }, '<down>', '<nop>', { noremap = true })

-- disable left/right arrows for consistency
vim.keymap.set({ 'n', 'v', 'o', 'i'}, '<left>', '<nop>', { noremap = true })
vim.keymap.set({ 'n', 'v', 'o', 'i'}, '<right>', '<nop>', { noremap = true })

-- https://github.com/nvim-neo-tree/neo-tree.nvim/issues/872#issuecomment-1511401740
local is_neotree_focused = function()
    -- Get our current buffer number
    local bufnr = vim.api.nvim_get_current_buf and vim.api.nvim_get_current_buf() or vim.fn.bufnr()
    -- Get all the available sources in neo-tree
    for _, source in ipairs(require("neo-tree").config.sources) do
        -- Get each sources state
        local state = require("neo-tree.sources.manager").get_state(source)
        -- Check if the source has a state, if the state has a buffer and if the buffer is our current buffer
        if state and state.bufnr and state.bufnr == bufnr then
            return true
        end
    end
    return false
end

local focus_toggle_neotree = function()
    if is_neotree_focused() then
        vim.cmd(":Neotree toggle")
    else
        vim.cmd(":Neotree focus")
    end
end

vim.keymap.set('n', '<leader>e', function() focus_toggle_neotree() end)
