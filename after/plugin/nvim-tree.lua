require("nvim-tree").setup({
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = false
    },
    view = {
        adaptive_size = true
    }
})

-- vim.keymap.set('n', '<C-g>', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>g', ':NvimTreeToggle<CR>', {})
