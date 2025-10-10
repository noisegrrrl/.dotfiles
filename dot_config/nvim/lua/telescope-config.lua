local telescope = require("telescope")

telescope.setup {
    -- ... your telescope config
}

telescope.load_extension('chezmoi')

vim.keymap.set('n', '<leader>cz', telescope.extensions.chezmoi.find_files, {})

-- You can also search a specific target directory and override arguments
-- Here is an example with the default args
vim.keymap.set('n', '<leader>fc', function()
    telescope.extensions.chezmoi.find_files({
        targets = vim.fn.stdpath("config"),
        -- This overrides the default arguments used with 'chezmoi list'
        args = {
            "--path-style",
            "absolute",
            "--include",
            "files",
            "--exclude",
            "externals",
        }
    })
end, {})
